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

router.route('/api/get/:url?')
	.all(function(req, res, next) {
		// runs for all HTTP verbs first
		// think of it as route specific middleware!
		next();
	})
	.get(function(req, res, next) {
    var url = req.query.url;
    if (valid_url.isUri(url)) {
      requestify.get(url).then(function(response) {
        res.send(response.getBody()); // Get the response body (JSON parsed - JSON response or jQuery object in case of XML response)
      });
    } else {
      res.send("URL '" + url + "' is invalid.");
    }
	})
	.put(function(req, res, next) {
    next(new Error('PUT not implemented'));
	})
	.post(function(req, res, next) {
		next(new Error('POST not implemented'));
	})
	.delete(function(req, res, next) {
		next(new Error('DELETE not implemented'));
	});

module.exports = router;
