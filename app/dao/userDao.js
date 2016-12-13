var logger = require('pomelo-logger').getLogger(__filename);
var pomelo = require('pomelo');
var utils = require('../util/utils');
var async = require('async');

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
			utils.invokeCallback(cb, err, {"id":res.inserId,"account":account,"name":"","createTime":time});
		}
	});
};

userDao.getUserInfo = function (uid, cb) {
	var sql = 'select * from user_info_' + uid%10 +' where id = ?';
	var args = [uid];
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

userDao.createUser = function (uid, cb) {
	var time = new Date().getTime()/1000;
	var connection = pomelo.app.get('dbclient');
	var sql,args;
	async.series([
			function(callback){
				sql = 'insert into user_info_' + uid%10 +' (id, name, mid, storyID, updateTime) values(?,?,?,?,?)';
				args = [uid,"newPlayer",1001,10001,time];
				connection.query(sql,args,function(err, res) {
					callback(err);
				});
			}
		],function(err,results) {
			utils.invokeCallback(cb, err, {"id":uid,"name":"newPlayer","mid":1001,"coin":0,"dismond":0,"physical":100,"storyID":10001,"updateTime":time});
		});
}