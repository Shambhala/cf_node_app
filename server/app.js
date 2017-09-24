var express = require('express'),
		bodyParser = require('body-parser'),
		cfenv = require('cfenv'),
		path = require('path');
var app = express();
var PORT = process.env.PORT || 3000;

// Cloud Foundry environment variables
var appEnv = cfenv.getAppEnv();

// body parser middleware to handle URL parameter and JSON bodies
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());


app.get('/', function(req, res)
{
    res.send('<h1>Buenos días Friend</h1>');
});

// app.use('/ui5', express.static(path.join(__dirname, 'content')));

app.listen(appEnv.port, function()
{
    console.log('Server listening at ' + appEnv.url + ' with port '+ appEnv.port);
});
