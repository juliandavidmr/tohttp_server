var express = require('express');
var router = express.Router();

var requestify = require('requestify');
var valid_url = require('valid-url');

router.route('/:url?')
	.all(function(req, res, next) {
		// runs for all HTTP verbs first
		// think of it as route specific middleware!
		next();
	})
	.get(function(req, res, next) {
		var url = req.query.url;
		var bod = req.body || {};

		requestify.request(url, {
				method: 'GET',
				body: bod,
				dataType: 'json'
			})
			.then(function(response) {
				res.send(response);
			});
	})
	.put(function(req, res, next) {
		var url = req.query.url;
		var bod = req.body || {};

		requestify.request(url, {
				method: 'PUT',
				body: bod,
				dataType: 'json'
			})
			.then(function(response) {
				res.send(response);
			});
	})
	.post(function(req, res, next) {
		var url = req.query.url;
		var bod = req.body || {};

		requestify.request(url, {
				method: 'POST',
				body: bod,
				dataType: 'json'
			})
			.then(function(response) {
				res.send(response);
			});
	})
	.delete(function(req, res, next) {
		var url = req.query.url;
		var bod = req.body || {};

		requestify.request(url, {
				method: 'DELETE',
				body: bod,
				dataType: 'json'
			})
			.then(function(response) {
				res.send(response);
			});
	});

module.exports = router;
