<!DOCTYPE html>
<html>
<head>
	<?php
	include("conexion.php");
	include("menu.php");
	$actividad = "SELECT * FROM personal" ;
 $opersona =mysqli_query($conecta,$actividad)or die("no se realizo la consulta");
 $proyecto = "SELECT * FROM nombre_interno" ;
    $oproyecto =mysqli_query($conecta,$proyecto)or die("no se realizo la consulta");
 error_reporting(0);

	?>
	<title>Actividades</title>
</head>
<body>
	<form action="actividades.php" method="POST" >
		<h1 align="center">Actividades</h1>

		<div class="container">
			

			<table   width="30%" cellpadding="10" align="center" >
				<tr>
				<th align="center"><h2 align="center" class="table-secondary">Personal</h2></th>
				<th align="center"><h2 align="center" class="table-secondary">Proyecto</h2></th>

				</tr>
				

				<tr >
					<th align="center">
						<div class="select"  >
							<select name="personal" id="personal" >
							<option>Seleccione personal</option>
								<?php
								while ($apersonal=mysqli_fetch_array($opersona)) {
									?>
									<option    value="<?php echo $apersonal['nombre'];?>">
										<?php
										echo $apersonal['nombre'];
										?>
										</option>
										<?php
									}
									?>
								</select>
						</div>
					</th>
						<th >
							<div class="select">
				
				<select name="proyecto" id="proyecto" >
					
					<?php
					while ($aproyecto=mysqli_fetch_array($oproyecto)) {
                    ?>
                    <option    value="<?php echo $aproyecto['nombre_interno'];?>">
                        <?php
                        echo $aproyecto['nombre_interno'];
                        ?>
                    </option>
                    <?php
                    }
                    ?>

				</select>
							
			</div>
					</th>

					<tr>
					<th align="center"><h2 align="center"class="table-secondary"> Inicial</h2></th>
				<th align="center"><h2 align="center"class="table-secondary">Fecha</h2></th>				
				</tr>
				
					<th >
						<div align="center">
						<input   type="date" name="fecha1" id="fecha1" class="form-control">
						</div>
					</th>
					<th >
						<div align="center">
						<input   type="date" name="fecha2" id="fecha2" class="form-control">
						</div>
					</th>
				</tr>

			</table>
			<br>
			<th align="center"><div align="center"><button  type="submit" class="btn btn-info">Resultados</button></div></th>

			<br>
			<br>
			<br>
		</div>
		<?php
		$personal=$_POST['personal'];
		$proyecto=$_POST['proyecto'];
		$fecha1=$_POST['fecha1'];
		$fecha2=$_POST['fecha2'];

		$actividad = "SELECT * FROM actividad where personal='$personal'or proyecto='$proyecto' AND fecha>='$fecha1' AND fecha<='$fecha2'" ;
 $oactividad =mysqli_query($conecta,$actividad)or die("no se realizo la consulta");


		?>




		<div class="container">
			<table align="center" border="1" cellpadding="15" class="table table-striped" > 
				<div align="center">
					<tr >
						<th>id</th>
						<th>Actividad</th>
						<th>Proyecto</th>
						<th>Persona</th>
						<th>Horas</th>
						<th>Semana</th>
						<th>Fecha</th>
						<th>Observaciones</th>
						<th>Editar</th>
					</tr>
				</div>
				<div>
					 <?php
            while ($aactividad=mysqli_fetch_array($oactividad)) {
            	?>
					<tr>
						<th><?php echo $aactividad['idactividad'] ; ?></th>
						<th><?php echo $aactividad['actividad'] ; ?></th>
						<th><?php echo $aactividad['proyecto'] ?></th>
						<th><?php echo $aactividad['personal']; ?></th>
						<th><?php echo $aactividad['horas'] ; ?></th>
						<th><?php echo $aactividad['semana']; ?></th>
						<th><?php echo $aactividad['fecha']; ?></th>
						<th><?php echo $aactividad['observaciones']; ?></th>
						<th><?php echo '<a disabled="" href="editaract.php?var='.$aactividad['idactividad'].'"><input type="button"  value="Editar"></a>'; ?></th>
					</tr>
					 <?php
            }
            ?>
					
				</div>
			</table>
		</div>
		
	</form>

</body>
</html>