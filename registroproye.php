<?php 
include("conexion.php");
$proyecto=$_POST['proyecto'];
$interno=$_POST['interno'];
$consulta="INSERT INTO nombre_interno (proyecto,nombre_interno)VALUES('$proyecto','$interno')";
mysqli_query($conecta,$consulta)or die ("no se realizo la cons");
echo "<script>";
echo "window.location = 'registrarproyecto.php?yes=ok';";
echo "</script>"; 
 ?>