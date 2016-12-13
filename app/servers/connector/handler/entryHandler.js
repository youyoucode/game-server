module.exports = function(app) {
  return new Handler(app);
};

var Handler = function(app) {
  this.app = app;
};

/**
 * New client entry.
 *
 * @param  {Object}   msg     request message
 * @param  {Object}   session current session object
 * @param  {Function} next    next step callback
 * @return {Void}
 */
Handler.prototype.enter = function(msg, session, next) {
	var uid = msg.uid;
	if(!uid) {
		next(null, {
			code: 500
		});
		return;
	}
	session.bind(uid);
	session.set('uid', uid);
	session.push('uid', function(err) {
		if(err) {
			console.error('set uid for session service failed! error is : %j', err.stack);
		}
	});
	session.on('closed', onUserLeave.bind(null, this.app));
	
	this.app.rpc.game.loginRemote.login(session,uid, function(info){
		if(!info){
			next(null, {
				code: 500
			});
			return;
		}
		next(null, {
			code: 200,
			user: info
		})});
};


/**
 * User log out handler
 *
 * @param {Object} app current application
 * @param {Object} session current session object
 *
 */
var onUserLeave = function(app, session) {
	if(!session || !session.uid) {
		return;
	}
};
