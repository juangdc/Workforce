<?php
// Initialize the session
session_start();
// If session variable is not set it will redirect to login page
if(!isset($_SESSION['username']) || empty($_SESSION['username'])){
  header('location:index.php');
  exit;
}
?>

 
<!DOCTYPE html>
<html lang="es">
<head>
<title>Inicio</title>
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
<body class="page1" id="top">
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
               <li class="current"><a href="interno.php">Inicio</a></li>
               <li><a href="profile.php">Mi perfil</a></li>
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
  <section class="page1_header">
    <div class="container">
   <div class="row">
        <div class="grid_4">
          <a href="profile.php" class="banner "><div class="maxheight">
            <div class="fa fa-globe"></div>Mi perfil</div>
          </a>
          <a href="#" class="banner "><div class="maxheight">
            <div class="fa fa-lightbulb-o"></div>Solicitudes</div>
          </a>
          <a href="#" class="banner "><div class="maxheight1">
            <div class="fa fa-cog"></div>Configuración</div>
          </a>
          <a href="#" class="banner "><div class="maxheight1">
            <div class="fa fa-briefcase"></div>Notificaciones</div>
          </a>
         </div>
        <div class="grid_4">
        <a href="profile.php" class="banner "><div class="maxheight">
            <div class="fa fa-globe"></div>Tareas</div>
          </a>
          <a href="#" class="banner "><div class="maxheight">
            <div class="fa fa-lightbulb-o"></div>Noticias</div>
          </a>
          <a href="#" class="banner "><div class="maxheight1">
            <div class="fa fa-briefcase"></div>Solicitudes</div>
          </a>
           <a href="#" class="banner "><div class="maxheight1">
            <div class=""></div></div>
          </a>
         </div>
         <div class="grid_4">
         <a href="profile.php" class="banner "><div class="maxheight">
            <div class="fa fa-globe"></div>Promociones</div>
          </a>
          <a href="#" class="banner "><div class="maxheight">
            <div class="fa fa-lightbulb-o"></div>Mi historial</div>
          </a>
          <a href="#" class="banner "><div class="maxheight1">
            <div class="fa fa-cog"></div>Ayuda</div>
          </a>
          <a href="#" class="banner "><div class="maxheight1">
            <div class="fa fa-briefcase"></div>Salir</div>
          </a>
         </div>
      </div>
      
    </div>
  </section>
</header>

<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>