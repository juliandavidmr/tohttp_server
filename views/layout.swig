<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="Web app style with Bootstrap 3"/>
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
        <a class="navbar-brand" href="#">
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
                <a href="#">GET Request</a>
              </li>
              <li>
                <a href="#">POST Request</a>
              </li>
              <li>
                <a href="#">PUT Request</a>
              </li>
              <li>
                <a href="#">DELETE Request</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">About</a>
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
    <div id="wrapper">
      <div id="sidebar-wrapper" class="col-md-1">
        <div id="sidebar">
          <ul class="nav list-group">
            <li>
              <a class="list-group-item" href="#">
                <i class="icon-home icon-1x"></i>Sidebar Item 1</a>
            </li>
            <li>
              <a class="list-group-item" href="#">
                <i class="icon-home icon-1x"></i>Sidebar Item 2</a>
            </li>
            <li>
              <a class="list-group-item" href="#">
                <i class="icon-home icon-1x"></i>Sidebar Item 3</a>
            </li>
          </ul>
        </div>
      </div>
      <div id="main-wrapper" class="col-md-11 pull-right">
        <div id="main">
          <div class="page-header">
            <h3>Admin</h3>
          </div>
          <p>
            {% block content %}{% endblock %}
          </p>
        </div>
      </div>
    </div>

    <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <script type='text/javascript' src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

    <!-- JavaScript jQuery code from Bootply.com editor  -->

    <script type='text/javascript'>

      $(document).ready(function () {});
    </script>

    <style>
      .ad {
        position: absolute;
        bottom: 70px;
        right: 48px;
        z-index: 992;
        background-color: #f3f3f3;
        position: fixed;
        width: 155px;
        padding: 1px;
      }

      .ad-btn-hide {
        position: absolute;
        top: -10px;
        left: -12px;
        background: #fefefe;
        background: rgba(240,240,240,0.9);
        border: 0;
        border-radius: 26px;
        cursor: pointer;
        padding: 2px;
        height: 25px;
        width: 25px;
        font-size: 14px;
        vertical-align: top;
        outline: 0;
      }

      .carbon-img {
        float: left;
        padding: 10px;
      }

      .carbon-text {
        color: #888;
        display: inline-block;
        font-family: Verdana;
        font-size: 11px;
        font-weight: 400;
        height: 60px;
        margin-left: 9px;
        width: 142px;
        padding-top: 10px;
      }
      .carbon-text:hover {
        color: #666;
      }

      .carbon-poweredby {
        color: #6A6A6A;
        float: left;
        font-family: Verdana;
        font-size: 11px;
        font-weight: 400;
        margin-left: 10px;
        margin-top: 13px;
        text-align: center;
      }

    </style>
  </body>
</html>
