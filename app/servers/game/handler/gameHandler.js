module.exports = function(app) {
	return new Handler(app);
};

var Handler = function(app) {
	this.app = app;
};

var handler = Handler.prototype;

/**
 * Send messages to users
 *
 * @param {Object} msg message from client
 * @param {Object} session
 * @param  {Function} next next stemp callback
 *
 */
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