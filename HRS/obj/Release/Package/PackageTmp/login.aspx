<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HRS.login" %>

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
        <title>INTI UI HOSTEL --Login</title>      
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
        <asp:ImageButton ID="imgbtnLogo" ImageUrl="~/img/logoo.png" style="height:45px; width:180px" runat="server" PostBackUrl="~/Default.aspx" />
      <asp:HyperLink ID="hnlinklogo" runat="server" CssClass="navbar-brand mt-2 ml-3" NavigateUrl="~/Default.aspx" style="font-family: monospace;  font-size: x-large; font-weight:bolder;">HOSTEL</asp:HyperLink>
   
    <div class="collapse navbar-collapse mt-2" id="navbarTogglerDemo03">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
             <asp:HyperLink ID="hnlinkHome" CssClass="nav-link" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        
          </ul>
    </div>
  </nav>


  <!-- HEADER -->
  <header id="main-header" class="py-2 bg-secondary text-white mt-5 py-3">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h2 class="mt-3">
            <span  style="font-family: Georgia, 'Times New Roman', Times, serif;"> Login </span></h2>
        </div>
      </div>
    </div>
  </header>

  <!-- ACTIONS -->
  <section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
      <div class="row">

      </div>
    </div>
  </section>
    
  <!-- LOGIN -->
  <section id="login">
    <div class="container">
      <div class="row">
        <div class="col-md-8 mx-auto">
          <div class="card">
            <div class="card-header">
                   
              <h4>Account Login</h4>
            </div>
            <div class="card-body">
              <div>
                  <div class="alert-danger"> 
                   <asp:Label ID="lblMssg" runat="server" CssClass="text-center" ForeColor="red" Text="" Visible="false" Font-Size="Larger"></asp:Label>
                    </div>
                      <div class="form-group">
                  <label for="email">Student ID</label>
                    <asp:TextBox ID="txtStudId" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
                <div class="form-group ">
                  <label for="password">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control form-control-lg mb-3"></asp:TextBox>
                </div>
                  <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-outline-danger btn-lg btn-block mb-3" Text="Login" OnClick="btnLogin_Click" />
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group"><a href="#" data-toggle="modal"data-target="#forgottenPasswdModal"style="color:black">
                        <h4 class="lead">Forgotten Password ?</h4></a>
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="form-group">
                            <h4 class="lead">Not a Resident ?
                                <asp:Button ID="btnSignUp" runat="server" CssClass="btn btn-secondary" Text="Sign Up" OnClick="btnSignUp_Click" />
                            </h4>
                        </div>
                    </div>
            </div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </section>
        



<!-- FORGOTTEN PASSWORD MODAL-->
<div class="modal fade" id="forgottenPasswdModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-secondary text-white">
              <h5 class="modal-title">Forgotten Password</h5>
              <button class="close" data-dismiss="modal">
                  <span style="color: red;">&CircleTimes;</span>
              </button>
            </div>
            <div class="modal-body">
                    <div class="form-group">
                        <h4>To Recover Password:</h4><br>
                        <h3 class="display-5"><p>Go to contact page and write to the Admin, requesting for new password.<br><br><h5 class="text-muted"> Ensure you input your full name and student ID in the email</h5></p></h3>
                    </div>  
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Close</button>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js" integrity="sha512-Y2IiVZeaBwXG1wSV7f13plqlmFOx8MdjuHyYFVoYzhyRr3nH/NMDjTBSswijzADdNzMyWNetbLMfOpIPl6Cv9g==" crossorigin="anonymous"></script>
    
    <script>
     //Get the current year for the copyright
      $('#year').text(new Date().getFullYear());

    

    </script>


    </form>
</body>
</html>
