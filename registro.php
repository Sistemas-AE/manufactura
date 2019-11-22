<?php
include("conexion.php");
$actividad=$_POST['actividad'];
$proyecto=$_POST['pro'];
$persona=$_POST['pers'];
$horas=$_POST['horas'];
$semana=$_POST['semana'];
$fecha=$_POST['fecha'];
$observaciones=$_POST['observaciones'];
/*
echo $actividad;
echo "<br>";
echo $proyecto;
echo "<br>";
echo $persona;
echo "<br>";
echo $horas;
echo "<br>";
echo $semana;
echo "<br>";
echo $fecha;
*/
$consulta="INSERT INTO actividad (actividad,proyecto,personal,horas,semana,fecha,observaciones)VALUES('$actividad','$proyecto','$persona','$horas','$semana','$fecha','$observaciones')";
$query=mysqli_query($conecta,$consulta)or die ("no se realizo la cons");
if ($query==true) {
	echo "<script>";
echo "window.location = 'registroact.php?yes=ok';";
echo "</script>"; 
}
?>
