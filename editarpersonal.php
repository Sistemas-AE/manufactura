<!DOCTYPE html>
<html>
<head>
	<title>Editar Prsonal</title>
	<?php
	error_reporting(0);
	$id=$_GET['var'];
	//echo $id;
	include("menu.php");
	include("conexion.php");
	

	?>
</head>
<body>
	<h1 align="center">Editar Personal</h1>
	<div class="d-flex justify-content-center" align="center">

		<form action="editarpersonal.php" method="POST" >
			<input type="text" name="id" id="id" style="visibility: hidden;" value="<?php echo $id;  ?>" >
			<h2>Nombre</h2>
			<input type="text" class="form-control form-control-lg" name="dato" id="dato" required="">

			<div>
				<br>
				<button  class="btn btn-primary" >Actualizar</button>
			</div>
		</form>
	</div>

</body>
</html>
<?php
$id=$_POST['id'];
$dato=$_POST['dato'];
if ($dato<>"") {
	$sql="UPDATE `personal` SET `nombre` = '$dato' WHERE `idpersonal` = '$id';";
	$oinsertat =mysqli_query($conecta,$sql)or die("no se realizo la consulta");
echo "<script>
                alert('Registro Actualizado con Exito');
                window.location= 'registroper.php'
    </script>";
	# code...
}



?>