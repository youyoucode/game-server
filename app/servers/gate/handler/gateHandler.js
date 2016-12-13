var dispatcher = require('../../../util/dispatcher');
var userDao = require('../../../dao/userDao');
var async = require('async');
module.exports = function(app) {
	return new Handler(app);
};

var Handler = function(app) {
	this.app = app;
};

var handler = Handler.prototype;

/**
 * Gate handler that dispatch user to connectors.
 *
 * @param {Object} msg message from client
 * @param {Object} session
 * @param {Function} next next stemp callback
 *
 */
handler.queryEntry = function(msg, session, next) {
	var self = this;
	var uid, host, port;
	async.waterfall([
		function(cb) {
			userDao.getAccountInfo(msg.name,function(err, player) {
				cb(err,player);
			});
		},
		function(player, cb) {
			if(!player){
				userDao.createAccount(msg.name,function(err, player) {
					cb(err,player.id);
				});
			}else cb(err,player.id)
		},
		function(id,cb){
			uid = id;
			var connectors = self.app.getServersByType('connector');
			if(!connectors || connectors.length === 0) {
				next(null, {
					code: 500
				});
				return;
			}
			// select connector
			var res = dispatcher.dispatch(uid, connectors);
			host = res.host;
			port = res.clientPort;
			cb(err);
		}
	], function(err) {
		if(err) {
			next(err, {code: 500});
			return;
		}
		next(null, {code: 200, uid: uid, host: host, port: port});
	});
};
