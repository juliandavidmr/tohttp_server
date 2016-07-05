var express = require('express');
var router = express.Router();

var requestify = require('requestify');
var valid_url = require('valid-url');

/* GET home page. */

router.get('/', function(req, res) {
	res.render('index', {
		title: 'Express'
	});
});

module.exports = router;
