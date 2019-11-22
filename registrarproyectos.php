	<?php
	include("conexion.php");
	include("menu.php");
	?>
	<title>Registro de Proyectos</title>
	<div class="container">
		<?php
		$yeah=$_GET['yes'];
		if ($yeah=='ok') {
			echo '<div class="alert alert-success alert-dismissible  show" role="alert">
			<strong>Registro Correcto</strong>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
			</div>';}  ?>
			<h1 align="center">Registro de proyectos</h1>
			<br>
			<br>
			<div  class="d-flex justify-content-center" align="center">
				<form action="regstroproyect.php" method="POST" >
					<div>
						<h1>Nombre Del Proyecto</h1>
						<input  class="form-control" type="text" name="proyecto" id="proyecto">	
					</div>
					<div>
						<br>
						<button  class="btn btn-primary" >Registrar</button>
					</div>
				</form>
			</div>
		</div>