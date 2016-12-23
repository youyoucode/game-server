var logger = require('pomelo-logger').getLogger(__filename);
var pomelo = require('pomelo');
var utils = require('../util/utils');
var async = require('async');
var gameUtil = require('../util/gameUtil');

var userDao = module.exports;

/**
 * Get account data by account.
 * @param {String} account
 * @param {String} passwd
 * @param {function} cb
 */
userDao.getAccountInfo = function (account, cb) {
	var sql = 'select * from system_user_info where account = ?';
	var args = [account];
	pomelo.app.get('dbclient').queryOne(sql,args,function(err, res) {
		if(err){
			utils.invokeCallback(cb, err, null);
		}else{
			if (!!res) {
				utils.invokeCallback(cb, err, res);
			}else utils.invokeCallback(cb, err, null);
		}
	});
};

userDao.createAccount = function (account, cb) {
	var sql = 'insert into system_user_info (account, createTime) values(?,?)';
	var time = new Date().getTime()/1000;
	var args = [account,time];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if(err){
			utils.invokeCallback(cb, err, null);
		}else{
			utils.invokeCallback(cb, err, {"id":res.insertId,"account":account,"name":"","createTime":time});
		}
	});
};

userDao.getUserInfo = function (uid, cb) {
	var connection = pomelo.app.get('dbclient');
	var data = {},sql,args;
	async.series([
		function(callback){
			sql = 'select * from user_info_' + uid%10 +' where id = ?';
			args = [uid];
			connection.queryOne(sql,args,function(err, res) {
				if (!!res){
					console.log(res);
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

userDao.getStoryInfo = function (uid, cb) {
	var sql = 'select * from user_story_' + uid%10 +' where uid = ?';
	var args = [uid];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if(err){
			utils.invokeCallback(cb, err, null);
		}else{
			utils.invokeCallback(cb, err,res);
		}
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
			if(id==40002){   //exp
				sql = sql + ",exp = exp + ?"
				args.push(updateInfo['items'][i]['number']);
				info.addexp = updateInfo['items'][i]['number'];
			}
		}
	}
	if(sql==""){
		utils.invokeCallback(cb, err, null);
	}else{
		sql = 'update user_info_'+uid%10 + " set " + sql.substring(1) + " where id = ?";
		args.push(uid);
		console.log(sql);
		pomelo.app.get('dbclient').queryOne(sql,args,function(err, res) {
			if(err){
				utils.invokeCallback(cb, err, null);
			}else{
				utils.invokeCallback(cb, err,info);
			}
		});
	}
}

userDao.updateStoryInfo = function(uid,id,star,cb){
	var sql = 'select * from user_story_'+uid%10+' where uid = ?';
	var args = [uid];
	pomelo.app.get('dbclient').queryOne(sql,args,function(err, res) {
		if(err){
			utils.invokeCallback(cb, err, false);
		}else{
			if (!!res) {
				if(res.star<star){
					sql = 'update user_story_' + uid%10 +' set storyID = ?,star = ? where uid = ?';
					args = [id,star,uid];
					pomelo.app.get('dbclient').query(sql,args,function(err, res) {
						utils.invokeCallback(cb, err, true);
					});
				}else utils.invokeCallback(cb, err, false);
			}else{
				sql = 'insert into user_story_' + uid%10 +' (uid, storyID, star) values(?,?,?)';
				args = [uid,id,star];
				pomelo.app.get('dbclient').query(sql,args,function(err, res) {
					utils.invokeCallback(cb, err, true);
				});
			}
		}
	});
}

userDao.useItem = function(uid,hid,id,seat,cb){
	sql = 'update user_hero_' + uid%10 +' set item'+seat+' = ? where id = ?';
	args = [id,hid];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if (!!res) utils.invokeCallback(cb, err, true);
		else utils.invokeCallback(cb, err, false);
	});

}