var pomelo = require('pomelo');
var utils = require('../util/utils');
var async = require('async');
var gameUtil = require('../util/gameUtil');

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
			sql = 'select * from user_hero_' + uid%10 +' where uid = ?';
			args = [uid];
			connection.query(sql,args,function(err, res) {
				data.heros = res;
				callback(err);
			});
		},
		function(callback){
			sql = 'select * from user_item_' + uid%10 +' where uid = ?';
			args = [uid];
			connection.query(sql,args,function(err, res) {
				data.equips = res;
				callback(err);
			});
		}
	],function(err,results) {
		utils.invokeCallback(cb, err, data);
	});
};

userDao.createUser = function (uid, cb) {
	var time = new Date().getTime()/1000;
	var connection = pomelo.app.get('dbclient');
	var data = {},sql,args,heroid;
	async.series([
			function(callback){
				sql = 'insert into user_hero_' + uid%10 +' (uid, mid) values(?,?)';
				args = [uid,30000];
				connection.query(sql,args,function(err, res) {
					heroid = res.insertId;
					callback(err);
				});
			},
			function(callback){
				sql = 'insert into user_info_' + uid%10 +' (id, name, mid, hid, storyID, updateTime) values(?,?,?,?,?,?)';
				args = [uid,"newPlayer",1001,heroid,110001,time];
				connection.query(sql,args,function(err, res) {
					callback(err);
				});
			},
			function(callback){
				sql = 'insert into user_item_' + uid%10 +' (uid, mid, updateTime) values(?,?,?)';
				args = [uid,10009,time];
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
				sql = 'select * from user_hero_' + uid%10 +' where uid = ?';
				args = [uid];
				connection.query(sql,args,function(err, res) {
					data.heros = res;
					callback(err);
				});
			},
			function(callback){
				sql = 'select * from user_item_' + uid%10 +' where uid = ?';
				args = [uid];
				connection.query(sql,args,function(err, res) {
					data.equips = res;
					callback(err);
				});
			}
		],function(err,results) {
			utils.invokeCallback(cb, err, data);
		});
}

userDao.updateInfo = function (uid,updateInfo, cb) {
	var info = {};
	var args = []; 
	var sql = ""
	if(updateInfo['storyID']){
		sql = sql + ",storyID = ?"
		args.push(updateInfo['storyID']);
	}
	if(updateInfo['items']){
		for (var i = 0;i<updateInfo['items'].length;i++){
			var id = updateInfo['items'][i]['id'];
			if(id==40002){   																									//exp
				sql = sql + ",exp = exp + ?"
				args.push(updateInfo['items'][i]['number']);
				info.addexp = updateInfo['items'][i]['number'];
			}else{
				var itemsql = 'insert into user_item_' + uid%10 +' (uid, mid, updateTime) values(?,?,?)';
				var itemargs = [uid,10009,time];
				pomelo.app.get('dbclient').query(sql,args,function(err, res) {
					callback(err);
				});
			}
		}
	}
	if(sql==""){
		utils.invokeCallback(cb, err, null);
	}else{
		sql = 'update user_info_'+uid%10 + " set " + sql.substring(1) + " where id = ?";
		args.push(uid);
		pomelo.app.get('dbclient').queryOne(sql,args,function(err, res) {
			if(err){
				utils.invokeCallback(cb, err, null);
			}else{
				utils.invokeCallback(cb, err,info);
			}
		});
	}
}