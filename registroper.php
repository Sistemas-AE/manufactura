<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Registro de Personal</title>
	<?php 
	error_reporting(0);
  include("menu.php");
include("conexion.php");
  $actividad = "SELECT * FROM   personal"; 
 $oactividad =mysqli_query($conecta,$actividad)or die("no se realizo la consulta");
 ?>
</head>
<body>

	<div class="container" align="center">
		<form action="registroper.php" method="POST">
			<div><h1>Registo de personal</h1></div>

			<div><h3>Nombre</h3></div>

			<div><input type="nombre" name="nombre" required=""></div>
			<br>
			<div><button  class="btn btn-primary" >Registrar</button></div>
			<br>
			<br>


			<table class="table table-hover" border="1"  >
			<div>
				<tr>
				<th>PERSONAL</th>
				<th>EDITAR</th>				
				<th>ELIMINAR</th>				
				</tr>
			</div>
			<div>
			<?php
			while ($aactividad=mysqli_fetch_array($oactividad)) {
				$proy= $aactividad['nombre'];
				$proy=$proy;
				?>
				<tr>
				<th >
				<?php
				echo $proy;
				?>
				</th>
                   
                    <th>
                    	<?php echo '<a  href="editarpersonal.php?var='.$aactividad['idpersonal'].'"><input type="button" class="btn btn-outline-success" value="Editar"></a>'; ?>
                    	
                    </th>
                    <th>
                    	<?php echo '<a  href="eliminarper.php?var='.$aactividad['idpersonal'].'"><input type="button" class="btn btn-outline-danger" value="Eliminar"></a>'; ?>
                    </th>
                     <?php                  
                    ?>
                    <?php
                    }
                    ?>
				</tr>
			</div>		
			</table>
		</form>
	</div>


</body>
</html>

<?php
$nombre=$_POST['nombre'];
echo $nombre;
if ($nombre<>"") {
	$sqlinser= $actividad = "INSERT INTO `personal` (`idpersonal`, `nombre`) VALUES (NULL, '$nombre')"; 
$oinsertat =mysqli_query($conecta,$sqlinser)or die("no se realizo la consulta");
}



?>