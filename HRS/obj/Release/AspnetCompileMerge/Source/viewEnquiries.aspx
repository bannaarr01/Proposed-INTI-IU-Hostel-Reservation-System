<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewEnquiries.aspx.cs" Inherits="HRS.viewEnquiries" %>
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
        <title>INTI UI HOSTEL --Enquiries</title>     
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

                </div>
            </li>
            <li class="nav-item">
                 <asp:HyperLink ID="hnlinkLogout" runat="server" CssClass="nav-link fas fa-user-times mr-3 mt-1" NavigateUrl="~/logout.aspx"> Sign Out</asp:HyperLink> 
              
            </li>
        </ul> 
      </div>
  </nav>

                    <header id="main-header" class="py-3 mt-5 bg-info text-white" >
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6">
                          <h2>
                            <i class="fa fa-question-circle mt-4" aria-hidden="true"></i><span style="font-family: Georgia, 'Times New Roman', Times, serif;"> Enquiries</span></h2>
                        </div>
                      </div>
                    </div>
                  </header>


        <section id="search" class="py-2 mb-4 bg-light">
    <div class="container">
      <div class="row">
          <div>
           <asp:HyperLink ID="hlnBack" runat="server" CssClass="btn btn-outline-info btn-block" Style="float: right; margin-right: 50px"
            Visible="false" NavigateUrl="~/users.aspx"><i class="fas fa-arrow-left"></i>Go Back</asp:HyperLink>
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
                 
                    <h4 class="text-center">Enquiries</h4>
                       <div class="container table table-responsive table-striped">
        <asp:GridView ID="gvEnquiries" runat="server" CssClass="col-md-12 mr-5 ml-5" AutoGenerateColumns="False"
           DataKeyNames="Id" CellPadding="10"
            ForeColor="#333333" GridLines="None"
            AllowPaging="True" OnPageIndexChanging="gvEnquiries_PageIndexChanging" OnSelectedIndexChanging="gvEnquiries_SelectedIndexChanging" PageSize="8" OnRowDeleting="gvEnquiries_RowDeleting">
            <AlternatingRowStyle BackColor="White" ForeColor="#17a2b8" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:TemplateField>
                    
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="ID" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="ename" HeaderText="Name" SortExpression="ename" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="mssg" HeaderText="Message" SortExpression="mssg" />
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
            <EditRowStyle BackColor="#c9c7c7" />
            <FooterStyle BackColor="#17a2b8" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#17a2b8" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#17a2b8" ForeColor="White" HorizontalAlign="Center" />
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



