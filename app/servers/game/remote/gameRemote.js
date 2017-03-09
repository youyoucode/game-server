var userDao = require('../../../dao/userDao');
var storyDao = require('../../../dao/storyDao');
var heroDao = require('../../../dao/heroDao');
var questionDao = require('../../../dao/questionDao');
var async = require('async');
var configUtil = require('../../../util/configUtil');
var gameUtil = require('../../../util/gameUtil');
var userManager = require('../../../manager/userManager');

module.exports = function(app) {
	return new GameRemote(app);
};

var GameRemote = function(app) {
	this.app = app;
};

GameRemote.prototype.getStoryCode = function(uid,storyid,callback) {
	storyDao.getStoryCode(uid,storyid,function(err, storycode) {
		callback(storycode);
	});
}

GameRemote.prototype.saveStoryCode = function(uid,id,code,callback) {
	storyDao.saveStoryCode(uid,id,code,function(err, res) {
		callback(res);
	});
}

GameRemote.prototype.getStoryInfo = function(uid,callback) {
	storyDao.getStoryInfo(uid,function(err, story) {
		callback(story);
	});
}

GameRemote.prototype.getQuestions = function(uid,callback) {
	questionDao.getQuestions(uid,function(err, questions) {
		callback(questions);
	});
}

function errHandler(err, fails){
	if(!!err){
		logger.error('Push Message error! %j', err.stack);
	}
}

GameRemote.prototype.askQuestion = function(uid,studentid,classname,storyid,code,callback) {
	var channel = this.app.get('channelService');
	console.log(userManager.getUser(389));
	var frontid = userManager.getUser(Number(uid));
	console.log(frontid);
	questionDao.askQuestion(uid,studentid,classname,storyid,code,function(err, res) {
		//tell teacher uid
		var time = new Date().getTime()/1000;	
		channel.pushMessageByUids("game.gameHandler.pushQuestion", {"id":res.insertid,"uid":uid,"studentid":studentid,"storyid":storyid,"code":code,"readed":0,"createTime":time}, [{"uid":uid,"sid":frontid}], errHandler);
		callback(res);
	});
}

GameRemote.prototype.getReplys = function(uid,callback) {
	questionDao.getReplys(uid,function(err, replys) {
		callback(replys);
	});
}

GameRemote.prototype.replyQuestion = function(uid,stuid,storyid,id,code,callback) {
	questionDao.replyQuestion(uid,stuid,storyid,id,code,function(err, insertid) {
		callback(insertid);
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
							updateInfo.items.push({"id":Number(items[i]),"number":Number(numbers[i])});
						}
					}
				}
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

