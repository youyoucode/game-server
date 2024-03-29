var dispatcher = require('../../../util/dispatcher');
var accountDao = require('../../../dao/accountDao');
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
	var pid,account, uid, host, port;
	async.waterfall([
		function(cb) {
			if(!msg.name){
				accountDao.getRandomID(function(err, ret) {
					account = ret+"";
					pid = "";
					cb(err);
				});
			}else{
				account = msg.name;
				pid = msg.pid;
				cb(null);
			}
		},
		function(cb) {
			accountDao.getAccountInfo(account,pid,function(err, player) {
				cb(err,player);
			});
		},
		function(player, cb) {
			if(!player){
				accountDao.createAccount(account,function(err, player) {
					cb(err,player.id);
				});
			}else cb(err,player.id)
		},
		function(id,cb){
			uid = id;
			var connectors = self.app.getServersByType('connector');
			if(!connectors || connectors.length === 0) {
				next(null, {
					code: 501
				});
				return;
			}
			// select connector
			var res = dispatcher.dispatch(uid, connectors);
			host = res.clienthost;
			port = res.clientPort;
			cb(err);
		}
	], function(err) {
		if(err) {
			next(err, {code: 500});
			return;
		}
		next(null, {code: 200, username:account, uid: uid, host: host, port: port});
	});
};
