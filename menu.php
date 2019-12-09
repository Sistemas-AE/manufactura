<link rel="stylesheet" href="css/bootstrap.min.css">
  <script type="text/javascript" src="jquery-3.4.1.min.js" ></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script src="components/jquery/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="components/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="components/bootstrap-calendar/css/calendar.min.css">
<link rel="stylesheet" type="text/css" href="select.css">
</head>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="inicio.php">Manufactura</a>
  <img style="height: 50px; width: 150px;" src="logosmart.png">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto"> 
      <li class="nav-item active">
        <a class="nav-link" href="registrarproyectos.php?yes=l">Registro Proyecto<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="registrarproyecto.php?yes=l">Registro Proyecto Interno<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="registroact.php?yes=l">Registro De Actividades</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="resultados.php">Resultados horas/Proyecto</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="resultados2.php">Resultados horas/Personal</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="actividades.php">Editar Actividades</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="registroper.php">Registrar Personal</a>
      </li>
      
    </ul>
  </div>
  <a class="nav-link" style="color: white" onclick="cerrar();">CERRAR SESION
        </a>
         <script type="text/javascript"> function cerrar(){
                window.location.href ='cerrar.php';
              } </script>
</nav>
