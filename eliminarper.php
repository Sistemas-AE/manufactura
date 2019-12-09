<?php
$id=$_GET['var'];
//echo $id;
include("conexion.php");

$sql="DELETE FROM `personal` WHERE `personal`.`idpersonal` = $id";
$oactividad =mysqli_query($conecta,$sql)or die("no se realizo la consulta");
echo "<script>
                alert('Registro eliminado con Exito');
                window.location= 'registroper.php'
    </script>";

?>