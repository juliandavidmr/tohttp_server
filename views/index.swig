{% extends 'layout.swig' %}

{% block content %}

  <div class="page-header">
    <h1>Welcome!
      <small>{{title}}</small>
    </h1>
  </div>

  <div class="alert alert-success" role="alert">
    <strong id="state"></strong>
  </div>

  <p>
    <h4>
      Go to
      <a href="https://www.npmjs.com/package/tohttp">toHttp package</a>
    </h4>
  </p>

{% endblock %}
