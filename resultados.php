<!DOCTYPE html>
<html>
<head>
	<title>Resultados</title>
	<?php
	error_reporting(0);
	include("conexion.php");
	include("menu.php");
$actividad = "SELECT * FROM `nombre_interno`" ;
 $oactividad =mysqli_query($conecta,$actividad)or die("no se realizo la consulta");
    $horas;
    $semana


	?>
</head>
<body>
<form action="resultados.php" method="POST">
	<div class="container">
		<h1 align="center">Resultados Horas por Proyecto</h1>
		<div align="center">
			<table  class="table table-hover"  >
				<tr>
				<th align="center"><h2 align="center">Inicial</h2></th>

				<th align="center"><h2 align="center">    Final</h2></th>				
				</tr>
				<tr >
					<th >
						<div align="center">
						<input   type="date" name="fecha1" id="fecha1" class="form-control"> 
						</div>
					</th>
				
					<th >
						<div align="center">
						<input   type="date" name="fecha2" id="fecha2" class="form-control" >
						</div>
					</th>
				</tr>
			</table>
		</div>
		<br>

		<div align="center">
			<button type="submit" class="btn btn-info">Resultados</button>
		</div>

		<br>
		<br>
		<?php
		$semana=0;
		$proy=0;

		//$semana=$_POST['fecha'];
		
		//$semana = date("W",strtotime($semana)); 
		$fecha1=$_POST['fecha1'];
		$fecha2=$_POST['fecha2'];
		
		?>

		<div class="d-flex justify-content-center" align="center">
			<table class="table table-striped" border="1" cellpadding="10" style="width: 40%">
			<div>
				<tr>
				<th>Proyecto</th>
				<th>Horas</th>
				
				</tr>
			</div>
			<div>
			<?php
			while ($aactividad=mysqli_fetch_array($oactividad)) {
				$proy= $aactividad['nombre_interno'];
				$proy=$proy;
				?>
				<tr>
				<th>
				<?php
				echo $proy;
				?>
				</th>
                    <?php
                       //$res="SELECT proyecto,SUM(horas) as Total_horas,semana FROM actividad WHERE proyecto='$proy' AND semana='$semana';";

                        $res="SELECT SUM(horas) as Total_horas,semana FROM actividad WHERE proyecto='$proy' AND fecha>='$fecha1' AND fecha<='$fecha2'";
                       $ores =mysqli_query($conecta,$res)or die("no se realizo la consulta");


                       while ($ares=mysqli_fetch_array($ores)) {
						$horas= $ares['Total_horas'];


                        ?>
                    <th>
                    	<?php
                    	if($horas>=1) {
							echo $horas;
							}else
							echo 0;
                    	?>
                    	

                    </th>
                     <?php
                    }
                    ?>
                    <?php
                    }
                    ?>
				</tr>
			</div>				
			</table>
			
		</div>
	</div>
</form>
</body>
</html>
