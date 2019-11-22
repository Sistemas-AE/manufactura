<!DOCTYPE html>
<html>
<head>
	<?php
	include("conexion.php");
	include("menu.php");

	?>
	<title>Registro de Proyectos</title>
</head>
<body>
	<h1 align="center">Registro de proyectos</h1>
	<br>
	<br>
	<div class="d-flex justify-content-center" align="center">
		<form action="registroproye.php" method="POST" >

			<div>
				<h1>Nombre Proyecto</h1>
				<input  class="form-control" type="text" name="proyecto" id="proyecto">	
			</div>
			<div>
				<h1>Nombre Interno</h1>
				<input  class="form-control" type="text" name="interno" id="interno">	
			</div>
			<div>
				<br>
				<button  class="btn btn-primary" >Registrar</button>
			</div>
			
		</form>

		
	</div>



</body>
</html>