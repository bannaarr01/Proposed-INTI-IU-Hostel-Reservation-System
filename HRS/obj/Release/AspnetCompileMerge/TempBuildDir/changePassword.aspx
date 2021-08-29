<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changePassword.aspx.cs" Inherits="HRS.changePassword" %>
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
        <title>INTI UI HOSTEL --Change Password</title>     
    <style type="text/css">
	/*html, body { overflow-y: scroll; }Auto fix resolution and remove horizontal scroll*/
	  /* #gvUsers { overflow-x: scroll; }Auto fix resolution and remove vertical scroll */

      

     </style>
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

                    <header id="main-header" class="py-3 mt-5 bg text-white" style="background-color:#C2A47B" >
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6">
                          <h2>
                            <i class="fas fa-lock mt-4"></i><span style="font-family: Georgia, 'Times New Roman', Times, serif;"> Change User's Password</span></h2>
                        </div>
                      </div>
                    </div>
                  </header>


        <section id="search" class="py-4 mb-4 bg-light">
    <div class="container">
      <div class="row">
          <div>
          <%-- <asp:HyperLink ID="hlnBack" runat="server" CssClass="btn btn-light btn-block" Font-Size="Larger" Style="float: right; margin-right: 50px"
            Visible="false"
            NavigateUrl="~/changePassword.aspx"><i class="fas fa-arrow-left"></i>Go Back</asp:HyperLink>--%>

              <asp:HyperLink ID="hlnBack" runat="server" CssClass="btn btn-light btn-block"  Visible="false" Font-Size="Larger" NavigateUrl="~/changePassword.aspx"><i class="fas fa-arrow-left"></i>Go Back</asp:HyperLink>
            
              </div>
            <div style="float:left">
            <asp:HyperLink ID="hnlBack1" runat="server" CssClass="btn btn-light btn-block" Font-Size="Larger" NavigateUrl="~/siteAdmin.aspx"><i class="fas fa-arrow-left"></i>Back To Dashboard</asp:HyperLink>
            
        </div>
   
      </div>
    </div>
  </section>

      

        <section id="posts">
    <div class="container">
        <h6 class="text-center mb-3">
     <%--  <asp:Label ID="lblMssg" runat="server" CssClass="alert"  Text="" ForeColor="white" BackColor="#28a745" Font-Size="Larger"></asp:Label>--%>
          </h6>

    </div>
            <div class="mt-2">
                <div class="container">   
                <div class="card border-secondary my-3">   
                     <div class="card-header bg" style="background-color:#C2A47B">
                <h4 class="text-center text-white">Enter User's ID to Search User</h4>
            </div>
                    <div class="card-body">
                   <div class="col-md-6 mx-auto text-center">
        
          <div class="input-group">
              <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control form-control-lg" placeholder="Search User...."></asp:TextBox>
              <div class="input-group-apend">
                  <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" CssClass="btn btn btn-lg text-white" Text="Search" style="background-color:#C2A47B" />
                  <asp:Label ID="lblRecord" runat="server" Text="" Visible="false"></asp:Label>
              </div>
          </div>

      </div>
                    </div> 
                    
                </div>  </div> 

                       <div class="container table table-responsive table-striped" style="overflow-x:auto">
        <asp:GridView ID="gvUsers" runat="server" CssClass="mr-5 ml-5" AutoGenerateColumns="False"
           DataKeyNames="studId" CellPadding="10"
            ForeColor="#333333" GridLines="None"
            AllowPaging="True" OnPageIndexChanging="gvUsers_PageIndexChanging" OnSelectedIndexChanging="gvUsers_SelectedIndexChanging" PageSize="5" OnRowCancelingEdit="gvUsers_RowCancelingEdit" OnRowDeleting="gvUsers_RowDeleting" OnRowEditing="gvUsers_RowEditing" OnRowUpdating="gvUsers_RowUpdating" >
            <AlternatingRowStyle BackColor="White" ForeColor="#C2A47B" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:TemplateField>
                    
                </asp:TemplateField>
                  <asp:ImageField DataImageUrlField="studentAvatar" HeaderText="Image"  ControlStyle-CssClass="img-fluid" ControlStyle-Width="250px" ControlStyle-Height="180px"></asp:ImageField>     
                 <%-- <asp:BoundField DataField="studentAvatar" HeaderText="Image" SortExpression="studentAvatar" ReadOnly="True" />--%>
                <asp:BoundField DataField="studId" HeaderText="ID" SortExpression="studId" ReadOnly="True" />
                <asp:BoundField DataField="fName" HeaderText="First Name" SortExpression="fName" />
                <asp:BoundField DataField="lName" HeaderText="Last Name" SortExpression="lName" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                 <asp:BoundField DataField="isAdmin" HeaderText="Role" SortExpression="isAdmin" />
                <asp:BoundField DataField="prgEnrolled" HeaderText="Program" SortExpression="prgEnrolled" />
                <asp:BoundField DataField="nationality" HeaderText="Nationality" SortExpression="nationality" />
                <asp:BoundField DataField="permAddress" HeaderText="Permanent Address" SortExpression="permAddress" />
                <asp:BoundField DataField="regDate" HeaderText="Member Since" SortExpression="regDate" />
                <asp:CommandField ShowEditButton="true" />  
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
            <EditRowStyle BackColor="#c9c7c7" />
            <FooterStyle BackColor="#C2A47B" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#C2A47B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#C2A47B" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
                </div>

                     
            
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


