var pomelo = require('pomelo');
var routeUtil = require('./app/util/routeUtil');
var sync = require('pomelo-sync-plugin');

/**
 * Init app for client.
 */
var app = pomelo.createApp();
app.set('name', 'MaliGame');

// configure for global
app.configure('production|development', function() {
  app.loadConfig('mysql',app.getBase() + '/config/mysql.json');

  app.route('game', routeUtil.game);

  app.filter(pomelo.filters.timeout());
});

// Configure database
app.configure('production|development', 'gate|game|connector|master', function() {

  var dbclient = require('./app/dao/mysql/mysql').init(app);
  app.set('dbclient', dbclient);

  app.use(sync, {sync: {path:__dirname + '/app/dao/mapping', dbclient: dbclient}});
});

// app configuration
app.configure('production|development', 'connector', function(){
  app.set('connectorConfig',
    {
      connector : pomelo.connectors.hybridconnector,
      heartbeat : 3,
      useDict : true,
      useProtobuf : true
    });
});

app.configure('production|development', 'gate', function(){
	app.set('connectorConfig',
		{
			connector : pomelo.connectors.hybridconnector,
			useProtobuf : true
		});
});

// start app
app.start();

process.on('uncaughtException', function (err) {
  console.error(' Caught exception: ' + err.stack);
});
