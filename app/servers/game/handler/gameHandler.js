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

handler.useItem = function(msg, session, next) {
	var uid = session.get('uid');
	this.app.rpc.game.gameRemote.useItem(session,uid,msg.hid,msg.id,msg.seat,function(ret){
		if(!item){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			ret: ret
		})});
};