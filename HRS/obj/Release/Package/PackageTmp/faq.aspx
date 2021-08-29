<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="HRS.faq" %>

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
     <link rel="icon" type="image/png" href="img/logoico.ico" />
        <title>INTI UI HOSTEL --FAQ &amp; Contact</title>   
 
</head>
<body>
    <form id="form1" runat="server">
        
     <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
        <asp:ImageButton ID="imgbtnLogo" ImageUrl="~/img/logoo.png" style="height:45px; width:180px" runat="server" CausesValidation="false" PostBackUrl="~/Default.aspx" />
      <asp:HyperLink ID="hnlinklogo" runat="server" CssClass="navbar-brand mt-2 ml-3" NavigateUrl="~/Default.aspx" style="font-family: monospace;  font-size: x-large; font-weight:bolder;">HOSTEL</asp:HyperLink>
   
    <div class="collapse navbar-collapse mt-2" id="navbarTogglerDemo03">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
             <asp:HyperLink ID="hnlinkHome" CssClass="nav-link" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        </li>
          <li class="nav-item">
             <asp:HyperLink ID="hnlinkRooms" CssClass="nav-link" runat="server" NavigateUrl="~/rooms.aspx">Rooms</asp:HyperLink>
        </li>
        <li class="nav-item active">
            <asp:HyperLink ID="hnlinkFaq" CssClass="nav-link" runat="server" NavigateUrl="~/faq.aspx">Contact</asp:HyperLink>
        </li>
           <li class="nav-item">
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
  <header id="main-header" class="py-3 mt-5 bg-secondary text-white">
    <div class="container">
      <div class="row align-content-center">
        <div class="col-md-6 ml-5 pl-5 mx-auto">
              <img src="img/faq2.svg" alt="" class="mt-3" style="width:120px; height:110px"  />
        </div>
          <div class="col-md-6 ml-5 pl-5 mx-auto">
            <img src="img/email.svg" alt="" class="mt-4" style="width:90px; height:90px" />
        </div>
      </div>
    </div>
  </header>



  
        <!-- FAQ SECTION -->
<section id="about" class="py-5 text-center bg-light">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="info-header mb-5">
                    <h3 class="text-depradd pb-3">
                        Frequently Asked Questions
                    </h3>
                    <p class="lead pb-3">Open the documentation and view steps in how to navigate through this website</p>
                </div>


             <div>
            <ol>
                <asp:Repeater ID="rpFaq" runat="server">
                    <ItemTemplate>
                        <div>
                           
                            <div class="Question card card-header" style="background-color: #ebf0f5">
                                <div  class="card-btn btn text-left"><%# Eval("Question") %><i class="fas fa-arrow-circle-down float-right"></i></div></div>
                       


                            <div class="Answer card-body text-left" style="background-color: #f5f7fa"><%# Eval("Answer") %></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </ol>
        </div>
            </div>
        </div>
    </div>
</section>


        


        <!-- ENQUIRY -->
        <div class="card-header">
            <h3 class="display-6 text-center py-4">Are you Unable to find an answer above to what you are looking for ?</h3>
<div  class="text-center p-5 text-dark">
  <div class="container">
    <div class="row">
      <div class="col">
        <h3>Contact Us</h3>
        <p>We will get back to you with the email or phone number provided below</p>
        <div>

           
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
                        <div class="fa fa-id-card" aria-hidden="true"></div>
                    </span>
                </div>  
                <asp:TextBox ID="txtStudId" runat="server" CssClass="form-control" placeholder="Student ID"></asp:TextBox>
            </div>
            <div class="col-md-4 text-left" >
            <asp:RequiredFieldValidator ID ="rfStud" runat="server"
                    ControlToValidate="txtStudId" ErrorMessage="Student ID is Required !" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegexStudentID" runat="server" 
                        ControlToValidate="txtStudId" 
                        ErrorMessage="Must be Letter and Numbers Only !" 
                        ValidationExpression="^[a-zA-Z0-9\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
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
            
            <div>
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <div class="fa fa-phone" aria-hidden="true"></div>
                    </span>
                </div>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Phone number"></asp:TextBox>
            </div>
                     <div class="col-md-4">
              <asp:RequiredFieldValidator ID ="rfPhone" runat="server" CssClass="text-left" 
                    ControlToValidate="txtPhone" ErrorMessage="Phone Number is Required !" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegexPhone" runat="server" 
                        ControlToValidate="txtPhone" 
                        ErrorMessage="Must be Numbers Only !" 
                        ValidationExpression="^[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>

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
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" CssClass="btn btn-outline-danger btn-block btn-lg mb-3" />
        </div>
    </div>
      </div>
    </div>
  </div>
</div>
    

      






<!--  FOOTER  -->
<footer id="main-footer" class="text-center p-4 ">
<div class="container">
  <div class="row">
    <div class="col">
      <a href="#main-header">
<img src="./img/logoo.png" class="mt-2 ml-5" style="height:45px; width:180px" alt=""></a>
<a class="navbar-brand mt-2 ml-3" href="#main-header" style="font-family: monospace;  font-size: x-large; font-weight:bolder; color:black">HOSTEL</a>
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
        <script src="scripts/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js" integrity="sha512-Y2IiVZeaBwXG1wSV7f13plqlmFOx8MdjuHyYFVoYzhyRr3nH/NMDjTBSswijzADdNzMyWNetbLMfOpIPl6Cv9g==" crossorigin="anonymous"></script>
    
    <script>
     //Get the current year for the copyright
      $('#year').text(new Date().getFullYear());

        //toggle accordion icon
          $('.card-header').on('click',function() { 
              $(this).find('i').toggleClass('fa fa-arrow-up aria-hidden="true"');

        });

          $(function () {
            $(".Answer").hide();

            $(".Question").click(function () {
                $(this).siblings(".Answer").toggle(300);
            });

        });

    </script>


    </form>
</body>
</html>
