var pomelo = require('pomelo');
var utils = require('../util/utils');

var storyDao = module.exports;

storyDao.getStoryInfo = function (uid, cb) {
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

storyDao.getStoryCode = function (uid,storyid,cb) {
	var sql = 'select * from user_code_' + uid%10 +' where uid = ? and storyid = ?';
	var args = [uid,storyid];
	pomelo.app.get('dbclient').queryOne(sql,args,function(err, res) {
		if(err){
			utils.invokeCallback(cb, err, null);
		}else{
			if(res) utils.invokeCallback(cb, err, res);
			else{
				var codesql = 'insert into user_code_' + uid%10 +' (uid, storyid) values(?,?)';
				var codeargs = [uid,storyid];
				pomelo.app.get('dbclient').query(codesql,codeargs,function(err, res) {
					if(res) utils.invokeCallback(cb, err, {"id":res.insertId,"uid":uid,"storyid":storyid,"code":""});
				});
			}
		}
	});
}

storyDao.saveStoryCode = function (uid,id,code,cb) {
	var sql = 'update user_code_' + uid%10 +' set code = ? where id = ?';
	var args = [code,id];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if(err){
			utils.invokeCallback(cb, err, null);
		}else{
			utils.invokeCallback(cb, err,res);
		}
	});
}

storyDao.updateStoryInfo = function(uid,id,star,cb){
	var sql = 'select * from user_story_'+uid%10+' where uid = ? and storyID = ?';
	var args = [uid,id];
	pomelo.app.get('dbclient').queryOne(sql,args,function(err, res) {
		if(err){
			utils.invokeCallback(cb, err, -1);
		}else{
			if(res) {
				if(res.star<star){
					sql = 'update user_story_' + uid%10 +' set star = ? where uid = ? and storyID = ?';
					args = [star,uid,id];
					var oldStar = res.star;
					pomelo.app.get('dbclient').query(sql,args,function(err, res) {
						utils.invokeCallback(cb, err, oldStar);
					});
				}else utils.invokeCallback(cb, err, -1);
			}else{
				sql = 'insert into user_story_' + uid%10 +' (uid, storyID, star) values(?,?,?)';
				args = [uid,id,star];
				pomelo.app.get('dbclient').query(sql,args,function(err, res) {
					utils.invokeCallback(cb, err, 0);
				});
			}
		}
	});
}