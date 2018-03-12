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
<title>Contacto</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/contact-form.css">
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
<script src="js/TMForm.js"></script>
<script src="js/modal.js"></script>
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
               <li><a href="profile.php">Mi perfil</a></li>
               <li><a href="#">Tareas</a></li>
               <li><a href="#">Cursos</a></li>
               <li class="current"><a href="contacto.php">Contacto</a></li>
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
      <div class="grid_5">
        <h3 class="head__1">Dirección:</h3>
        <address class="text3">
          S/N Calle de los ciruelos <br>Boadilla del monte <br>Madrid
        </address>
      </div>
      <div class="grid_4">
        <h3 class="head__1">Teléfono:</h3>
        <div class="text3">
          +34 ********<br>+34 91********
        </div>
      </div>
      <div class="grid_3">
        <h3 class="head__1">E-mail:</h3>
        <div class="text3">
          <a href="#">support@offtherailsolutions.org</a><br>
        </div>
      </div>
      <div class="grid_12">
        <h3 class="head__1">¿Alguna duda? Escríbanos</h3>
              <form id="contact-form">
                  <div class="contact-form-loader"></div>
                  <fieldset>
                    <label class="name">
                      <input type="text" name="name" placeholder="Name:" value="" data-constraints="@Required @JustLetters"  />
                      <span class="empty-message">*Campo requerido.</span>
                      <span class="error-message">*No es un nombre válido.</span>
                    </label>
                   
                    <label class="email">
                      <input type="text" name="email" placeholder="E-mail:" value="" data-constraints="@Required @Email" />
                      <span class="empty-message">*Campo requerido</span>
                      <span class="error-message">*No es un email válido.</span>
                    </label>
                    <label class="phone">
                      <input type="text" name="phone" placeholder="Phone:" value="" data-constraints="@Required @JustNumbers" />
                      <span class="empty-message">*Campo requerido.</span>
                      <span class="error-message">*Teléfono no válido.</span>
                    </label>
                   
                    <label class="message">
                      <textarea name="message" placeholder="Message:" data-constraints='@Required @Length(min=20,max=999999)'></textarea>
                      <span class="empty-message">*This field is required.</span>
                      <span class="error-message">*The message is too short.</span>
                    </label>
                    <div class="clear"></div>
                    <div>
                      <a href="#" class="btn" data-type="submit">Send e-mail</a>
                    </div>
                  </fieldset> 
                  <div class="modal fade response-message">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                          You message has been sent! We will be in touch soon.
                        </div>      
                      </div>
                    </div>
                  </div>
                </form>   
      </div>
    </div>
  </div>
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