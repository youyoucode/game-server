var userDao = require('../../../dao/userDao');
var async = require('async');

module.exports = function(app) {
	return new LoginRemote(app);
};

var LoginRemote = function(app) {
	this.app = app;
};

LoginRemote.prototype.login = function(uid,username,callback) {
	var loginData;
	async.waterfall([
		function(cb) {
			userDao.getUserInfo(uid,function(err, info) {
				cb(err,info);
			});
		},
		function(info, cb) {
			if(!info.userinfo){
				userDao.createUser(uid,username,function(err, info) {
					loginData = info;
					cb(err);
				});
			}else{
				loginData = info;
				cb(err);
			}
		}
	], function(err) {
		if(err) {
			console.log(err);
			callback(null);
			return;
		}
		callback(loginData);
	});
};	

LoginRemote.prototype.refresh = function(uid,callback) {
	var userinfo;
	async.waterfall([
		function(cb) {
			userDao.getUserInfo(uid,function(err, info) {
				cb(err,info);
			});
		},
		function(info, cb) {
			if(!info){
				userDao.createUser(uid,function(err, info) {
					userinfo = info;
					cb(err);
				});
			}else{
				userinfo = info;
				cb(err);
			}
		}
	], function(err) {
		if(err) {
			callback(null);
			return;
		}
		callback(userinfo);
	});
};