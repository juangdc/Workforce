<?php
// Initialize the session
session_start();

// If session variable is not set it will redirect to login pag
if(!isset($_SESSION['username']) || empty($_SESSION['username'])){

  header('location:index.php');

  exit;

}
require_once 'config.php';
// Define variables and initialize with empty values
$username = $_SESSION['username'];
$dni = NULL;
// Prepare a select statement
$sql = "SELECT DNI_usuario FROM Usuario WHERE correo = ?";
if($stmt = mysqli_prepare($mysqli, $sql)){
    mysqli_stmt_bind_param($stmt, "s", $username);
    // Attempt to execute the prepared statement
    if(mysqli_stmt_execute($stmt)){
        // Store result
        mysqli_stmt_store_result($stmt);
        // Bind result variables
        mysqli_stmt_bind_result($stmt, $dni);       
        if(!mysqli_stmt_fetch($stmt))
           echo "Oops! Something went wrong. Please try again later.";
    } else{
        echo "Oops! Something went wrong. Please try again later.";
    }
}
// Close statement
mysqli_stmt_close($stmt);

$name = NULL;
$surname_1;
$surname_2;
$salary;
$km;
$baseStation;
$photo;
// Prepare a select statement
$sql = "SELECT nombre,apellido1,apellido2,salario,km,id_estacion_base,foto FROM Empleado WHERE DNI = ?";
if($stmt = mysqli_prepare($mysqli, $sql)){
    mysqli_stmt_bind_param($stmt, "s", $dni);
    // Attempt to execute the prepared statement
    if(mysqli_stmt_execute($stmt)){
        // Store result
        mysqli_stmt_store_result($stmt);
        // Bind result variables
        mysqli_stmt_bind_result($stmt, $name,$surname1,$surname2,$salary,$km,$baseStation,$photo);       
        if(!mysqli_stmt_fetch($stmt))
           echo "Oops! Something went wrong. Please try again later.";
    } else{
        echo "Oops! Something went wrong. Please try again later.";
    }
}
// Close statement
mysqli_stmt_close($stmt);

// Close connection
mysqli_close($mysqli );
    
?>


<!DOCTYPE html>

<html lang="en">

<head>

<title>Mi Perfil</title>

<meta charset="utf-8">

<meta name="format-detection" content="telephone=no" />

<link rel="icon" href="images/favicon.ico">

<link rel="shortcut icon" href="images/favicon.ico" />

<link rel="stylesheet" href="css/style.css">

<script src="js/jquery.js"></script>

<script src="js/jquery-migrate-1.1.1.js"></script>

<script src="js/jquery.easing.1.3.js"></script>

<script src="js/script.js"></script> 

<script src="js/superfish.js"></script>

<script src="js/jquery.equalheights.js"></script>

<script src="js/jquery.mobilemenu.js"></script>

<script src="js/tmStickUp.js"></script>

<script src="js/jquery.ui.totop.js"></script>

<script>

 $(window).load(function(){

  $().UItoTop({ easingType: 'easeOutQuart' });

  $('#stuck_container').tmStickUp({});  

 }); 

</script>

</head>



<body>

<!--==============================

              header

=================================-->

<header>

  <div class="container">

    <div class="row">

      <div class="grid_12 rel">

        <h1>

          <a href="index.php">

            <img src="images/logo.png" alt="Logo alt">

          </a>

        </h1>

      </div>

    </div>

  </div>

  <section id="stuck_container">

  <!--==============================

              Stuck menu

  =================================-->

    <div class="container">

      <div class="row">

        <div class="grid_12 ">

          <div class="navigation ">

            <nav>

              <ul class="sf-menu">

               <li><a href="interno.php">Inicio</a></li>

                <li class="current"><a href="profile.php">Mi perfil</a></li>

               <li><a href="#">Tareas</a></li>

               <li><a href="#">Cursos</a></li>

               <li><a href="contacto.php">Contacto</a></li>

               <li><a href="logout.php">Cerrar Sesión</a></li>

             </ul>

            </nav>

            <div class="clear"></div>

          </div>       

         <div class="clear"></div>  

        </div>

     </div> 

    </div> 

  </section>

</header>

<!--=====================

          Content

======================-->

<section id="content">

    <div class="container">

    <div class="row">

      <div class="grid_12">

        <h3>Mi Perfil</h3>

      </div>

      <div class="grid_2">

        <img src=<?php echo $photo; ?> alt="" class="bord_img">

      </div>

      <div class="grid_6">

         <div class="text1"><a href="#"><?php echo "$name $surname1 $surname2"; ?></a></div>

        <div class="text3">

           <p>Puesto de trabajo: Maquinista.</p>
           <p> DNI: <?php echo $dni; ?></p>
           <p> Estación base: <?php echo $baseStation; ?>.</p>
           <p> Kilómetros: <?php echo $km; ?> km</p>
           <p> Salario: <?php echo $salary; ?> euros</p>

        </div>

      </div>

    </div>

  </div>

  <article class="content_gray offset__1">

    <div class="container">

      <div class="row">

        <div class="grid_12">

          <h3>Mis Certificados</h3>

        </div>

        <div class="grid_4">

          <div class="block-3">

            <div class="count">1</div>

            <div class="extra_wrapper">

              <div class="text1"><a href="#">Automotor eléctrico S-592 </a></div>

               La composición autónoma mínima consta de tres coches (Motor+Remolque+Motor) y la composición máxima de tres unidades, que pueden ser controladas desde un único puesto de conducción.

            </div>

          </div>

        </div>

        <div class="grid_4">

          <div class="block-3">

            <div class="count">2</div>

            <div class="extra_wrapper">

              <div class="text1"><a href="#"> AVE Serie 100R </a></div>

             Los trenes de la serie 100 fueron los primeros de alta velocidad que comenzaron a circular en abril de 1992 en recién inaugurada línea Madrid-Sevilla.

            </div>

          </div>

        </div>

        <div class="grid_4">

          <div class="block-3">

            <div class="count">3</div>

            <div class="extra_wrapper">

              <div class="text1"><a href="#"> AVE Serie 103 </a></div>

            El 30 de enero de 2007 fue presentado el primer tren de alta velocidad de la serie 103. Esta serie, que consta de 26 trenes fue adjudicada a la empresa alemana Siemens en dos concursos diferentes. Cuenta con tracción distribuida, lo que permite la utilización completa de su espacio interior para los viajeros.

            </div>

          </div>

        </div>



  

      </div>

    </div>

  </article>



</section>

<!--==============================

              footer

=================================-->

<footer id="footer">

  <div class="container">

    <div class="row">

      <div class="grid_12"> 

        <div class="copyright"><span class="brand">OffTheRailSolutions</span> &copy; <span id="copyright-year"></span> | <a href="#">Privacy Policy</a>



        </div>

      </div>

    </div>

  </div>  

</footer>

<a href="#" id="toTop" class="fa fa-chevron-up"></a>

</body>

</html>