var logger = require('pomelo-logger').getLogger(__filename);
var pomelo = require('pomelo');
var utils = require('../util/utils');

var heroDao = module.exports;

heroDao.createHeroWithItem = function(uid,mid,itemid,cb){
	var sql = 'insert into user_hero_' + uid%10 +' (uid, mid,item5) values(?,?,?)';
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
	if(seat>0)
	{
		var sql = 'update user_hero_' + uid%10 +' set item'+seat+' = ? where id = ?';
		var args = [id,hid];
		pomelo.app.get('dbclient').query(sql,args,function(err, res) {
			if (err) utils.invokeCallback(cb, err, 0);
			else utils.invokeCallback(cb, err, seat);
		});
	}
	else
	{
		var sql = 'select * from user_hero_'+uid%10+' where id = ?';
		var args = [uid,hid];
		pomelo.app.get('dbclient').queryOne(sql,args,function(err, res) {
			if(err){
				utils.invokeCallback(cb, err, 0);
			}else{
				for(var i=1;i<9;i++)
				{
					if(res['item'+i]-id==0)
					{
						seat = i;
						break;
					}
				}
				sql = 'update user_hero_' + uid%10 +' set item'+seat+' = 0 where id = ?';
				args = [hid];
				pomelo.app.get('dbclient').query(sql,args,function(err, res) {
					if (err) utils.invokeCallback(cb, err, 0);
					else utils.invokeCallback(cb, err, seat);
				});
			}
		});
	}
}