var logger = require('pomelo-logger').getLogger(__filename);
var pomelo = require('pomelo');
var utils = require('../util/utils');

var heroDao = module.exports;

heroDao.createHeroWithItem = function(uid,mid,itemid,cb){
	var sql = 'insert into user_hero_' + uid%10 +' (uid, mid,item4) values(?,?,?)';
	var args = [uid,mid,itemid];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if (err) {
			logger.error('create hero for heroDao failed! ' + err.stack);
			utils.invokeCallback(cb, err, null);
		} else utils.invokeCallback(cb, err, res.insertId);
	});
}

heroDao.createHero = function(uid,mid,cb){
	var sql = 'insert into user_hero_' + uid%10 +' (uid, mid) values(?,?,?)';
	var args = [uid,mid];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if (err) {
			logger.error('create hero for heroDao failed! ' + err.stack);
			utils.invokeCallback(cb, err, null);
		} else utils.invokeCallback(cb, err, res.insertId);
	});
}

heroDao.getHeroList = function(uid,cb){
	var sql = 'select * from user_hero_' + uid%10 +' where uid = ?';
	var args = [uid];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if (err) utils.invokeCallback(cb, err, []);
		else utils.invokeCallback(cb, err, res);
	});

}

heroDao.useItem = function(uid,hid,id,seat,cb){
	var sql = 'update user_hero_' + uid%10 +' set item'+seat+' = ? where id = ?';
	var args = [id,hid];
	pomelo.app.get('dbclient').query(sql,args,function(err, res) {
		if (err) utils.invokeCallback(cb, err, true);
		else utils.invokeCallback(cb, err, false);
	});
}