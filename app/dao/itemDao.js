var pomelo = require('pomelo');
var utils = require('../util/utils');

var itemDao = module.exports;

itemDao.createItem = function(uid,mid,cb){
	var sql = 'insert into user_item_' + uid%10 +' (uid, mid) values(?,?)';
	var args = [uid,mid];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if (err) {
			logger.error('create hero for heroDao failed! ' + err.stack);
			utils.invokeCallback(cb, err, null);
		} else utils.invokeCallback(cb, err, res.insertId);
	});
}

itemDao.getItemList = function(uid,cb){
	var sql = 'select * from user_item_' + uid%10 +' where uid = ?';
	var args = [uid];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if (err) utils.invokeCallback(cb, err, []);
		else utils.invokeCallback(cb, err, res);
	});

}