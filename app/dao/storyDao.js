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

storyDao.updateStoryInfo = function(uid,id,star,cb){
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