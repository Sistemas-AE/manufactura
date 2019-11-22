<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Manufactura</title>
	<?php
	include("conexion.php");
    $persona = "SELECT * FROM personal" ;
    $opersona =mysqli_query($conecta,$persona)or die("no se realizo la consulta");
    $proyecto = "SELECT * FROM proyectos" ;
    $oproyecto =mysqli_query($conecta,$proyecto)or die("no se realizo la consulta");
	include("menu.php")
	?>
	

</head>
<body>
	<div class="d-flex justify-content-center" align="center">
		<form action="registro.php" method="POST" >
			<div>
				<h1>Registro de Actividad</h1>
			</div>
			<div>
				<h2>Actividad</h2>
				<input  class="form-control" type="text" name="actividad" id="actividad" style="margin-top: 14px;">				
			</div>
			<h2>Proyecto interno</h2><br>
			<div class="select">
				
				<select name="pro" id="slct" >
					
					<?php
					while ($aproyecto=mysqli_fetch_array($oproyecto)) {
                    ?>
                    <option    value="<?php echo $aproyecto['proyecto'];?>">
                        <?php
                        echo $aproyecto['proyecto'];
                        ?>
                    </option>
                    <?php
                    }
                    ?>

				</select>
							
			</div>
				<h2>Persona que Realiza</h2><br>
			<div class="select" >
			
				<select name="pers" id="slct" >
					
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
				<input  class="form-control" type="text" name="" style="margin-top: 14px;">
			</div>
				<div>
				<h2>Semana</h2>
				<input  class="form-control" type="text" name="" style="margin-top: 14px;">
			</div>
			<div>
				<h2>Fecha de Actividad</h2><br>
				<input  class="form-control" type="date" name="fecha" id="fecha">
				
			</div>
			<div>
				<h2>Observaciones</h2>
				<textarea class="md-textarea form-control" name="" id=""  ></textarea>
			</div>
			<div>
				<br>
				<button  class="btn btn-primary" >Registrar</button>
			</div>
		</form>
	</div>

</body>
</html>