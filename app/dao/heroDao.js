var pomelo = require('pomelo');
var utils = require('../util/utils');

var heroDao = module.exports;

heroDao.useItem = function(uid,hid,id,seat,cb){
	sql = 'update user_hero_' + uid%10 +' set item'+seat+' = ? where id = ?';
	args = [id,hid];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if (!!res) utils.invokeCallback(cb, err, true);
		else utils.invokeCallback(cb, err, false);
	});
}