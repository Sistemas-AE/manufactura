<!DOCTYPE html>
<html>
<head>
	<title>Resultados</title>
	<?php
	error_reporting(0);
	include("conexion.php");
	include("menu.php");

    $actividad = "SELECT * FROM `actividad`" ;
    $oactividad =mysqli_query($conecta,$actividad)or die("no se realizo la consulta");


	?>
</head>
<body>
<form action="resultados.php" method="POST">
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
		$semana=" ";

		$semana=$_POST['fecha'];
		
		$semana = date("W",strtotime($semana)); 
		echo $semana;
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
                    ?>
				<tr>
					
                    <th>
                    	 <?php
                        echo $aactividad['proyecto'];
                        ?>
                    </th>
                    <th>
                    	<?php
                        echo $aactividad['horas'];
                        ?>
                    </th>
                     <th>
                    	<?php
                        echo $aactividad['semana'];
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