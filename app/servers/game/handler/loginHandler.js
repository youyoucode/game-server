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
handler.createUser = function(msg, session, next) {
	var uid = session.get('uid');
	next(null, {
		route: msg.route
	});
};

handler.getUserInfo = function(msg, session, next) {
	this.app.rpc.game.loginRemote.login(session,msg.id, function(data){
		if(!data){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			user: data.userinfo,
			heros: data.heros,
			equips:data.equips
		})});
};

handler.getUserId = function(msg, session, next) {
	this.app.rpc.game.loginRemote.getUserId(session,msg.pid, function(data){
		if(!data){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			userId: data
		})});
};