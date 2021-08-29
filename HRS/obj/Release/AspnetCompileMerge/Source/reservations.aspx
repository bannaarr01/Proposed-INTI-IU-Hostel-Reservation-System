<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reservations.aspx.cs" Inherits="HRS.reservations" %>
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
        <title>INTI UI HOSTEL --Reservations</title>      
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
                <asp:HyperLink ID="HyperLink1" CssClass="nav-link" runat="server" NavigateUrl="~/siteAdmin.aspx">Dashboard</asp:HyperLink>   
        </li>
          </ul>
         <ul class="navbar-nav ml-3">
            <li class="nav-item dropdown mr-3">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                    <i class="fas fa-user">Welcome <%=Session["fName"].ToString() %> (ADMIN)</i>
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

                    <header id="main-header" class="py-3 mt-5 bg-success text-white" >
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6">
                          <h2>
                            <i class="fas fa-folder mt-4"></i><span style="font-family: Georgia, 'Times New Roman', Times, serif;"> Reservations</span></h2>
                        </div>
                      </div>
                    </div>
                  </header>


        <section id="search" class="py-4 mb-4 bg-light">
    <div class="container">
      <div class="row">
          <div>
          <%-- <asp:HyperLink ID="hlnBack" runat="server" CssClass="btn btn-outline-success btn-block" Style="float: right; margin-right: 50px"
            Visible="false"
            NavigateUrl="~/reservations.aspx"><i class="fas fa-arrow-left"></i>Go Back</asp:HyperLink>--%>
                <asp:HyperLink ID="hlnBack" runat="server" Visible="false" CssClass="btn btn-outline-success btn-block" Font-Size="Larger" NavigateUrl="~/reservations.aspx"><i class="fas fa-arrow-left"></i>Back To Reservations</asp:HyperLink>
            
              </div>
          <div style="float:left">
            <asp:HyperLink ID="hnlBack1" runat="server" CssClass="btn btn-light btn-block" Font-Size="Larger" NavigateUrl="~/siteAdmin.aspx"><i class="fas fa-arrow-left"></i>Back To Dashboard</asp:HyperLink>
            
        </div>

      <div class="col-md-6 ml-auto">
          <div class="input-group">
              <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control form-control-lg" placeholder="Search Reservation...."></asp:TextBox>
              <div class="input-group-apend">
                  <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" CssClass="btn btn-success btn-lg" Text="Search" />
                  <asp:Label ID="lblRecord" runat="server" Text="" Visible="false"></asp:Label>
              </div>
          </div>

      </div>
             
      </div>
    </div>
  </section>

      

        <section id="posts">
    <div class="container">
        <h6 class="text-center mb-3">
       <asp:Label ID="lblMssg" runat="server" CssClass="alert"  Text="" ForeColor="white" BackColor="#28a745" Font-Size="Larger"></asp:Label>
          </h6>

    </div>
            <div class="mt-2">
                 
                    <h4 class="text-center">Reservations</h4>
                       <div class="table table-responsive table-striped" >
        <asp:GridView ID="gvReservations" runat="server" CssClass="col-md-12" AutoGenerateColumns="False"
            DataSourceID="SqlDataSourceReserv" DataKeyNames="bookingId" CellPadding="9"
            ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow"
            BorderColor="Tan" BorderWidth="5px"
            AllowPaging="True" OnPageIndexChanging="gvReservations_PageIndexChanging" Style="margin-left: 70px" Width="90%" OnSelectedIndexChanging="gvReservations_SelectedIndexChanging"  PageSize="8" OnRowCancelingEdit="gvReservations_RowCancelingEdit" OnRowDeleting="gvReservations_RowDeleting" OnRowEditing="gvReservations_RowEditing" OnRowUpdating="gvReservations_RowUpdating" >
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
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
                <asp:CommandField ShowEditButton="true" />  
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#28a745" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <br />
                </div>

                     <asp:SqlDataSource ID="SqlDataSourceReserv" runat="server" ConnectionString="<%$ ConnectionStrings:hrsys %>" SelectCommand="SELECT * FROM [reservation] ORDER BY bookingId ASC">
                         
                       
                     </asp:SqlDataSource>
            
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

