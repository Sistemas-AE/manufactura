<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Manufactura</title>
	<?php
	include("conexion.php");
    $persona = "SELECT * FROM personal" ;
    $opersona =mysqli_query($conecta,$persona)or die("no se realizo la consulta");
    $proyecto = "SELECT * FROM nombre_interno" ;
    $oproyecto =mysqli_query($conecta,$proyecto)or die("no se realizo la consulta");
	include("menu.php")
	?>
	

</head>
<body>
	<div class="d-flex justify-content-center" align="center">

		<form action="registro.php" method="POST" ><?php
		$yeah=$_GET['yes'];
  if ($yeah=='ok') {
    echo '<div class="alert alert-success alert-dismissible  show" role="alert">
  <strong>Registro Correcto</strong>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';}else{
	 echo '<div class="alert alert-warning alert-dismissible  show" role="alert">
  <strong>Bienvenido</strong>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';
}  ?>
			<div>
				<h1>Registro de Actividad</h1>
			</div>
			<div>
				<h2>Actividad</h2>
				<input  class="form-control" type="text" name="actividad" id="actividad" required="" style="margin-top: 14px; ">				
			</div>
			<h2>Proyecto interno</h2><br>
			<div class="select">
				
				<select name="pro" id="pro" >
					
					<?php
					while ($aproyecto=mysqli_fetch_array($oproyecto)) {
                    ?>
                    <option    value="<?php echo $aproyecto['nombre_interno'];?>">
                        <?php
                        echo $aproyecto['nombre_interno'];
                        ?>
                    </option>
                    <?php
                    }
                    ?>

				</select>
							
			</div>
				<h2>Persona que Realiza</h2><br>
			<div class="select" >
			
				<select name="pers" id="pers" >
					
					<?php
					while ($apersonal=mysqli_fetch_array($opersona)) {
                    ?>
                    <option    value="<?php echo $apersonal['nombre'];?>">
                        <?php
                        echo $apersonal['nombre'];
                        ?>
                    </option>
                    <?php
                    }
                    ?>

				</select>
			</div>
				<div>
				<h2>Horas</h2>
				<input  class="form-control" type="text" name="horas" id="horas" required="" style="margin-top: 14px;">
			</div>
				<div>
				<h2>Semana</h2>
				<input  class="form-control" type="text" name="semana" id="semana" required="" style="margin-top: 14px;">
			</div>
			<div>
				<h2>Fecha de Actividad</h2><br>
				<input  class="form-control" type="date" name="fecha" id="fecha" required="">
				
			</div>
			<div>
				<h2>Observaciones</h2>
				<textarea class="md-textarea form-control" name="observaciones" id="observaciones" required=""  ></textarea>
			</div>
			<div>
				<br>
				<button  class="btn btn-primary" >Registrar</button>
			</div>
		</form>
	</div>

</body>
</html>