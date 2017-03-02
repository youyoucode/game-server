module.exports = function(app) {
	return new Handler(app);
};

var Handler = function(app) {
	this.app = app;
};

var handler = Handler.prototype;

handler.getStoryCode = function(msg, session, next) {
	var uid = session.get('uid');
	this.app.rpc.game.gameRemote.getStoryCode(session,uid,msg.storyid, function(storycode){
		if(!storycode){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			storycode: storycode
		});
	});
};

handler.saveStoryCode = function(msg, session, next) {
	var uid = session.get('uid');
	this.app.rpc.game.gameRemote.saveStoryCode(session,uid,msg.id,msg.code, function(res){
		if(!res){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			res: res
		});
	});
};

handler.getStoryInfo = function(msg, session, next) {
	var uid = session.get('uid');
	this.app.rpc.game.gameRemote.getStoryInfo(session,uid, function(story){
		if(!story){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			story: story
		});
	});
};

handler.playStory = function(msg, session, next) {
	var uid = session.get('uid');
	this.app.rpc.game.gameRemote.playStory(session,uid, msg.id,msg.star,function(info){
		if(!info){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			id: info.id,
			star:info.star,
			updateInfo:info.updateInfo
		})});
};

handler.beginFight = function(msg, session, next) {
	var uid = session.get('uid');
	this.app.rpc.game.gameRemote.beginFight(session,uid, msg.id,function(info){
		if(!info){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			id: info.id,
			updateInfo:info.updateInfo
		})});
};

handler.useItem = function(msg, session, next) {
	var uid = session.get('uid');
	var seat = msg.seat;
	this.app.rpc.game.gameRemote.useItem(session,uid,msg.hid,msg.id,msg.seat,function(ret){
		if(ret<1){
			next(null, {
				code: 500
			});
			return;
		}
		else if(seat==0) seat = ret;
		if(msg.seat>0) ret = true;
		else ret = false;
		next(null, {
			code: 200,
			id:msg.id,
			seat:seat,
			ret:ret
		})});
};

handler.selectHero = function(msg, session, next) {
	var uid = session.get('uid');
	var hid = msg.hid;
	this.app.rpc.game.gameRemote.selectHero(session,uid,hid,function(ret){
		if(ret<1){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			uid:msg.id,
			hid:ret
		})});
}

handler.buyHero = function(msg, session, next) {
	var uid = session.get('uid');
	var mid = msg.mid;
	this.app.rpc.game.gameRemote.buyHero(session,uid,mid,function(ret){
		if(ret<1){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			updateInfo:ret.updateInfo,
			hid:ret.id,
			mid:ret.mid
		})});
}

handler.getQuestions = function(msg, session, next) {
	var uid = session.get('uid');
	this.app.rpc.game.gameRemote.getQuestions(session,uid, function(questions){
		if(!questions){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			questions: questions
		});
	});
};

handler.askQuestion = function(msg, session, next) {
	var uid = session.get('uid');
	this.app.rpc.game.gameRemote.askQuestion(session,uid,msg.storyid,msg.code, function(insertid){
		if(!questions){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			insertid: insertid
		});
	});
};

handler.getReplys = function(msg, session, next) {
	var uid = session.get('uid');
	this.app.rpc.game.gameRemote.getReplys(session,uid, function(replys){
		if(!replys){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			replys: replys
		});
	});
};

handler.replyQuestion = function(msg, session, next) {
	var uid = session.get('uid');
	this.app.rpc.game.gameRemote.askQuestion(session,uid,msg.studentid,msg.storyid,msg.id,msg.code, function(insertid){
		if(!insertid){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			insertid: insertid
		});
	});
};