{# index/index.volt #}

{% block content %}

<h1>Users</h1>
<div class="row" style="width: 100%;">
  <div class="col-sm-2"></div>

  <div class="col-sm-8">
    {{ form(action, 'role': 'form') }}

      <div class="form-group row">
        <label for="inputPassword3" class="col-sm-2 col-form-label">Name</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputPassword3" name="name" value="{{ users.name }}" placeholder="Name">
        </div>
      </div>
      <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
        <div class="col-sm-10">
          <input type="email" class="form-control" id="inputEmail3" name="email" value="{{ users.email }}" placeholder="Email">
        </div>
      </div>
      <div class="form-group row">
        <div class="col-sm-10">
          <button type="submit" title="Submit" class="btn btn-sm btn-outline-success">✔</button>
          <button type="button" title="Cancel" class="btn btn-sm btn-outline-danger" onclick="direct();">❌</button>
        </div>
      </div>

    {{ endform() }}
  </div>

  <div class="col-sm-2"></div>
</div>



{% endblock %}