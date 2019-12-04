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
		<div  align="center" >
			<table  class="table table-bordered" >
				<tr>
				<th align="center"><h2 align="center">Inicial</h2></th>

				<th align="center"><h2 align="center">Final</h2></th>				
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


   





		$fecha1=0;
		$proy=0;

		$fecha1=$_POST['fecha1'];
		$fecha2=$_POST['fecha2'];
		
		//$semana = date("W",strtotime($semana)); 
		
		?>

		<div class="d-flex justify-content-center" align="center">
			<table class="table table-hover" border="1" cellpadding="10" style="width: 40%">
			<div>
				<tr>
				<th>PERSONAL</th>
				<th>HORAS TRABAJADAS</th>				
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
                       $res="SELECT SUM(horas) as Total_horas,semana FROM actividad WHERE personal='$proy' AND fecha>='$fecha1' AND fecha<='$fecha2'";
					   $ores =mysqli_query($conecta,$res)or die("no se realizo la consultaq");
					   $horas=0;


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