var userDao = require('../../../dao/userDao');
var storyDao = require('../../../dao/storyDao');
var heroDao = require('../../../dao/heroDao');
var async = require('async');
var configUtil = require('../../../util/configUtil');
var gameUtil = require('../../../util/gameUtil');

module.exports = function(app) {
	return new GameRemote(app);
};

var GameRemote = function(app) {
	this.app = app;
};

GameRemote.prototype.getStoryInfo = function(uid,callback) {
	storyDao.getStoryInfo(uid,function(err, story) {
		callback(story);
	});
}

GameRemote.prototype.playStory = function(uid,id,star,callback) {
	var updateInfo = {};
	var userInfo;
	async.waterfall([
		function(cb) {
			userDao.getUserInfo(uid,function(err, dat) {
				cb(err,dat.userinfo);
			});
		},
		function(info, cb) {
			userInfo = info;
			var storyCFG = configUtil.getConfig("pve_story_level",id);
			if(id-info.storyID>=0){
				updateInfo.storyID = Number(storyCFG.next_level);
			}
			storyDao.updateStoryInfo(uid,id,star,function(err,drop) {
				if(drop){
					var items = storyCFG['star'+star+"_reward"].split("|");
					var numbers = storyCFG['star'+star+"_reward_num"].split("|");
					updateInfo.items = [];
					for (var i = 0;i<items.length;i++){
						updateInfo.items.push({"id":Number(items[i]),"number":Number(numbers[i])});
					}
				}
				cb(err);
			});
		},
		function(cb) {
			userDao.updateInfo(uid,updateInfo,function(err,dat) {
				if(!!dat.addexp){
					updateInfo.addexp = dat.addexp;
					updateInfo.exp = userInfo.exp + dat.addexp;
					updateInfo.level = gameUtil.levelFromExp(updateInfo.exp);
				}
				cb(err);
			});
		}
	], function(err) {
		if(err) {
			callback(null);
			return;
		}
		callback({"id":id,"star":star,"updateInfo":updateInfo});
	});
};

GameRemote.prototype.useItem = function(uid,hid,id,seat,callback) {
	heroDao.useItem(uid,hid,id,seat,function(err, ret) {
		callback(ret);
	});
}

