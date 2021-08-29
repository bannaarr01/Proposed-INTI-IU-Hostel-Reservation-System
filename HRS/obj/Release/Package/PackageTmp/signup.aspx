<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="HRS.signup" %>

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
        <title>INTI UI HOSTEL --Sign Up</title>      
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
        
          </ul>
           <div class="form-inline my-lg-0 mt-2 ">
           <asp:HyperLink ID="hlinkLogin" runat="server" NavigateUrl="~/login.aspx" style="color: black;">
               <span class="fas fa-sign-in-alt ml-3" aria-hidden="true"></span> Login</asp:HyperLink>
      </div>
    </div>
  </nav>


  <!-- HEADER -->
  <header id="main-header" class="py-2 bg-secondary text-white mt-5 py-3 ">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h2 class="mt-3">
            <span  style="font-family: Georgia, 'Times New Roman', Times, serif;">Registration </span></h2>
        </div>
      </div>
    </div>
  </header>
 
        <br />
          <div class="container" id="contactBox">
                  <div class="card-header">
                        <h2>Account Registration</h2>
                      <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            EnableClientScript="True" 
            HeaderText="Please correct the following fields: " ForeColor="Red" ShowMessageBox="False" ShowSummary="True" />
                      <br />
                      <div class="col-md-12">
                      <label>Are You a NEW Student or Currently Studying in INTI INTERNATIONAL UNIVERSITY NILAI ?</label>
                       <asp:RadioButtonList ID="rdoType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rdoType_SelectedIndexChanged" >
                               <asp:ListItem>&nbsp; Yes</asp:ListItem>
                               <asp:ListItem>&nbsp; No (I'm a guest / Ex-Student)</asp:ListItem>
                         </asp:RadioButtonList>  
                          </div>
                      <div class="alert-danger">
                      <asp:Label ID="lblMsg" runat="server" Visible="false" Text="" ForeColor="Red" Font-Size="Larger"></asp:Label>
                          </div>
                      <br />
                      <div class="row">
                            <div class="col-md-6">
                                <label>First Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtFname" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            </div>
                            <asp:RequiredFieldValidator ID ="rfName" runat="server" CssClass="text-left" 
                            ControlToValidate="txtFname" ErrorMessage="First Name is Required !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegExName" runat="server" 
                                ValidationExpression="^[a-zA-Z\s]+$" 
                                ControlToValidate="txtFname" 
                            ErrorMessage="First Name Must be Letters only !" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>



                            <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtLname" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            </div>
                          <asp:RequiredFieldValidator ID ="RequiredFieldValidator1" runat="server" CssClass="text-left" 
                            ControlToValidate="txtLname" ErrorMessage="Last Name is Required !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ValidationExpression="^[a-zA-Z\s]+$" 
                                ControlToValidate="txtLname" 
                            ErrorMessage="Last Name Must be Letters only !" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>




                            <div class="col-md-6">
                                <label>Student ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtStudId" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            </div><asp:RequiredFieldValidator ID ="rfStud" runat="server"
                                ControlToValidate="txtStudId" ErrorMessage="Student ID is Required !" 
                                ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegexStudentID" runat="server" 
                                    ControlToValidate="txtStudId" 
                                    ErrorMessage="Student ID Must be Letter and Numbers Only ! Other characters are not Allowed" 
                                    ValidationExpression="^[a-zA-Z0-9\s]+$" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>


                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            </div><asp:RequiredFieldValidator ID ="rdfpswd" runat="server" 
                            ControlToValidate="txtPassword" ErrorMessage="You must enter password !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmpPswd" runat="server" ControlToValidate="txtPassword" ControlToCompare="txtFname" 
                                ErrorMessage="Password cannot be the same as name !" Operator="NotEqual" Display="None"></asp:CompareValidator>
                          <asp:CompareValidator ID="cmpPswdsec" runat="server" ControlToValidate="txtPassword" ControlToCompare="txtLname" 
                                ErrorMessage="Password cannot be the same as name !" Operator="NotEqual" Display="None"></asp:CompareValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtPassword" 
                                ErrorMessage="Password Must be Minimum 8 characters with Atleast One Upper, One Lower, One Number and One Special Character" 
                                ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>

                        
                    
                          <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            </div><asp:RequiredFieldValidator ID ="rfEmail" runat="server" CssClass="text-left" 
                            ControlToValidate="txtEmail" ErrorMessage="Email is Required !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegExEmail" runat="server" 
                                ControlToValidate="txtEmail" 
                                ErrorMessage="Please Enter a valid Email !" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>


                            <div class="col-md-6">
                                <label>Phone Number</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            </div> <asp:RequiredFieldValidator ID ="rfPhone" runat="server" CssClass="text-left" 
                            ControlToValidate="txtPhone" ErrorMessage="Phone Number is Required !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator ID="RegexPhone" runat="server" 
                                ControlToValidate="txtPhone" 
                                ErrorMessage="Phone Number Must be Numbers Only !" 
                                ValidationExpression="^[0-9]*$" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>


                            <div class="col-md-6">
                                <label>Nationality</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtNation" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            </div><asp:RequiredFieldValidator ID ="rfNation" runat="server" CssClass="text-left" 
                            ControlToValidate="txtNation" ErrorMessage="Please Enter your Nationality !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegexNation" runat="server" 
                                ControlToValidate="txtNation" 
                                ErrorMessage="Nationality Must be Letters Only !" 
                                ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>


                            <div class="col-md-3">
                                <label>Gender</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtGender" runat="server" CssClass="form-control form-control-lg" placeholder="Enter M or F"></asp:TextBox>
                                </div>
                            </div><asp:RequiredFieldValidator ID ="rfGender" runat="server" CssClass="text-left" 
                            ControlToValidate="txtGender" ErrorMessage="Gender is Required !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegexGender" runat="server" 
                                ControlToValidate="txtGender" 
                                ErrorMessage="Enter M or F for Gender !" 
                                ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>

                          <div class="col-md-3">
                                <label>Date of Brith</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtDob" runat="server" CssClass="form-control form-control-lg" placeholder="YY-MM-DD"></asp:TextBox>
                                </div>
                            </div><asp:RequiredFieldValidator ID ="rfDob" runat="server" CssClass="text-left" 
                            ControlToValidate="txtDob" ErrorMessage="Date of Birth is Required !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>

                          <div class="col-md-12">
                                <label>Program Enrolled</label>
                                <div class="form-group">
                                     <asp:TextBox ID="txtPgEnrol" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            </div><asp:RequiredFieldValidator ID ="rfPrg" runat="server" CssClass="text-left" 
                            ControlToValidate="txtPgEnrol" ErrorMessage="Program Enrolled Field cannot be Blank !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>


                          <div class="col-md-12">
                                <label>Permanent Address</label>
                                <div class="form-group">
                                      <asp:TextBox ID="txtPermAddrs" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            </div><asp:RequiredFieldValidator ID ="rfPermAddrs" runat="server" CssClass="text-left" 
                            ControlToValidate="txtPermAddrs" ErrorMessage="Permanet Adress Field cannot be Blank !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>




                          <div class="col-md-12">
                             
                                    <div class="form-group">
                                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" CssClass="btn btn-outline-danger btn-lg btn-block" />
                                    </div>
                                </div>

                          </div></div>
                </div>

            <%-- END OF CONTACT FORM--%>
 





    






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

