var express = require ('express');
var app = express();
var path = require('path');
var port = 9001;

//Serverlog in CLI 
app.use(express.logger());

//views with Jade
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(express["static"](__dirname + '/public'));

//Routing
app.get('/', function(req,res) {
	res.render('index');
});

//Server port 
app.listen(port);
console.log('Initializaing in: 3, 2, 1');