<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <meta name="description" content="tohttp is a module for HTTP requests from HTTPS, either from the client side (in the browser) or server side (with node js)."/>
    <meta name="keywords" content="http,https,request,ssl,security,peticion,seguridad,development,npm,nodejs">
    <meta name="author" content="@anlijudavid">

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">

    <title>{{ title }}</title>
    <link rel="stylesheet" href="/css/style.css">

    {% if ENV_DEVELOPMENT %}
      <script src="http://localhost:35729/livereload.js"></script>
    {% endif %}
  </head>
  <body>
    <div id="header" class="navbar navbar-default navbar-fixed-top">
      <div class="navbar-header">
        <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
          <i class="icon-reorder"></i>
        </button>
        <a class="navbar-brand" href="/">
          toHttp
        </a>
      </div>
      <nav class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li>
            <a href="#">Tutorial</a>
          </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Examples<b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
              <li>
                <a href="https://www.npmjs.com/package/tohttp">GET Request</a>
              </li>
              <li>
                <a href="https://www.npmjs.com/package/tohttp">POST Request</a>
              </li>
              <li>
                <a href="https://www.npmjs.com/package/tohttp">PUT Request</a>
              </li>
              <li>
                <a href="https://www.npmjs.com/package/tohttp">DELETE Request</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">About</a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <span class="label label-info" id="online"></span>
            </a>
          </li>
        </ul>
        <ul class="nav navbar-nav pull-right">
          <li class="dropdown">
            <a href="#" id="nbAcctDD" class="dropdown-toggle" data-toggle="dropdown">
              <i class="icon-user"></i>
              @anlijudavid
              <i class="icon-sort-down"></i>
            </a>
            <ul class="dropdown-menu pull-right">
              <li>
                <a href="https://twitter.com/anlijudavid">Twitter</a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
    </div>

    <div class="col-md-12">
      <br>
      <br>
      <br>
      <p>
        {% block content %}{% endblock %}
      </p>
    </div>

    <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type='text/javascript' src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

    <!-- JavaScript jQuery code from Bootply.com editor  -->
    <script type='text/javascript'>
      $(document).ready(function () {});
    </script>

    <!-- socket  -->
    <script src="/socket.io/socket.io.js"></script>

    <script>
      var full = location.protocol+'//'+location.hostname + (location.port ? ':'+location.port: '');
      console.log("full> ", full);

      var socket = io.connect(full, {'forceNew': true});

      socket.on('user connected', function (data) {
        console.log(data);
        document.getElementById('online').innerHTML = msg(data);
      });

      socket.on("user disconnected", function(data) {
        console.log("client disconnected from server", data);
        document.getElementById('online').innerHTML = msg(data);
      });

      socket.on("state", function(data) {
        document.getElementById('state').innerHTML = data;
      });

      socket.on("disconnect", function(){
        console.log("Disconnected from server. :(");
      });

      socket.on('connect', function(msg){
        console.log("Conectado");
      });

      function msg(d) {
        return "Online ".concat(d);
      }
    </script>
  </body>
</html>
