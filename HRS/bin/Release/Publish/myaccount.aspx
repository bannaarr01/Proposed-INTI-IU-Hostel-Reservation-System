<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myaccount.aspx.cs" Inherits="HRS.myaccount" %>

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
        <title>INTI UI HOSTEL</title>      
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
        </li>
        <li class="nav-item">
            <asp:HyperLink ID="hnlinkFaq" CssClass="nav-link" runat="server" NavigateUrl="~/faq.aspx">Contact</asp:HyperLink>
        </li>
           <li class="nav-item">
                <asp:HyperLink ID="hnlinkAbout" CssClass="nav-link" runat="server" NavigateUrl="~/about.aspx">About</asp:HyperLink>   
        </li>
          <li class="nav-item">
                <asp:HyperLink ID="hnlinkRooms" CssClass="nav-link" runat="server" NavigateUrl="~/rooms.aspx">Rooms</asp:HyperLink>   
        </li>
           <li class="nav-item active">
                <asp:HyperLink ID="hnlinkMyAcct" CssClass="nav-link" runat="server" NavigateUrl="~/myaccount.aspx"> My Account</asp:HyperLink>   
        </li>
          </ul> <ul class="navbar-nav ml-3">
            <li class="nav-item dropdown mr-3">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                    <i class="fas fa-user">Welcome <%=Session["fName"].ToString() %></i>
                </a>
                <div class="dropdown-menu">
                    <asp:HyperLink ID="hlinkMyAcct" runat="server" CssClass="dropdown-item fas fa-user-circle" NavigateUrl="~/myaccount.aspx" style="color: black;">My Account</asp:HyperLink> 

                </div>
            </li>
            <li class="nav-item">
                 <asp:HyperLink ID="hnlinkLogout" runat="server" CssClass="nav-link fas fa-user-times mr-3 mt-1" NavigateUrl="~/logout.aspx"> Sign Out</asp:HyperLink> 
              
            </li>
        </ul> 
      </div>
    </div>
  </nav>

         <header id="main-header" class="py-3 mt-5 bg-info text-white" >
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6">
                          <h2>
                            <i class="fas fa-user mt-4"></i><span style="font-family: Georgia, 'Times New Roman', Times, serif;"> My Account</span></h2>
                        </div>
                      </div>
                    </div>
                  </header>
            
        <section id="actions" class="py-2 mb-4 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
            <asp:HyperLink ID="hnlBack" runat="server" CssClass="btn btn-light btn-block" Font-Size="Larger" NavigateUrl="~/rooms.aspx"><i class="fas fa-arrow-left"></i>Back To Rooms</asp:HyperLink>
            <asp:HyperLink ID="hnlBack2" runat="server" Visible="false" CssClass="btn btn-light btn-block" Font-Size="Larger" NavigateUrl="~/myaccount.aspx"><i class="fas fa-arrow-left"></i>Back To My Account</asp:HyperLink>
            
       
        </div>
      </div>
    </div>
  </section>




          <section id="profile">
    <div class="container">
      <div class="row">
        <div class="col-md-9">
            <h6 class="text-center mb-3">
                 <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            EnableClientScript="True" 
            HeaderText="Please correct the following fields: " ForeColor="Red" ShowMessageBox="False" ShowSummary="True" />
            <asp:Label ID="lblResult" runat="server" Font-Size="X-Large" ForeColor="#17a2b8"></asp:Label>
                </h6>
          <div class="card">
            <div class="card-header">
                <h4>
                <asp:Label ID="lblshowProf" runat="server" Text="Profile Details"></asp:Label>
               <asp:Label ID="lblEditPrfl" runat="server" Visible="false" Text="Edit Profile"></asp:Label>
                    </h4>
            </div>
            <div class="card-body">
              <div>
                  <div class="form-group">
                  <label>ID</label>
                    <asp:Label ID="lblIDD" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtStudId" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>
                </div>

                  <div class="form-group">
                  <label>Phone Number</label>
                    <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtPhone" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID ="rfPhone" runat="server" CssClass="text-left" 
                            ControlToValidate="txtPhone" ErrorMessage="Phone Number is Required !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator ID="RegexPhone" runat="server" 
                                ControlToValidate="txtPhone" 
                                ErrorMessage="Phone Number Must be Numbers Only !" 
                                ValidationExpression="^[0-9]*$" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>

                <div class="form-group">
                  <label for="email">Email</label>
                     <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>
                </div><asp:RequiredFieldValidator ID ="rfEmail" runat="server" CssClass="text-left" 
                            ControlToValidate="txtEmail" ErrorMessage="Email is Required !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegExEmail" runat="server" 
                                ControlToValidate="txtEmail" 
                                ErrorMessage="Please Enter a valid Email !" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>

                  <div class="form-group">
                  <label>Nationality</label>
                    <asp:Label ID="lblNation" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtNation" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>

                </div><asp:RequiredFieldValidator ID ="rfNation" runat="server" CssClass="text-left" 
                            ControlToValidate="txtNation" ErrorMessage="Please Enter your Nationality !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegexNation" runat="server" 
                                ControlToValidate="txtNation" 
                                ErrorMessage="Nationality Must be Letters Only !" 
                                ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>
            

                  <div class="form-group">
                  <label>Program Enrolled</label>
                    <asp:Label ID="lblPgEnroll" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtPgEnroll" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID ="rfPrg" runat="server" CssClass="text-left" 
                            ControlToValidate="txtPgEnroll" ErrorMessage="Program Enrolled Field cannot be Blank !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>

                <div class="form-group">
                  <label for="PermAddress">Permanent Address</label>
                    <asp:Label ID="lblPermAddr" runat="server" Text=""></asp:Label>
                      <asp:TextBox ID="txtMssg" runat="server" TextMode="MultiLine" Visible="false" CssClass="form-control"></asp:TextBox>
                   </div>
                  <asp:RequiredFieldValidator ID ="rfPermAddrs" runat="server" CssClass="text-left" 
                            ControlToValidate="txtMssg" ErrorMessage="Permanet Adress Field cannot be Blank !" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>

                  <asp:Button ID="btnEditProf" runat="server" OnClick="btnEditProf_Click" CssClass="btn btn-info btn-block" Text="Edit Profile" />
                  <asp:Button ID="btnUpdatChanges" runat="server" OnClick="btnUpdatChanges_Click" Visible="false" CssClass="btn btn-success btn-block" Text="Update" />
                </div>
              </div>
            </div>
          </div>
        <div class="col-md-3">
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
          <h3>Profile Picture</h3>
         <%-- <img src="img/users/avatar.png" alt="" class="d-block img-fluid mb-3">--%>
             <asp:Image ID="imgCheck" runat="server"  CssClass="d-block img-fluid mb-3" />
             <asp:FileUpload ID="fuImg" runat="server" CssClass="btn btn-secondary btn-block" />
            <asp:Button ID="btnUpload" runat="server" CausesValidation="false" OnClick="btnUpload_Click" CssClass="btn btn-info btn-block" Text="Upload" />
             <asp:Button ID="btnDeleteImg" runat="server" CausesValidation="false" OnClick="btnDeleteImg_Click" CssClass="btn btn-danger btn-block" Text="Delete Image" />
        </div>
      </div>
    </div>
  </section>

        <div class="mt-2">
                 
                    <h4 class="text-center mb-2">My Reservation</h4>
                       <div class="table table-responsive table-striped">
        <asp:GridView ID="gvReservations" runat="server" CssClass="col-md-12" AutoGenerateColumns="False"
            DataKeyNames="bookingId" CellPadding="4"
            ForeColor="#333333" GridLines="None"
            AllowPaging="True" OnPageIndexChanging="gvReservations_PageIndexChanging" Style="margin-left: 70px" Width="90%" OnSelectedIndexChanged="gvReservations_SelectedIndexChanged" PageSize="4" >
            <AlternatingRowStyle BackColor="White" ForeColor="#17a2b8" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:TemplateField>
                    
                </asp:TemplateField>
                <asp:BoundField DataField="bookingId" HeaderText="Booking ID" SortExpression="bookingId" ReadOnly="True" />
                <asp:BoundField DataField="roomType" HeaderText="Room Type" SortExpression="roomType" />
                <asp:BoundField DataField="bookedDate" HeaderText="Booked Date" SortExpression="bookedDate" />
                <asp:BoundField DataField="hallChosen" HeaderText="Hall" SortExpression="hallChosen" />
                <asp:BoundField DataField="progAndSession" HeaderText="Prog&Session" SortExpression="progAndSession" />
                <asp:BoundField DataField="studId" HeaderText="Student ID" SortExpression="studId" />
                <asp:BoundField DataField="isApproved" HeaderText="isApproved" SortExpression="isApproved" />
                <asp:BoundField DataField="totalPrice" HeaderText="Total Price" SortExpression="totalPrice" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#17a2b8" Font-Bold="False" ForeColor="White" />
            <HeaderStyle BackColor="#17a2b8" Font-Bold="False" ForeColor="White" />
            <PagerStyle BackColor="#17a2b8" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="False" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
                </div>

            
            </div>
                   

<!--  FOOTER  -->
<footer id="main-footer" class="text-center p-4 ">
<div class="container">
  <div class="row">
    <div class="col">
      <a href="#showcase">
<img src="./img/logoo.png" class="mt-2 ml-5" style="height:45px; width:180px" alt=""></a>
<a class="navbar-brand mt-2 ml-3" href="#showcase" style="font-family:monospace; font-size: x-large; font-weight:bolder; color:black">HOSTEL</a>
</div>
</div>
</div>
<div class="container">
  <div class="row">
    <div class="col">
<p style="font-family: Georgia, 'Times New Roman', Times, serif;font-size: small;">Copyright &copy; span>v>
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

