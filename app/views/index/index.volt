{# index/index.volt #}

{% block content %}
  <h1>Users</h1>
  <div class="row" style="width: 100%;">
    <div class="col-md-2"></div>
    <div class="col-md-8 " style="justify-content: center;">
      <div class="center-block justify-content-center" align="center" style="margin: auto;">

        <div class="row" style="width: 100%;">
          <div class="col-md-6 float-left"><button title="New Post" class="btn btn-sm btn-outline-primary" onclick="direct('users/form');">✏</button></div>
          <div class="col-md-6 float-right"><input type="text" id="name" class="form-control" style="width: 50%;" placeholder="Name"></div>
        </div>

        <table width="100%">
          <thead>
            <tr>
              <th class="text-center" width="10%">#</th>
              <th class="text-center" width="40%">Name</th>
              <th class="text-center" width="30%">Email</th>
              <th class="text-center" width="20%">⚙</th>
            </tr>
          </thead>
          <tbody id="users"></tbody>
        </table>
        <button class="btn btn-sm btn-outline-warning page-nav" rel="1" id="prev" title="Prev">◀</button>
        <button class="btn btn-sm btn-outline-warning page-nav" rel="2" id="next" title="Next">▶</button>
      </div>
    </div>
  </div>
{% endblock %}