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
				updateInfo.storyID = Number(storyCFG.unlock_level);
			}
			storyDao.updateStoryInfo(uid,id,star,function(err,drop) {
				if(drop>=0){
					updateInfo.items = [];
					for (var j = drop+1;j<=star;j++){
						var items = storyCFG['star'+j+"_reward"].split("|");
						var numbers = storyCFG['star'+j+"_reward_num"].split("|");
						for (var i = 0;i<items.length;i++){
							console.log(items[i]);
							updateInfo.items.push({"id":Number(items[i]),"number":Number(numbers[i])});
						}
					}
				}
				console.log(updateInfo.items);
				cb(err);
			});
		},
		function(cb) {
			userDao.updateInfo(uid,updateInfo,function(err,dat) {
				cb(dat,err);
			});
		}
	], function(dat,err) {
		if(err) {
			callback(null);
			return;
		}
		callback({"id":id,"star":star,"updateInfo":dat});
	});
};

GameRemote.prototype.beginFight = function(uid,id,callback) {
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
			updateInfo.physical = -Number(storyCFG.energy);
			userDao.updateInfo(uid,updateInfo,function(err,dat) {
				cb(dat,err);
			});
		}
	], function(dat,err) {
		if(err) {
			callback(null);
			return;
		}
		callback({"id":id,"updateInfo":dat});
	});
};

GameRemote.prototype.useItem = function(uid,hid,id,seat,callback) {
	heroDao.useItem(uid,hid,id,seat,function(err, ret) {
		callback(ret);
	});
}

GameRemote.prototype.selectHero = function(uid,hid,callback) {
	userDao.selectHero(uid,hid,function(err, ret) {
		callback(ret);
	});
}

GameRemote.prototype.buyHero = function(uid,mid,callback) {
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
			var heroCFG = configUtil.getConfig("hero",mid);
			if(Number(userInfo.diamond)-Number(storyCFG.price)>=0)
			{
				updateInfo.diamond = -Number(storyCFG.price);
				userDao.updateInfo(uid,updateInfo,function(err,dat) {
					cb(1,err);
				});
			}else{
				cb(0,err);
			}
		},
		function(ret,cb) {
			if(ret>0)
			{
				heroDao.createHero(uid,mid,function(err, id) {
					cb(id,err);
				});
			}else cb(0,null);
		}
	], function(id,err) {
		if(err) {
			callback(null);
			return;
		}
		callback({"id":id,"updateInfo":userInfo,"mid":mid});
	});
}

