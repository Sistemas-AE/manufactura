<?php 
include("conexion.php");
$proyecto=$_POST['proyecto'];
$consulta="INSERT INTO proyectos (proyecto)VALUES('$proyecto')";
$query=mysqli_query($conecta,$consulta)or die ("no se realizo la cons");
if ($query==true) {
	echo "<script>";
echo "window.location = 'registrarproyectos.php?yes=ok';";
echo "</script>"; 
}
 ?>