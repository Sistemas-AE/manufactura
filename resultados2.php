<!DOCTYPE html>
<html>
<head>
	<title>Resultados</title>
	<?php
	error_reporting(0);
	include("conexion.php");
	include("menu.php");
$actividad = "SELECT DISTINCT personal FROM actividad"; ;
 $oactividad =mysqli_query($conecta,$actividad)or die("no se realizo la consulta");
    $horas;
    $semana


	?>
</head>
<body>
<form action="resultados2.php" method="POST">
	<div >
		<h1 align="center">Resultados</h1>
		<div align="center">
			<h2>Semana de Trabajo</h2>
			<input type="date" name="fecha" id="fecha">
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

		$semana=$_POST['fecha'];
		
		$semana = date("W",strtotime($semana)); 
		
		?>

		<div class="d-flex justify-content-center" align="center">
			<table class="table table-striped" border="1" cellpadding="10" style="width: 40%">
			<div>
				<tr>
				<th>Proyecto</th>
				<th>Horas</th>
				<th>Semana</th>
				</tr>
			</div>
			<div>
			<?php
			while ($aactividad=mysqli_fetch_array($oactividad)) {
				$proy= $aactividad['personal'];
				$proy=$proy;
				?>
				<tr>
				<th>
				<?php
				echo $proy;
				?>
				</th>
                    <?php
                       $res="SELECT DISTINCT proyecto,SUM(horas) as Total_horas,semana FROM actividad WHERE personal='$proy' AND semana='$semana';";
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


                     <th>
                    	<?php
                    	if ( $semana>1) {
                    		echo $semana;
                    	}else
                       echo 0;
                        ?>
                    </th>

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