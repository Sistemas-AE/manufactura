<!DOCTYPE html>
<html>
<head>





	<title>Editar Actividad</title>
	<?php
	include("conexion.php");
	include("menu.php");
	error_reporting(0);

  $persona = "SELECT * FROM personal" ;
    $opersona =mysqli_query($conecta,$persona)or die("no se realizo la consulta");





	$idactividad=$_GET['var'];
	//echo $idactividad;

	$actividad = "SELECT * FROM actividad WHERE idactividad='$idactividad'; " ;
 $oactividad =mysqli_query($conecta,$actividad)or die("no se realizo la consulta");


	while ($aproyecto=mysqli_fetch_array($oactividad)) {
$activi=$aproyecto['actividad'];
$proyecto=$aproyecto['proyecto'];
$personal=$aproyecto['personal'];
$horas=$aproyecto['horas'];
$semana=$aproyecto['semana'];
$observaciones=$aproyecto['observaciones'];
}



	?>
</head>
<body>
	<div class=" d-flex justify-content-center" align="center">
		<form action="editaract.php?vari=1&varri2=<?php echo$idactividad ?>" method="POST" >
			<div>
				<h1>Editar Actividad</h1>
			</div>
			<div>
				<h2>Actividad</h2>
				<input  class="form-control" type="text" name="actividad" id="actividad" value="<?php echo $activi ?>" required="" style="margin-top: 14px;">				
			</div>
			<h2>Proyecto interno</h2><br>
			<div >
				
				<input  class="form-control" type="text" name="proyecto" id="proyecto" value="<?php echo $proyecto ?>" required="">
							
			</div>
				<h2>Persona que Realiza</h2><br>
			<div class="select" >
			
				<select name="pers" id="pers" required="" >
					
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
				<input  class="form-control" type="text" name="horas" id="horas" value="<?php echo $horas ?>" required="" style="margin-top: 14px; ">
			</div>
				<div>
				<h2>Semana</h2>
				<input  class="form-control" type="text" name="semana" id="semana" value="<?php echo $semana ?>" required="" style="margin-top: 14px;">
			</div>
			<div>
				<h2>Fecha de Actividad</h2><br>
				<input  class="form-control" type="date" name="fecha" id="fecha" required="dd/mm/aaaa">
				
			</div>
			<div>
				<h2>Observaciones</h2>
				<textarea class="md-textarea form-control" name="observaciones" id="observaciones" values="asdas" required="" ></textarea>
			</div>
			<div>
				<br>
				<button  class="btn btn-primary" >Actualizar</button>
			</div>
			
		</form>
		
	</div>
	
</body>
</html>


<?php

$a=$_GET['vari'];
if ($a==1) {

$id=$_GET['varri2'];
$d1=$_POST['actividad'];
$d2=$_POST['proyecto'];
$d3=$_POST['pers'];
$d4=$_POST['horas'];
$d5=$_POST['semana'];
$d6=$_POST['fecha'];
$d7=$_POST['observaciones'];



$actualizar=("UPDATE actividad SET actividad='$d1', proyecto='$d2', personal='$d3', horas='$d4', semana='$d5',fecha='$d6',observaciones='$d7' WHERE idactividad= '$id';  ");
$oactualizar =mysqli_query($conecta,$actualizar)or die("no se realizo la consulta");


	# code...
}

//UPDATE actividad SET actividad='ejemplp', proyecto='asas', personal='Osviel Ascencion', horas='52', semana='$50',fecha='2019-12-02',observaciones='222222222222' WHERE idactividad= '3' 


?>