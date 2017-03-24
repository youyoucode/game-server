var logger = require('pomelo-logger').getLogger(__filename);
var pomelo = require('pomelo');
var utils = require('../util/utils');
var async = require('async');
var gameUtil = require('../util/gameUtil');

var heroDao = require('./heroDao');
var itemDao = require('./itemDao');

var userDao = module.exports;

userDao.getUserInfo = function (uid, cb) {
	var connection = pomelo.app.get('dbclient');
	var data = {},sql,args;
	async.series([
		function(callback){
			sql = 'select * from user_info_' + uid%10 +' where id = ?';
			args = [uid];
			connection.queryOne(sql,args,function(err, res) {
				if (!!res){
					res.level = gameUtil.levelFromExp(res.exp);
					data.userinfo = res;
				}
				callback(err);
			});
		},
		function(callback){
			heroDao.getHeroList(uid, function(err, heros) {
				if(!!err) logger.error('Get heros for heroDao failed! ' + err.stack);
				data.heros = heros;
				callback(err);
			});
		},
		function(callback){
			itemDao.getItemList(uid, function(err, items) {
				if(!!err) logger.error('Get items for itemDao failed! ' + err.stack);
				data.equips = items;
				callback(err);
			});
		}
	],function(err,results) {
		utils.invokeCallback(cb, err, data);
	});
};

userDao.createUser = function (uid,username,cb) {
	var time = new Date().getTime()/1000;
	var connection = pomelo.app.get('dbclient');
	var originalData = {"boy":30001,"hero":30000,"icon":1001,"story":110001,"item":14000};
	var data = {},sql,args,heroid,itemid;
	async.series([
			function(callback){
				itemDao.createItem(uid,originalData.item,function(err, id) {
					itemid = id;
					callback(err);
				});
			},
			function(callback){
				heroDao.createHero(uid,originalData.boy,function(err, id) {
					callback(err);
				});
			},
			function(callback){
				heroDao.createHero(uid,originalData.hero,function(err, id) {
					heroid = id;
					callback(err);
				});
			},
			function(callback){
				sql = 'insert into user_info_' + uid%10 +' (id, name, mid, hid, storyID, updateTime) values(?,?,?,?,?,?)';
				args = [uid,username,originalData.icon,heroid,originalData.story,time];
				connection.query(sql,args,function(err, res) {
					callback(err);
				});
			},
			function(callback){
				sql = 'select * from user_info_' + uid%10 +' where id = ?';
				args = [uid];
				connection.queryOne(sql,args,function(err, res) {
					if (!!res){ 
						res.level = gameUtil.levelFromExp(res.exp);
						data.userinfo = res;
					}
					callback(err);
				});
			},
			function(callback){
				heroDao.getHeroList(uid, function(err, heros) {
					if(!!err) logger.error('Get heros for heroDao failed! ' + err.stack);
					data.heros = heros;
					callback(err);
				});
			},
			function(callback){
				itemDao.getItemList(uid, function(err, items) {
					if(!!err) logger.error('Get items for itemDao failed! ' + err.stack);
					data.equips = items;
					callback(err);
				});
			}
		],function(err,results) {
			utils.invokeCallback(cb, err, data);
		});
}

userDao.selectHero = function (uid,hid,cb){
	var sql = 'update user_info_' + uid%10 +' set hid = ? where id = ?';
		var args = [hid,uid];
		pomelo.app.get('dbclient').query(sql,args,function(err, res) {
			if (err) utils.invokeCallback(cb, err, 0);
			else utils.invokeCallback(cb, err, hid);
		});
}

userDao.updateInfo = function (uid,updateInfo, cb) {
	var info = {"items":[]};
	var args = [];
	var sql = "";
	var time = new Date().getTime()/1000;
	var functions = [];
	var seat = 0;
	var mids = [];
	if(updateInfo['storyID']){
		sql = sql + ",storyID = ?"
		args.push(updateInfo['storyID']);
		info.storyID = updateInfo['storyID'];
	}
	if(updateInfo['hero']){
		functions.push(function(callback){
			var mid = updateInfo['hero'];
			var itemsql = 'insert into user_hero_' + uid%10 +' (uid, mid) values(?,?)';
			var itemargs = [uid,mid];
			pomelo.app.get('dbclient').query(itemsql,itemargs,function(err, res) {
				info.heros.push({"id":res.insertId,"uid":uid,"mid":mid});
				callback(err);
			});
		});
	}
	if(updateInfo['items']){
		for (var i = 0;i<updateInfo['items'].length;i++){
			var id = updateInfo['items'][i]['id'];
			if(id==18000){
				sql = sql + ",diamond = diamond + ?"
				args.push(updateInfo['items'][i]['number']);
				if(info.adddiamond) info.adddiamond = info.adddiamond + updateInfo['items'][i]['number'];
				else info.adddiamond = updateInfo['items'][i]['number'];
			}else if(id==18001){
				sql = sql + ",physical = physical + ?"
				args.push(updateInfo['items'][i]['number']);
				if(info.addphysical) info.addphysical = info.addphysical + updateInfo['items'][i]['number'];
				else info.addphysical = updateInfo['items'][i]['number'];
			}else if(id==18002){
				sql = sql + ",exp = exp + ?"
				args.push(updateInfo['items'][i]['number']);
				if(info.addexp) info.addexp = info.addexp + updateInfo['items'][i]['number'];
				else info.addexp = updateInfo['items'][i]['number'];
			}else{
				seat = 0;
				for (var j=0;j<updateInfo['items'][i]['number']+0;j++)
				{
					mids.push(updateInfo['items'][i]['id']);
					functions.push(function(callback){
						var time = new Date().getTime()/1000;
						var mid = mids[seat];
						seat = seat + 1;
						var itemsql = 'insert into user_item_' + uid%10 +' (uid, mid,createTime) values(?,?,?)';
						var itemargs = [uid,mid,time];
						pomelo.app.get('dbclient').query(itemsql,itemargs,function(err, res) {
							info.items.push({"id":res.insertId,"uid":uid,"mid":mid});
							callback(err);
						});
					});
				}
			}
		}
	}
	if(sql==""&&functions.length<1){
		utils.invokeCallback(cb, err, null);
	}else{
		if(sql!=""){
			functions.push(function(callback){
				sql = 'update user_info_'+uid%10 + " set " + sql.substring(1) + " where id = ?";
				args.push(uid);
				pomelo.app.get('dbclient').queryOne(sql,args,function(err, res) {
					callback(err);
				});
			});
		}
		async.series(functions,function(err,results) {
			utils.invokeCallback(cb, err, info);
		});
	}		
}