<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Music_Video_LS.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>FUSIC+</title>

  <!-- Font Awesome Icons -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>

  <!-- Plugin CSS -->
  <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

  <!-- Theme CSS - Includes Bootstrap -->
  <link href="css/creative.min.css" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/full-slider.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
  
   <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="Home.aspx" >FUSIC+ </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto my-2 my-lg-0">
            <li class="nav-item" >
            <a class="nav-link js-scroll-trigger" href="Home.aspx" style="color: #FF3300">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#services">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#portfolio">Search</a>
          </li>
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#allsongs">All Songs</a>
          </li>     
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#login">Login / Register</a>
          </li>
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">Contact Us</a>
          </li>
        </ul>
      </div>
    </div>
  </nav> 
        

            <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"> </li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            
        
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image:url('img/bann11.jpg')"  onclick="location.href='Search.aspx';">
              
          <a href="Search.aspx">
            <div class="carousel-caption d-none d-md-block">
              <h2>Feel the mUSIC with FUSIC+</h2>
              <h3>Search Your Songs Right Now... CLICK HERE TO BROWSE</h3>
              <h5>Watch & Listen To Your Favorite Songs Of Your Favorite Singer, From Your Favorite Album & ENJOY ! </h5>
              <h5>Search Your Song, Listen It & DOWNLOAD IT On Your Device ! </h5>
            </div>
          </div>
     


          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('img/kabir4.jpg')" onclick="location.href='AllSongs.aspx';">
          <a href="Home.aspx">
            <div class="carousel-caption d-none d-md-block">
              <h3>Enjoy Your Favorite Bollywood Songs</h3>
              <p>Play & Download It In Just Few Seconds</p>
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('img/perfect2.jpg')" onclick="location.href='AllSongs.aspx';">
          <a href="Home.aspx">
            <div class="carousel-caption d-none d-md-block">
              <h3>Enjoy Your Favorite Hollywood Songs</h3>
              <p>Play & Download It In Just Few Seconds</p>
            </div>
          </div>
            <!-- Slide Four - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('img/dhaga1.jpg')" onclick="location.href='AllSongs.aspx';">
          <a href="Homepage.aspx">
            <div class="carousel-caption d-none d-md-block">
              <h3>Enjoy Your Favorite Marathi Songs</h3>
              <p>Play & Download It In Just Few Seconds</p><br /><br />
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>


   


        
         <!-- About Section -->
  <section class="page-section bg-primary" id="about" style="background-image: url('img/banner33.jpg')">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-10 text-center">
          <h1 class="text-white mt-0">About Us</h1><hr class="divider light my-4">
     
            <h5 class="text-white mt-0">
            FUSIC Is All About MUSIC ! 
            </h5><br />
          
          <p class="text-white-50 mb-4"> We Provide A Revolutionary Streaming Music Service Reinventing
              How People Listen To Music In India & Around The World.<br />
          Our Mission Is Simple - Play What You Want, Whenever You Want.
        <br /><br />
         Listen To Your Favorite Songs Of Your Favourite Singer, From Your Favorite Album & ENJOY !
         <br />
         Search Your Song or Music Video, WATCH it OR LISTEN to it OR DOWNLOAD it On Your Device ! 
         <br /><br />
             
         FUSIC Is Unlimited & Free On Every Digital Device.
          <br />
              
        </p>

            <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Have A Look At Our Services</a>
        </div>
      </div>
    </div>
  </section>

  <!-- Services Section -->
  <section class="page-section" id="services">
    <div class="container">
      <h2 class="text-center mt-0">At Your Service</h2>
      <hr class="divider my-4">
      <div class="row">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-gem text-primary mb-4"></i>
            <h3 class="h4 mb-2">We've got what you need !</h3>
            <p class="text-muted mb-0">All Diamonds at one place. Browse for your favourite one & Enjoy !</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-laptop-code text-primary mb-4"></i>
            <h3 class="h4 mb-2">Up to Date</h3><br />
            <p class="text-muted mb-0">All songs in mp3 & mp4 format are added ASAP.</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-globe text-primary mb-4"></i>
            <h3 class="h4 mb-2">Millions of Songs</h3><br />
            <p class="text-muted mb-0">Millions of songs stored from around the world, Just for you.</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-heart text-primary mb-4"></i>
            <h3 class="h4 mb-2">Made For Love</h3><br />
            <p class="text-muted mb-0">Everything is free just made for you & your passion for music.</p>
          </div>
        </div>
      </div>
    </div>
  
  </section>


        

       
  <!-- Portfolio Section -->
  <section id="portfolio">
   <br /><br />
      <center>

          <h4> <i><b>* Search Songs By Your Favorite Artists *<br /><br />
              
        </b> </i> </h4>
          
      </center>
    <div class="container-fluid p-0">
      <div class="row no-gutters">
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="img/portfolio/fullsize/collagebolly.png">
            <img class="img-fluid" src="img/portfolio/thumbnails/collagebolly.png" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Category
              </div>
              <div class="project-name">
                Bollywood Artists
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="img/portfolio/fullsize/collageholly.jpg">
            <img class="img-fluid" src="img/portfolio/thumbnails/collageholly.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Category
              </div>
              <div class="project-name">
                Hollywood Artists
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="img/portfolio/fullsize/collagemarathi.jpg">
            <img class="img-fluid" src="img/portfolio/thumbnails/collagemarathi.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Category
              </div>
              <div class="project-name">
                Marathi Artists
              </div>
            </div>
          </a>
        </div>
      

      </div>
    </div>
      
  </section>
        <center>
          <br />
          <h4> <i><b>Also, Search By Albums As Well <br /> <br />
              <a class="btn btn-dark btn-xl" href="Search.aspx">Search Now</a> 
               <br /><br />
              
        </b> </i> </h4>
          
</center>
<br /><br />


  <!-- Call to Action Section -->
  <section class="page-section bg-dark text-white" id="allsongs" style="background-image: url('img/bg-8.jpg')">
    <div class="container text-center">
      <h1 class="mb-4">Enjoy Unlimited songs for free</h1>
          <br /><br />
        <h3 class="mb-4">Click below to see the list of all songs </h3>
          
      
        <br /><br />
      <a class="btn btn-light btn-xl" href="Allsongs.aspx">View All Songs</a>
        <br /><br /><br /><br />
    </div>
  </section>

<br />


 <!-- login/register Section -->
  <section class="page-section" id="login">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-10 text-center">
          <h2 class="mt-0">To Play & Download Songs Click Below To Login Now</h2>
            
          <hr class="divider my-4"><br /><br />
          <p class="text-muted mb-5">If you are not a member, Please register yourself and sign in.
              <br />Then you can have the access to the unlimited songs on your device.</p>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
         <a href="Login.aspx">
            <img src="img/login1.gif" width="300" />
            </a>

          
        </div>
        <div class="col-lg-4 mr-auto text-center">
         <a href="Register.aspx">
            <img src="img/register1.gif" width="300" />
          </a>
        </div>
      </div>
    </div>
  </section>
        


        <hr />


        

      
  <!-- Contact Section -->
  <section class="page-section" id="contact">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 text-center">
          <h2 class="mt-0">Let's Get In Touch!</h2>
          <hr class="divider my-4">
          <p class="text-muted mb-5">Want to contact? <br />Give us a call or send us an email and we will get back to you as soon as possible !</p>
       <p class="text-muted mb-5"> If you are a registered member please log in & send us your message ! We will reply ASAP !</p>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
          <i class="fas fa-phone fa-3x mb-3 text-muted"></i>
          <div>+918655049757</div>
        </div>
        <div class="col-lg-4 mr-auto text-center">
          <i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
          <!-- Make sure to change the email address in anchor text AND the link below! -->
          <a class="d-block" href="mailto:contact@yourwebsite.com">fusic+@gmail.com</a>
        </div>
      </div>
    </div>
  </section>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/creative.min.js"></script>






    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Fusic+ 2019</p><br />
          <p class="m-0 text-center text-white">Developed by Shweta & Anjali</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>



</form>




</body>
</html>
