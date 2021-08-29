<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="HRS.about" %>

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
    crossorigin="anonymous"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" integrity="sha512-Velp0ebMKjcd9RiCoaHhLXkR1sFoCCWXNp6w4zj1hfMifYB5441C+sKeBl/T/Ka6NjBiRfBBQRaQq65ekYz3UQ==" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css">
    <!-- Favicon -->
	<link rel="icon" type="image/png" href="img/logoico.ico" />
        <title>INTI UI HOSTEL --About Us</title>      
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
        <li class="nav-item">
             <asp:HyperLink ID="hnlinkHome" CssClass="nav-link" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        </li>
          <li class="nav-item">
             <asp:HyperLink ID="hnlinkRooms" CssClass="nav-link" runat="server" NavigateUrl="~/rooms.aspx">Rooms</asp:HyperLink>
        </li>
        <li class="nav-item">
            <asp:HyperLink ID="hnlinkFaq" CssClass="nav-link" runat="server" NavigateUrl="~/faq.aspx">Contact</asp:HyperLink>
        </li>
           <li class="nav-item active">
                <asp:HyperLink ID="hnlinkAbout" CssClass="nav-link" runat="server" NavigateUrl="~/about.aspx">About</asp:HyperLink>   
        </li>
          </ul>
      <div class="form-inline my-lg-0 mt-2 ">
           <asp:HyperLink ID="hlinkLogin" runat="server" NavigateUrl="~/login.aspx" style="color: black;">
               <span class="fas fa-sign-in-alt ml-3" aria-hidden="true"></span> Login</asp:HyperLink> 
      </div>
    </div>
  </nav>
        

 

                  <!-- HEADER -->
  <header id="main-heade" class="py-2 bg-danger text-white text-center mt-5 ">
      <h3 class="display-4 mt-3">Halls of Residence</h3>
  </header>
       
    <!-- ABOUT SECTION -->
<section id="about" class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>What We Do</h1>
                <p class="display-6"><i class="fas fa-check fa-2x"></i> 
                      There are 16 Halls of Residence named after great men who have contributed to the advancement of mankind. 
                    <strong>Aristotle, Darwin, Einstein, Fleming,and Pasteur</strong> offer twin sharing rooms can accommodate 1678 residents.<br />
                    <small class="text-muted">*Newton, Rahmanputra & Shakespeare are unavailable for upgrading work.</small> </p>
                <br />
                <p class="display-6"><i class="fas fa-check fa-2x"></i> 
                      <strong>Gandhi</strong> and <strong>Heisenberg</strong> are single occupancy halls and have a total of 552 rooms.<br />
                    <small class="text-muted">*Jenner, Keynes, Lincoln & Mendel are unavailable for upgrading work.</small> </p>
                <br />
                <p class="display-6"><i class="fas fa-check fa-2x"></i> 
                      There are common bathrooms & toilets on each floor of the halls. Water dispensers (hot/ cold water) are provided in every pantry of each floor.
                      All rooms are furnished with study tables, chairs, bed(s) and mattress(es), soft board(s), wardrobe(s), and a ceiling fan. There are common
                      washing machines and dryers for every hall </p>
                <br />

                 <p class="display-6"><i class="fas fa-check fa-2x"></i> 
                      <strong>Beethoven</strong> Halls Of Residence and <strong>Shakespeare</strong> En-Suite consist of single/ twin sharing air-conditioned luxury type rooms with attached
                      bathroom/ toilet (with water heater), wardrobe, study table, bed/ divan, mini fridge, electric kettle, ceiling fan, shoe rack and shelves. It can
                      accommodate 130 residents. </p>
                   <br />

                 <p class="display-6"><i class="fas fa-check fa-2x"></i> 
                      Confucius Hall of Residence consists of multiple choices of air-conditioned single, twin and triple sharing rooms with bathroom/ toilet (with water
                      heater) attached. It can accommodate 190 residents. </p>
                   <br />

                 <p class="display-6"><i class="fas fa-check fa-2x"></i> 
                     All Halls of Residence are equipped with 24-hour free internet facility. </p>

               </div>

            <div class="col-md-6">
                <img src="img/location.png" alt="" class="img img-fluid d-sm-block d-md-block about-img">
            </div>
        </div>
    </div>
</section>

       <!-- TESTIMONIALS -->
<section id="testimonials" class="p-4  text-white">
    <div class="container">
        <h2 class="text-center text-dark">Rooms</h2>
        <div class="row text-center">
            <div class="col">
                <div class="slider">
                    <div>
                            <p class="mb-0 text-dark">Types of Rooms and details about every rooms will be displayed on the room page after you login </p>
                            <footer class="blockquote-footer text-dark">Price will be determine by session and your selection</footer>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> 
        
        





<!--  FOOTER  -->
<footer id="main-footer" class="text-center p-4 ">
<div class="container">
  <div class="row">
    <div class="col">
      <a href="#main-heade">
<img src="./img/logoo.png" class="mt-2 ml-5" style="height:45px; width:180px" alt=""></a>
<a class="navbar-brand mt-2 ml-3" href="#main-heade" style="font-family: monospace;  font-size: x-large; font-weight:bolder; color:black">HOSTEL</a>
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

          $('.card-header').on('click',function() { 
           $(this).find('i').toggleClass('fas fa-angle-double-down'); 
        });

    </script>


    </form>
</body>
</html>
