	<?php
	include("conexion.php");
	include("menu.php");
	$pro2="SELECT *FROM proyectos";
	$jcnc =mysqli_query($conecta,$pro2)or die("no se realizo la consulta");

	?>
	<title>Registro de Proyectos</title>
	<div class="container">
		<?php
		$yeah=$_GET['yes'];
  if ($yeah=='ok') {
    echo '<div class="alert alert-success alert-dismissible  show" role="alert">
  <strong>Registro Correcto</strong>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';}  ?>
	<h1 align="center">Registro de proyectos Internos</h1>
	<br>
	<br>
	<div  class="d-flex justify-content-center" align="center">
		<form action="registroproye.php" method="POST" >

			<div>
				<h1>Nombre Proyecto</h1>
				<select id="proyecto" name="proyecto" class="form-control form-control-lg">
             <option disabled="">Selecciona Proyecto</option>   <?php

                while ($kcnc=mysqli_fetch_array($jcnc)) {
                    ?>

                    <option value="<?php echo $kcnc['proyecto'];?>">
                        <?php
                        echo $kcnc['proyecto'];
                        ?>
                    </option>
                    <?php
                    }
                    ?> 
</select>
			</div>
			<div>
				<h1>Nombre Interno</h1>
				<input  class="form-control" type="text" name="interno" id="interno">	
			</div>
			<div>
				<br>
				<button  class="btn btn-primary" >Registrar</button>
			</div>
		</form>
	</div>
	</div>