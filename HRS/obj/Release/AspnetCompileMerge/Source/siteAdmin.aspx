<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="siteAdmin.aspx.cs" Inherits="HRS.siteAdmin" %>

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
        <title>Welcome <%=Session["fName"].ToString() %> (ADMIN) --INTI UI HOSTEL</title>      
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
           <li class="nav-item">
                <asp:HyperLink ID="hnlinkAbout" CssClass="nav-link" runat="server" NavigateUrl="~/about.aspx">About</asp:HyperLink>   
        </li>
           <li class="nav-item active">
                <asp:HyperLink ID="hnlDasboard" CssClass="nav-link" runat="server" NavigateUrl="~/siteAdmin.aspx">Dashboard</asp:HyperLink>   
        </li>
          </ul>
         <ul class="navbar-nav ml-3">
            <li class="nav-item dropdown mr-3">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                    <i class="fas fa-user">Welcome <%=Session["fName"].ToString() %> (ADMIN) </i>
                </a>
                <div class="dropdown-menu">
                    <asp:HyperLink ID="hlinkMyAcct" runat="server" CssClass="dropdown-item fas fa-user-circle" NavigateUrl="~/myaccount.aspx" style="color: black;">My Account</asp:HyperLink> 

                    <%--<a href="myaccount.aspx" class="dropdown-item"><i class="fas fa-user-circle"></i> My Account
                    </a>--%>
                </div>
            </li>
            <li class="nav-item">
                 <asp:HyperLink ID="hnlinkLogout" runat="server" CssClass="nav-link fas fa-user-times mr-3 mt-1" NavigateUrl="~/logout.aspx"> Sign Out</asp:HyperLink> 
                <%--<a href="login.aspx" class="nav-link">
                    <i class="fas fa-user-times">Logout</i>
                </a>--%>
            </li>
        </ul> 
      </div>
  </nav>

                    <header id="main-header" class="py-3 mt-5 bg text-white" style="background-color:#C2A47B">
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6">
                          <h2>
                            <i class="fas fa-cog mt-4"></i><span style="font-family: Georgia, 'Times New Roman', Times, serif;"> Admin Dashboard</span></h2>
                        </div>
                      </div>
                    </div>
                  </header>

         <section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
            <asp:HyperLink ID="hlnView" runat="server" CssClass="btn btn-info btn-block" NavigateUrl="~/viewEnquiries.aspx">View Enquiries</asp:HyperLink>
        </div>

           <div class="col-md-4">
                <asp:HyperLink ID="hlnUpdFaq" runat="server" CssClass="btn btn-warning btn-block" NavigateUrl="~/faq2.aspx">Update FAQ</asp:HyperLink>
        </div>

        <div class="col-md-4">
            <asp:HyperLink ID="hnlContactForm" runat="server" CssClass="btn btn-success btn-block" NavigateUrl="~/viewContactForm.aspx">View Contact Forms</asp:HyperLink>
        </div>

      </div>
    </div>
  </section>

   

               <%--     <div class="container">
        <h1 class="display-4 py-5 mt-5">MY ACCOUNT</h1>
         Welcome <%Session["fName"].ToString(); %>
        <asp:Label ID="lblUser" runat="server" Text=""></asp:Label></div>--%>

        <section id="posts">
    <div class="container">
        <div class="row">

            <div class="col-md-4 mt-3">
                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Reservations</h3>
                        <h4 class="display-4">
                        <i class="fas fa-folder"></i>
                    </h4>
                        <asp:Button ID="btnReservations" runat="server" OnClick="btnReservations_Click" CssClass="btn btn-outline-light btn-sm" Text="View" />
                    </div>
                </div>
                 </div>


            
            <div class="col-md-4 mt-3">
                <div class="card text-center bg text-white mb-3 " style="background-color:#C2A47B">
                    <div class="card-body">
                        <h3>Change Password</h3>
                        <h4 class="display-4">
                        <i class="fas fa-lock"></i>
                    </h4>
                        <asp:Button ID="btnChangePass" runat="server" OnClick="btnChangePass_Click" CssClass="btn btn-outline-light btn-sm" Text="View" />
                    </div>
                </div>
                </div>

            <div class="col-md-4 mt-3">
                <div class="card text-center bg-info text-white mb-3">
                    <div class="card-body">
                        <h3>Users</h3>
                        <h4 class="display-4">
                        <i class="fas fa-users"></i>
                    </h4>
                        <asp:Button ID="btnUsers" runat="server" OnClick="btnUsers_Click" CssClass="btn btn-outline-light btn-sm" Text="View" />
                    </div>
                </div>
                </div>
            
            </div>

          </div>
            <div class="mt-2">
                    <h4 class="text-center">Latest Reservations</h4>
                       <div class="table table-responsive table-striped" >
        <asp:GridView ID="gvReservations" runat="server" CssClass="col-md-12" AutoGenerateColumns="False"
            DataSourceID="SqlDataSourceReserv" DataKeyNames="bookingId" CellPadding="6"
            ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow"
            BorderColor="Tan" BorderWidth="5px"
            AllowPaging="True" OnPageIndexChanging="gvReservations_PageIndexChanging" Style="margin-left: 70px" Width="90%" OnSelectedIndexChanged="gvReservations_SelectedIndexChanged" PageSize="6">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="bookingId" HeaderText="Booking ID" SortExpression="bookingId" ReadOnly="True" />
                <asp:BoundField DataField="roomType" HeaderText="Room Type" SortExpression="roomType" />
                <asp:BoundField DataField="bookedDate" HeaderText="Booked Date" SortExpression="bookedDate" />
                <asp:BoundField DataField="hallChosen" HeaderText="Hall" SortExpression="hallChosen" />
                <asp:BoundField DataField="progAndSession" HeaderText="Prog&Session" SortExpression="progAndSession" />
                <asp:BoundField DataField="studId" HeaderText="Student ID" SortExpression="studId" />
                <asp:BoundField DataField="isApproved" HeaderText="isApproved" SortExpression="isApproved" />
                <asp:BoundField DataField="totalPrice" HeaderText="Total Price" SortExpression="totalPrice" />

            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <br />
                </div>

                     <asp:SqlDataSource ID="SqlDataSourceReserv" runat="server" ConnectionString="<%$ ConnectionStrings:hrsys %>" SelectCommand="SELECT * FROM [reservation] ORDER BY bookedDate DESC"></asp:SqlDataSource>
            
            </div>
            
  
</section>


<!--  FOOTER  -->
<footer id="main-footer" class="text-center p-4 ">
<div class="container">
  <div class="row">
    <div class="col">
      <a href="#main-header">
<img src="./img/logoo.png" class="mt-2 ml-5" style="height:45px; width:180px" alt=""></a>
<a class="navbar-brand mt-2 ml-3" href="#main-header" style="font-family: monospace;  font-size: x-large; font-weight:bolder; color:black">HOSTEL</a>
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

     




    </script>

    </form>
</body>
</html>

