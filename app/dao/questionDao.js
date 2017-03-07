var pomelo = require('pomelo');
var utils = require('../util/utils');

var questionDao = module.exports;

questionDao.getQuestions = function (uid, cb) {
	var sql = 'select * from user_question_' + uid%10 +' where uid = ?';
	var args = [uid];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if(err){
			utils.invokeCallback(cb, err, null);
		}else{
			utils.invokeCallback(cb, err,res);
		}
	});
}

questionDao.askQuestion = function(uid,studentid,storyid,code,cb){
	var time = new Date().getTime()/1000;
	var sql = 'insert into user_question_' + uid%10 +' (uid, studentid, storyid, code, createTime) values(?,?,?,?,?)';
	var args = [uid,studentid,storyid,code,time];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if (err) {
			logger.error('create question for question failed! ' + err.stack);
			utils.invokeCallback(cb, err, null);
		} else utils.invokeCallback(cb, err, res.insertId);
	});
}

questionDao.getReplys = function(uid,cb){
	var sql = 'select * from user_reply_' + uid%10 +' where uid = ?';
	var args = [uid];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if(err){
			utils.invokeCallback(cb, err, null);
		}else{
			utils.invokeCallback(cb, err,res);
		}
	});
}

questionDao.replyQuestion = function(uid,studentid,storyid,id,code,cb){
	var sql = 'update user_question_' + uid%10 +' set readed = 1 where id = ?';
	var args = [id];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if (err) utils.invokeCallback(cb, err, null);
		else
		{
			var time = new Date().getTime()/1000;
			sql = 'insert into user_reply_' + studentid%10 +' (uid, storyid, code,createTime) values(?,?,?,?)';
			args = [studentid,storyid,code,time];
			pomelo.app.get('dbclient').query(sql,args,function(err, res) {
				if (err) {
					utils.invokeCallback(cb, err, null);
				} else utils.invokeCallback(cb, err, res.insertId);
			});
		}
	});
}