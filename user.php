<?php
require_once ("conexion.php"); //conexxion

$login=($_POST['username']);
echo $login;
$senha=($_POST['password']);
echo $senha;
 SESSION_START();
$_SESSION['user'] = $login;

$consulta=("SELECT Nombre,Pasw,acces FROM usuarios WHERE Nombre='$login' AND Pasw='$senha'"); //consulda
 $sql=mysqli_query($conecta,$consulta)or die ("no se realizo la consulta");
 while ($alistar=mysqli_fetch_array($sql)) {
echo $alistar['acces'];
$_SESSION['acceso'] = $alistar['acces'];
 }
if($sql){
                $datos=mysqli_num_rows($sql);
                if($datos==1){
                              header("Location: inicio.php");        
                }else {
                              
     echo "<script>
                alert('USUARIO O CONTASEÑA INCORRECTO INTENTE DE NUEVO');
                window.location= 'index.php'
    </script>";

                               //regresar a login y mandar mensaje de error
                }
}
?>