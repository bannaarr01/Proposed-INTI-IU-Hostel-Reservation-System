<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HRS.Default" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
    <link
    rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
    crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" integrity="sha512-Velp0ebMKjcd9RiCoaHhLXkR1sFoCCWXNp6w4zj1hfMifYB5441C+sKeBl/T/Ka6NjBiRfBBQRaQq65ekYz3UQ==" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" type="image/png" href="img/logoico.ico" />
        <title>INTI UI HOSTEL</title>      
</head>
<body>
    <form id="form1" runat="server">
  <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
        <asp:ImageButton ID="imgbtnLogo" ImageUrl="~/img/logoo.png" style="height:45px; width:180px" runat="server" PostBackUrl="~/Default.aspx" />
 <%--   <img src="./img/logoo.png" class="mt-2" style="height:45px; width:180px" alt="">--%>
      <asp:HyperLink ID="hnlinklogo" runat="server" CssClass="navbar-brand mt-2 ml-3" NavigateUrl="~/Default.aspx" style="font-family: monospace;  font-size: x-large; font-weight:bolder;">HOSTEL</asp:HyperLink>
   <%-- <a class="navbar-brand mt-2 ml-3" href="Default.aspx" style="font-family: monospace;  font-size: x-large; font-weight:bolder;">HOSTEL</a>--%>
  
    <div class="collapse navbar-collapse mt-2" id="navbarTogglerDemo03">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
             <asp:HyperLink ID="hnlinkHome" CssClass="nav-link" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        </li>
          <li class="nav-item">
             <asp:HyperLink ID="hnlinkRooms" CssClass="nav-link" runat="server" NavigateUrl="~/rooms.aspx">Rooms</asp:HyperLink>
        </li>
        <li class="nav-item">
            <asp:HyperLink ID="hnlinkFaq" CssClass="nav-link" runat="server" NavigateUrl="~/faq.aspx">Contact</asp:HyperLink>
        </li>
           <li class="nav-item">
                <asp:HyperLink ID="hnlinkAbout" CssClass="nav-link" runat="server" NavigateUrl="~/about.aspx">About</asp:HyperLink>   
        </li>
          </ul>
      <div class="form-inline my-lg-0 mt-2 ">
           <asp:HyperLink ID="hlinkSignUp" runat="server" NavigateUrl="~/signup.aspx" style="color: black;">
               <span class="fas fa-user ml-3"></span> Sign Up</asp:HyperLink>   
           <asp:HyperLink ID="hlinkLogin" runat="server" NavigateUrl="~/login.aspx" style="color: black;">
               <span class="fas fa-sign-in-alt ml-3" aria-hidden="true"></span> Login</asp:HyperLink>       
      <%--<a style="color: black;" href="signup.aspx"><span class="fas fa-user ml-3"></span> Sign Up</a>--%>
     <%-- <a style="color: black;" href="login.aspx"><span class="fas fa-sign-in-alt ml-3" aria-hidden="true"></span> Login</a>--%>
      </div>
    </div>
  </nav>

                    


<!-- SHOWCASE CAROUSEL -->
<section id="showcase">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item carousel-image-1 active img-fluid">
      <div class="container">
        <div class="carousel-caption d-sm-block text-right mb-5">
          <h4 class="display-5">Inti Hostel</h4>
          <p>A Comfortable Living Experience</p>
             <asp:HyperLink ID="hnlBookOne" runat="server" CssClass="btn btn-danger btn-sm" NavigateUrl="~/rooms.aspx"><i class="fas fa-angle-double-right"></i>Book Now</asp:HyperLink>
         <%-- <a href="#" class="btn btn-danger btn-sm"><i class="fas fa-angle-double-right"></i>Book Now</a>--%>
        </div>
      </div>
    </div>
<!--SECOND-->
<div class="carousel-item carousel-image-2 img-fluid">
  <div class="dark-overlaysec">
  <div class="container">
    <div class="carousel-caption d-sm-block text-right mb-5">
      <h4 class="display-5 text-white">Multi cultural dishes</h4>
      <p class="display-6">with diverse coffee and tea outlet</p>
        <asp:HyperLink ID="hnlBookTwo" runat="server" CssClass="btn btn-primary btn-sm" NavigateUrl="~/rooms.aspx"><i class="fas fa-angle-double-right"></i>Book Now</asp:HyperLink> 
    </div>
  </div>
  </div>
</div>
<!--THIRD-->
<div class="carousel-item carousel-image-3 img-fluid" >
  <div class="dark-overlaysec">
  <div class="container">
    <div class="carousel-caption d-sm-block text-right mb-5">
      <h4 class="display-5">Mini Market</h4>
      <p>featured retail outlets, ATM Machines and so on...</p>
        <asp:HyperLink ID="hnlBookThree" runat="server" CssClass="btn btn-danger btn-sm" NavigateUrl="~/rooms.aspx"><i class="fas fa-angle-double-right"></i>Book Now</asp:HyperLink>
    </div>
  </div>
  </div>
</div>
  </div>
  <!-- CONTROLS-->

<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
  <span class="sr-only">Previous</span>
</a>

<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
<span class="carousel-control-next-icon" aria-hidden="true"></span>
<span class="sr-only">Next</span>
</a>  
</div>
</section>




<!-- HOME ICON SECTION -->
<section id="home-icon" class="py-5">
<div class="container">
  <div class="row">
    <div class="col-md-4 mb-4 text-center">
      <h3 class="ml-5">Accomodation Facilities</h3>
      <ul class="list-unstyled ml-5">
        <li>Activity Rooms</li>
        <li>Common Area</li>
        <li>Study Rooms</li>
        <li>Dinning Hall</li>
        <li>BBQ Pit</li>
        <li>Pantry</li>
      </ul>
    </div>
    <div class="col-md-4 mb-4 text-center">
      <h3 class="ml-5">Facilities and Shops</h3>
      <ul class="list-unstyled ml-5">
        <li>Sports &amp; Recreational Facilities</li>
        <li>Indoor Sports Halls</li>
        <li>ATM Machines</li>
        <li>Retail Outlets</li>
        <li>Mini Market</li>
        <li>Cafeteria</li>
      </ul>
    </div>
    <div class="col-md-4 mb-4 text-center">
      <h3 class="ml-5">Other Facilities &amp; Services</h3>
      <ul class="list-unstyled ml-5">
        <li>Resident Fellow &amp; Assistant </li>
        <li>Laundry Facilities</li>
        <li>24-hour Security</li>
        <li>Internet Service</li>
        <li>Bakery</li>
      </ul>
    </div>
  </div>
</div>
</section>

<!-- HOME HEADING SECTION -->
<section id="home-heading" class="p-5">
  <div class="dark-overlay">
    <div class="row">
      <div class="col">
        <div class="container pt-5">
          <h1>Join us and be a part of our growing global family</h1>
          <p class="d-none d-md-block">Our halls of residence are well-equipped with amenities amidst well-tended natural surroundings.</p>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- INFO SECTION -->
<section id="info" class="py-3">
<div class="container">
  <div class="row">
    <div class="col-md-6 align-self-center">
      <h3>Single Rooms</h3>
      <p>Air-conditioned. Available in our Halls of Residence named Gandhi, Heisenberg, Jenner, Keynes, Lincoln and Mendel </p>
      <a href="img/accomodation.png" class="btn btn-outline-danger btn-lg" data-toggle="lightbox" data-gallery="img-info" data-height="660" data-width="660"><i class="fas fa-angle-double-right"></i> View</a>
    </div>
    <div class="col-md-6">
      <img src="img/accomodation.png" class="py-2" alt="" class="img-fluid">
    </div>
  </div>
</div>
</section>

<!-- VIDEO PLAY -->
<section id="video-play">
  <div class="dark-overlay">
    <div class="row">
      <div class="col">
        <div class="container p-5">
         <a href="#" class="video" data-toggle="modal" data-target="#videoModal">
             <!--  <a href="#" class="video" data-video="https://www.youtube.com/embed/ED8eGBC5_DA" data-toggle="modal" data-target="#videoModal">-->
          <i class="fas fa-play fa-3x"></i></a>
          <h1>Step Into INTI</h1>
        </div>
      </div>
    </div>
  </div>
</section>




<!--  PHOTO GALLERY  -->
<section id="gallery" class="py-5">
  <div class="container">
    <h1 class="text-center">Photo Gallery</h1>
    <p class="text-center">Check Out Our Halls Of Residence</p>
    <div class="row mb-4">


  
        


      <div class="col-md-4">
        <a href="/img/accommodation2.png" data-toggle="lightbox" data-gallery="img-gallery" data-height="560" data-width="560">
        <img id="hh" src="/img/accommodation2.png" alt="" class="img-fluid mb-2">
        </a>
      </div>

      <div class="col-md-4">
        <a href="/img/accommodation3.png" data-toggle="lightbox" data-gallery="img-gallery" data-height="561" data-width="561">
        <img src="/img/accommodation3.png" alt="" class="img-fluid mb-2">
        </a>
      </div>


      <div class="col-md-4">
        <a href="/img/accommodation5.png" data-toggle="lightbox" data-gallery="img-gallery" data-height="562" data-width="562">
        <img src="/img/accommodation5.png" alt="" class="img-fluid mb-2">
        </a>
      </div>



      <div class="col-md-4">
        <a href="/img/accommodation6.png" data-toggle="lightbox" data-gallery="img-gallery" data-height="563" data-width="563">
        <img src="/img/accommodation6.png" alt="" class="img-fluid mb-2">
        </a>
      </div>

      <div class="col-md-4">
        <a href="/img/accommodation4.jpg" data-toggle="lightbox" data-gallery="img-gallery" data-height="564" data-width="564">
        <img src="/img/accommodation4.jpg" alt="" class="img-fluid mb-2">
        </a>
      </div>


      <div class="col-md-4">
        <a href="/img/accommodation7.png" data-toggle="lightbox" data-gallery="img-gallery" data-height="565" data-width="565">
        <img src="/img/accommodation7.png" alt="" class="img-fluid mb-2">
        </a>
      </div>



      <div class="col-md-4">
        <a href="/img/accommodation8.png" data-toggle="lightbox" data-gallery="img-gallery" data-height="565" data-width="565">
        <img src="/img/accommodation8.png" alt="" class="img-fluid mb-2">
        </a>
      </div>



      <div class="col-md-4">
        <a href="/img/accommodation9.png" data-toggle="lightbox" data-gallery="img-gallery" data-height="565" data-width="565">
        <img src="/img/accommodation9.png" alt="" class="img-fluid mb-2">
        </a>
      </div>



      <div class="col-md-4">
        <a href="/img/accommodation10.jpg" data-toggle="lightbox" data-gallery="img-gallery" data-height="565" data-width="565">
        <img src="/img/accommodation10.jpg" alt="" class="img-fluid mb-2">
        </a>
      </div>

    </div>
  </div>
</section>


<!-- ENQUIRY -->
<div id="newsletter" class="text-center p-5 bg-dark text-white">
  <div class="container">
    <div class="row">
      <div class="col">
        <h3>Make Enquiry</h3>
        <p>We will get back to you with the email provided below</p>
        <div>
                
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <div class="fas fa-user"></div>
                    </span>
                </div>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
               
            </div>
            <div class="col-md-4">
                 <asp:RequiredFieldValidator ID ="rfName" runat="server" CssClass="text-left" 
                    ControlToValidate="txtName" ErrorMessage="Name is Required !" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegExName" runat="server" 
                        ValidationExpression="^[a-zA-Z\s]+$" 
                        ControlToValidate="txtName" 
                    ErrorMessage="Must be Letters only !" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
                     </div>
           
          <div>
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <div class="fas fa-envelope"></div>
                    </span>
                </div>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
            </div>
          <div class="col-md-4">
              <asp:RequiredFieldValidator ID ="rfEmail" runat="server" CssClass="text-left" 
                    ControlToValidate="txtEmail" ErrorMessage="Email is Required !" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegExEmail" runat="server" 
                        ControlToValidate="txtEmail" 
                        ErrorMessage="Must be a valid Email !" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
          </div>
              </div>

          <div class="mb-1">
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <div class="fas fa-pencil-alt"></div>
                    </span>
                </div>
                <asp:TextBox ID="txtMssg" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Message"></asp:TextBox>
            </div>
              <div class="col-md-4 text-left">
              <asp:RequiredFieldValidator ID ="rfMsg" runat="server" CssClass="text-left" 
                    ControlToValidate="txtMssg" ErrorMessage="Message cannot be Empty !" 
                    ForeColor="Red" Display="Static"></asp:RequiredFieldValidator>
                  </div>
              </div>
          <div>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" CssClass="btn btn-danger btn-block btn-lg mb-3"/>
              </div>
        </div>
    </div>
      </div>
    </div>
  </div>
</div>




<!-- VIDEO MODAL -->
<div class="modal fade" id="videoModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <button class="close" data-dismiss="modal"><span style="color: #ad4102; font-size: larger;">&CircleTimes;</span></button>
      <iframe id="YtubeVideo" width="100%" height="450" src="//www.youtube.com/embed/1q_s8PLIIds?autoplay=1" frameborder="0"  allowfullscreen></iframe> 
     <!--  <iframe src="" frameborder="0" width="100%" height="350" allowfullscreen></iframe>-->
      </div>
    </div>
  </div>
</div>



<!--  FOOTER  -->
<footer id="main-footer" class="text-center p-4 ">
<div class="container">
  <div class="row">
    <div class="col">
      <a href="#showcase">
<img src="./img/logoo.png" class="mt-2 ml-5" style="height:45px; width:180px" alt=""></a>
<a class="navbar-brand mt-2 ml-3" href="#showcase" style="font-family: monospace;  font-size: x-large; font-weight:bolder; color:black">HOSTEL</a>
<%-- <a class="navbar-brand mt-2 ml-3" href="#" style="font-family: monospace;  font-size: x-large; font-weight:bolder; color:black">HOSTEL</a>--%>
</div>
</div>
</div>
<div class="container">
  <div class="row">
    <div class="col">
<p style="font-family: Georgia, 'Times New Roman', Times, serif;font-size: small;">Copyright &copy; <span id="year"></span></p>
</div>
</div>
</div>

</footer>
    




    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script
    src="http://code.jquery.com/jquery-3.5.1.min.js"
    integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
    crossorigin="anonymous"></script>
    
    <script
    src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"
    ></script>
    <script
    src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"
    ></script>
    <script
    src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"
    
    ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js" integrity="sha512-Y2IiVZeaBwXG1wSV7f13plqlmFOx8MdjuHyYFVoYzhyRr3nH/NMDjTBSswijzADdNzMyWNetbLMfOpIPl6Cv9g==" crossorigin="anonymous"></script>
    
    <script>
     //Get the current year for the copyright
      $('#year').text(new Date().getFullYear());

      //configure Slider 
      $('.carousel').carousel({
        interval: 6000,
        pause: 'hover'
      });

      //LightBox Init
      $(document).on('click', '[data-toggle="lightbox"]', function(event) {
                event.preventDefault();
                $(this).ekkoLightbox();
            });

        //Video Play
       //$(function () {
          //Auto Play modal Video
         /*  $(".video").click(function () {
            var theModal = $(this).data("target"),
             videoSRC = $(this).attr("data-video"),
              videoSRCauto = videoSRC;
              $(theModal + 'iframe').attr('src', videoSRCauto);
              $(theModal + 'button.close').click(function () {
                $(theModal + 'iframe').attr('src', videoSRC);
              });
            }); 
          }); */





        $(document).ready(function(){
    /* Get iframe src attribute value i.e. YouTube video url
    and store it in a variable */
  var url = $("#YtubeVideo").attr('src');
    
    /* Assign empty url value to the iframe src attribute when
    modal hide, which stop the video playing */
  $("#videoModal").on('hide.bs.modal', function(){
      $("#YtubeVideo").attr('src', '');
    });
    
    /* Assign the initially stored url back to the iframe src
    attribute when modal is displayed again */
  $("#videoModal").on('show.bs.modal', function(){
      $("#YtubeVideo").attr('src', url);
  });
});



    </script>

    </form>
</body>
</html>
