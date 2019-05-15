<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

  <title>CRUD</title>

</head>

<body>

<div class="wrapper">
    {{ content() }}
</div>

<input type="hidden" id="baseUri" value="{{ static_url() }}">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
{{ javascript_include('assets/js/custom.js') }}

{% if sentry_dsn is defined %}
<script src="https://cdn.ravenjs.com/3.14.2/raven.min.js"></script>
<script>
  var appDSN = "{{ sentry_dsn }}";
  //Raven.config(appDSN).install();
  {% if error is defined %}
  Raven.showReportDialog({
      eventId : "{{ errorid }}",
      dsn : appDSN
  });
  {% endif %}
</script>
{% endif %}
<!-- Hotjar Tracking Code for https://aplikasi.kirim.email -->

<script>
(function(h,o,t,j,a,r){
  h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
  h._hjSettings={hjid:502156,hjsv:5};
  a=o.getElementsByTagName('head')[0];
  r=o.createElement('script');r.async=1;
  r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
  a.appendChild(r);
})(window,document,'//static.hotjar.com/c/hotjar-','.js?sv=');
</script>
</body>
</html>
