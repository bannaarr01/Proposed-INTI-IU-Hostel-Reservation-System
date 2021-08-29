<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faq2.aspx.cs" Inherits="HRS.faq2" %>
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
    <style>
        html, body{ background-color: #f8f9fa;}
    </style>
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
                    <i class="fas fa-user">Welcome ADMIN (<%=Session["fName"].ToString() %>)</i>
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

                    <header id="main-header" class="py-3 mt-5 bg-warning text-white" >
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6">
                          <h2>

                            <i class="fa fa-question-circle fa-2x mt-2" aria-hidden="true"></i><i class="fa fa-question-circle fa-sm " aria-hidden="true"></i><span style="font-family: Georgia, 'Times New Roman', Times, serif;"> FAQ</span></h2>
                        </div>
                      </div>
                    </div>
                  </header>


        <section id="search" class="py-4 mb-4 bg-light">
    <div class="container">
      <div class="row">
          <div>
          <%-- <asp:HyperLink ID="hlnBack" runat="server" CssClass="btn btn-outline-warning btn-block" Style="float: right; margin-right: 50px"
            Visible="false"
            NavigateUrl="~/faq2.aspx"><i class="fas fa-arrow-left"></i>Go Back</asp:HyperLink>--%>
               <asp:HyperLink ID="hlnBack" runat="server" Visible="false" CssClass="btn btn-outline-warning btn-block" Font-Size="Larger" NavigateUrl="~/faq2.aspx"><i class="fas fa-arrow-left"></i>Go Back</asp:HyperLink>
            
              </div>
            <div style="float:left">
            <asp:HyperLink ID="hnlBack1" runat="server" CssClass="btn btn-light btn-block" Font-Size="Larger" NavigateUrl="~/siteAdmin.aspx"><i class="fas fa-arrow-left"></i>Back To Dashboard</asp:HyperLink>
            
        </div>
      <div class="col-md-6 ml-auto">
        
          <div class="input-group">
              <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control form-control-lg" placeholder="Search Qestion...."></asp:TextBox>
              <div class="input-group-apend">
                  <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" CssClass="btn btn-warning btn-lg text-white" Text="Search" />
                  <asp:Label ID="lblResult" runat="server" Text="" Visible="false"></asp:Label>
              </div>
          </div>

      </div>
      </div>
    </div>
  </section>

      

        <section id="posts">
    <div class="container">
        <h6 class="text-center mb-3">
     <%--  <asp:Label ID="lblMssg" runat="server" CssClass="alert"  Text="" ForeColor="white" BackColor="#28a745" Font-Size="Larger"></asp:Label>--%>
          </h6>
         <div>
            <table id="editing" runat="server" class="table display-5" style="background-color:#C2A47B">

                <tr>
                    <td>Q&amp;A ID</td>
                    <td>
                        <asp:TextBox ID="txtQAID" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Question</td>
                    <td>
                        <asp:TextBox ID="txtQuestion" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td>
                        <asp:TextBox ID="txtAnswer" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <div class="form-row">
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-secondary btn-secondary btn-block text-white" OnClick="btnSave_Click"  />
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-secondary btn-lg btn-block text-white" OnClick="btnUpdate_Click" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-secondary btn-lg btn-block text-white" OnClick="btnDelete_Click" />
                            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary btn-lg btn-block text-white" OnClick="btnClear_Click" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSuccess" runat="server" Font-Bold="True" ForeColor="Green" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red" />
                    </td>
                </tr>
            </table>
            <br />
            <%-- Making table run at server We can use Label if not editable and textbox to be editable--%>
            <table id="result" runat="server" class="table table-hover table-warning display-5">
                <tr>
                    <td>Q&amp;A ID</td>
                    <td class="auto-style1">&nbsp;<asp:Label ID="lblQAID" runat="server" /></td>
                </tr>
                <tr>
                    <td>Question</td>
                    <td>&nbsp;<asp:Label ID="lblQuestion" runat="server" /></td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td>&nbsp;<asp:Label ID="lblAnswer" runat="server" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" TextMode="MultiLine" CssClass="btn btn-warning btn-block btn-lg text-white" Text="Edit" OnClick="btnEdit_Click" />
                   </td>
                </tr>
            </table>
                   

        </div>

    </div>
</section>


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

     




    </script>

    </form>
</body>
</html>


