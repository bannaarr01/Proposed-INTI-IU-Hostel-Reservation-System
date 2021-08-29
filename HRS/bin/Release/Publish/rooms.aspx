<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rooms.aspx.cs" Inherits="HRS.rooms" %>

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
            <li class="nav-item active">
             <asp:HyperLink ID="hnlinkRooms" CssClass="nav-link" runat="server" NavigateUrl="~/rooms.aspx">Rooms</asp:HyperLink>
        </li>
        <li class="nav-item">
            <asp:HyperLink ID="hnlinkFaq" CssClass="nav-link" runat="server" NavigateUrl="~/faq.aspx">Contact</asp:HyperLink>
        </li>
           <li class="nav-item">
                <asp:HyperLink ID="hnlinkAbout" CssClass="nav-link" runat="server" NavigateUrl="~/about.aspx">About</asp:HyperLink>   
        </li>
          </ul>
         <ul class="navbar-nav ml-3">
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
  </nav>

        <section id="top"></section>
 

<div class="container py-5 mt-5">
    <div class="alert-info mb-1 col-md-4 ml-5 pr-5 mx-auto">
    <asp:Label ID="lblMssg" runat="server" Text="" ForeColor="#444" Visible="false" Font-Size="Larger"></asp:Label>
        </div>
  <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
      <asp:Button
        ID="btnNext1"
        runat="server" CausesValidation="false"
        CssClass="btn btn-outline-danger btn-lg mr-3"
        Font-Size="Larger"
        style="float: right"
        Text="Next"
        CommandName="NextView"
      />
      <!-- SERVICES SECTION -->

      <section id="services">
        <div class="container">
          <div class="card border-danger my-5">
            <div class="card-header bg-danger">
              <h3 class="text-white">Single Rooms [Make Selections To Check Price Before Booking]</h3>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-6 mt-4">
                  <div class="card text-center">
                    <div class="card-body">
                      <img src="img/accomodation.png" class="img-fluid" />
                      <h4 class="card-title mt-2">Clean and Well Ventilated</h4>
                      <p class="card-text display-6">
                        Each hall of residence is assigned with one security
                        guard at all times.
                      </p>
                      <p class="card-text display-6">
                        There are coin-operated washing machines and dryers in
                        every hall of residence.
                      </p>
                      <br />
                        <asp:RequiredFieldValidator ID="rfSingleRoomAir" CssClass="alert-danger" ErrorMessage="Please select one.<br />"
                         ControlToValidate="rdoType" runat="server" ForeColor="Red" Font-Size="Larger" Display="Dynamic" />
                      <asp:RadioButtonList
                        ID="rdoType"
                        RepeatDirection="Horizontal"
                        runat="server"
                      >
                        <asp:ListItem
                          >&nbsp; Air-Conditioned&nbsp;&nbsp;</asp:ListItem
                        >
                        <asp:ListItem>&nbsp; Non-Air-Conditioned</asp:ListItem>
                      </asp:RadioButtonList>
                        <asp:Button ID="btnCheckSingleRoom" runat="server" OnClick="btnCheckSingleRoom_Click" CssClass="btn btn-outline-danger btn-block mt-2" Text="Check Price" />
                    </div>
                  </div>
                </div>
                <div class="col-md-6 pt-0">
                  <div class="card-body">
                    <p class="card-text"></p>
                    <ul class="list-group">
                      <li class="list-group-item">
                           <h5>Halls Of Residence</h5>
                          <asp:RequiredFieldValidator ID="rfloc1" ErrorMessage="Please select Hall.<br />"
                         ControlToValidate="rdoLocation" runat="server" ForeColor="Red" Font-Size="Larger" CssClass="alert-danger" Display="Dynamic" />
                        <asp:RadioButtonList ID="rdoLocation" runat="server">
                          <asp:ListItem>&nbsp;Gandhi</asp:ListItem>
                          <asp:ListItem>&nbsp;Heisenberg</asp:ListItem>
                          <asp:ListItem>&nbsp;Jenner</asp:ListItem>
                          <asp:ListItem>&nbsp;Keynes</asp:ListItem>
                          <asp:ListItem>&nbsp;Lincoln</asp:ListItem>
                          <asp:ListItem>&nbsp;Mendel</asp:ListItem>
                        </asp:RadioButtonList>
                      </li>

                      <li class="list-group-item">
                           <asp:RequiredFieldValidator ID="rfses1" CssClass="alert-danger" ErrorMessage="Please select Session.<br />"
                         ControlToValidate="rdoSession" runat="server" ForeColor="Red" Font-Size="Larger" Display="Dynamic" />
                        <asp:RadioButtonList ID="rdoSession" runat="server">
                          <asp:ListItem
                            >&nbsp;FOUND/DIP/DEG/AUP (May/July) &nbsp;&nbsp;CBS
                            (Jan) &nbsp;LEP (Jan/Mar/May/Aug/Oct)&nbsp;&nbsp;MPU
                            (Mar/Oct)
                          </asp:ListItem>
                          <asp:ListItem
                            >&nbsp;FOUND/DIP (Apr) &nbsp; A-LEVEL
                            (Mar)</asp:ListItem
                          >
                          <asp:ListItem
                            >&nbsp;FOUND/DIP/DEG/AUP (Jan/Mar/Aug/Sep)
                            &nbsp;&nbsp;MBA (Jan/May/Sep) &nbsp; CBS (Apr/Aug)
                          </asp:ListItem>
                          <asp:ListItem
                            >&nbsp;PHYSIOTHERAPY/TCM (Jan/July) &nbsp;&nbsp;SACE
                            (Jan/Jul) &nbsp; A-LEVEL (Jan/Jul)
                          </asp:ListItem>
                          <asp:ListItem>&nbsp;SACE (Apr/Oct)</asp:ListItem>
                        </asp:RadioButtonList>
                      </li>
                    </ul>
                      <asp:Button ID="btnBookSingleRoom" runat="server" OnClick="btnBookSingleRoom_Click" CssClass="btn btn-danger btn-block mt-2" Text="Book Now" />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </asp:View>

    <%-- VIEW 2--%>

    <asp:View ID="View2" runat="server">
      <asp:Button
        ID="btnPrev1"
        runat="server" CausesValidation="false"
        CssClass="btn btn-outline-danger btn-lg ml-3"
        Font-Size="Larger"
        style="float: left"
        Text="Prev"
        CommandName="PrevView"
      />
      <asp:Button
        ID="btnNext2"
        runat="server" CausesValidation="false"
        CssClass="btn btn-outline-danger btn-lg mr-3"
        Font-Size="Larger"
        style="float: right"
        Text="Next"
        CommandName="NextView"
      />
      <section id="services2">
        <div class="container">
          <div class="card border-danger my-5">
            <div class="card-header bg-danger">
              <h4 class="text-white">Twin Sharing Rooms [Make Selections To Check Price Before Booking]</h4>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-6 mt-4">
                  <div class="card text-center">
                    <div class="card-body">
                      <img src="img/twinroom.jpg" class="img-fluid" />
                      <h4 class="card-title mt-2">Spacious, Clean and Well Ventilated</h4>
                      <p class="card-text display-6">
                        Each hall of residence is assigned with one security
                        guard at all times.
                      </p>
                      <p class="card-text display-6">
                        There are coin-operated washing machines and dryers in
                        every hall of residence.
                      </p>
                      <br />
                        <asp:Button ID="btnCheckTwinRoom" runat="server" OnClick="btnCheckTwinRoom_Click"  CssClass="btn btn-outline-danger btn-block mt-2" Text="Check Price" />
                    
                    </div>
                  </div>
                </div>
                <div class="col-md-6 pt-0 py-0">
                  <div class="card-body">
                    <ul class="list-group">

                        <li class="list-group-item">
                             <h5>Halls Of Residence </h5>
                            <asp:RequiredFieldValidator ID="rfloc2" ErrorMessage="Please select Hall.<br />"
                         ControlToValidate="rdoLocation2" runat="server" ForeColor="Red" Font-Size="Larger" CssClass="alert-danger" Display="Dynamic" />
                             <asp:RadioButtonList ID="rdoLocation2" runat="server">
                          <asp:ListItem>&nbsp;Darwin,E,F,N,P,R (Non-Air-Conditioned)</asp:ListItem>
                          <asp:ListItem>&nbsp;Aristotle,E,F,S,R (Air-Conditioned)</asp:ListItem>
                          <asp:ListItem>&nbsp;Rahmanputra Ground Floor (Non-Air-Conditioned)</asp:ListItem>
                          <asp:ListItem>&nbsp;Pasteur Ground Floor (Air-Conditioned)</asp:ListItem>
                        </asp:RadioButtonList>
                        </li>

                      <li class="list-group-item">
                          <asp:RequiredFieldValidator ID="rfSes2" CssClass="alert-danger" ErrorMessage="Please select Session.<br />"
                         ControlToValidate="rdoSession2" runat="server" ForeColor="Red" Font-Size="Larger" Display="Dynamic" />
                        <asp:RadioButtonList ID="rdoSession2" runat="server">
                          <asp:ListItem
                            >&nbsp;FOUND/DIP/DEG/AUP (May/July) &nbsp;&nbsp;CBS
                            (Jan) &nbsp;LEP (Jan/Mar/May/Aug/Oct)&nbsp;&nbsp;MPU
                            (Mar/Oct)
                          </asp:ListItem>
                          <asp:ListItem
                            >&nbsp;FOUND/DIP (Apr) &nbsp; A-LEVEL
                            (Mar)</asp:ListItem
                          >
                          <asp:ListItem
                            >&nbsp;FOUND/DIP/DEG/AUP (Jan/Mar/Aug/Sep)
                            &nbsp;&nbsp;MBA (Jan/May/Sep) &nbsp; CBS (Apr/Aug)
                          </asp:ListItem>
                          <asp:ListItem
                            >&nbsp;PHYSIOTHERAPY/TCM (Jan/July) &nbsp;&nbsp;SACE
                            (Jan/Jul) &nbsp; A-LEVEL (Jan/Jul)
                          </asp:ListItem>
                          <asp:ListItem>&nbsp;SACE (Apr/Oct)</asp:ListItem>
                        </asp:RadioButtonList>
                      </li>
                    </ul>
                       <asp:Button ID="btnBookTwinRoom" runat="server" OnClick="btnBookTwinRoom_Click" CssClass="btn btn-danger btn-block mt-2" Text="Book Now" />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <%-- VIEW 3--%>
    </asp:View>
    <asp:View ID="View3" runat="server">
      <asp:Button
        ID="btnPrev2"
        runat="server" CausesValidation="false"
        CssClass="btn btn-outline-danger btn-lg ml-3"
        Font-Size="Larger"
        style="float: left"
        Text="Prev"
        CommandName="PrevView"
      />
      <asp:Button
        ID="btnNext3"
        runat="server" CausesValidation="false"
        CssClass="btn btn-outline-danger btn-lg mr-3"
        Font-Size="Larger"
        style="float: right"
        Text="<<"
        CommandName="SwitchViewByIndex"
        CommandArgument="0"
      />
      <section id="services3">
        <div class="container">
          <div class="card border-danger my-5">
            <div class="card-header bg-danger">
              <h5 class="text-white">Rooms with Attached Bathroom [Make Selections To Check Price Before Booking]</h5>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-6 mt-4">
                  <div class="card text-center">
                    <div class="card-body">
                      <img src="img/attachbathroom.jpg" class="img-fluid" />
                      <h4 class="card-title mt-2">Classic, Spacious, Clean and Well Ventilated</h4>
                      <p class="card-text display-6">
                        Each hall of residence is assigned with one security
                        guard at all times.
                      </p>
                      <p class="card-text display-6">
                        There are coin-operated washing machines and dryers in
                        every hall of residence.
                      </p>
                      <br />
                      <%--<asp:RadioButtonList
                        ID="rdoType3"
                        RepeatDirection="Horizontal"
                        runat="server"
                      >
                        <asp:ListItem
                          >&nbsp; Air-Conditioned&nbsp;&nbsp;</asp:ListItem
                        >
                        <asp:ListItem>&nbsp; Non-Air-Conditioned</asp:ListItem>
                      </asp:RadioButtonList>--%>
                         <asp:Button ID="btnCheckAttachBathRoom" runat="server" OnClick="btnCheckAttachBathRoom_Click"  CssClass="btn btn-outline-danger btn-block mt-2" Text="Check Price" />
                    </div>
                  </div>
                </div>
                <div class="col-md-6 pt-0">
                  <div class="card-body">
                    <p class="card-text"></p>
                    <ul class="list-group">
                      <li class="list-group-item">
                           <h5>Halls Of Residence [Beethoven/Confucius/Einstein]</h5>
                          <asp:RequiredFieldValidator ID="rftyp" ErrorMessage="Please select Room Type.<br />"
                         ControlToValidate="rdoLocation3" runat="server" ForeColor="Red" Font-Size="Larger" CssClass="alert-danger" Display="Dynamic" />
                        <asp:RadioButtonList ID="rdoLocation3" runat="server">
                          <asp:ListItem>&nbsp;Superior Single (Air-conditioned)</asp:ListItem>
                          <asp:ListItem>&nbsp;Superior Twin-sharing (Air-conditioned)</asp:ListItem>
                          <asp:ListItem>&nbsp;Standard Twin-Sharing (Air-conditioned)</asp:ListItem>
                          <asp:ListItem>&nbsp;Superior Triple-Sharing (Air-conditioned)</asp:ListItem>
                        </asp:RadioButtonList>
                      </li>

                      <li class="list-group-item">
                          <asp:RequiredFieldValidator ID="rfSes3" CssClass="alert-danger" ErrorMessage="Please select Session.<br />"
                         ControlToValidate="rdoSession3" runat="server" ForeColor="Red" Font-Size="Larger" Display="Dynamic" />
                        <asp:RadioButtonList ID="rdoSession3" runat="server">
                          <asp:ListItem
                            >&nbsp;FOUND/DIP/DEG/AUP (May/July) &nbsp;&nbsp;CBS
                            (Jan) &nbsp;LEP (Jan/Mar/May/Aug/Oct)&nbsp;&nbsp;MPU
                            (Mar/Oct)
                          </asp:ListItem>
                          <asp:ListItem
                            >&nbsp;FOUND/DIP (Apr) &nbsp; A-LEVEL
                            (Mar)</asp:ListItem
                          >
                          <asp:ListItem
                            >&nbsp;FOUND/DIP/DEG/AUP (Jan/Mar/Aug/Sep)
                            &nbsp;&nbsp;MBA (Jan/May/Sep) &nbsp; CBS (Apr/Aug)
                          </asp:ListItem>
                          <asp:ListItem
                            >&nbsp;PHYSIOTHERAPY/TCM (Jan/July) &nbsp;&nbsp;SACE
                            (Jan/Jul) &nbsp; A-LEVEL (Jan/Jul)
                          </asp:ListItem>
                          <asp:ListItem>&nbsp;SACE (Apr/Oct)</asp:ListItem>
                        </asp:RadioButtonList>
                      </li>
                    </ul>
                       <asp:Button ID="btnBookAttachBathRoom" runat="server" OnClick="btnBookAttachBathRoom_Click" CssClass="btn btn-danger btn-block mt-2" Text="Book Now" />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </asp:View>
  </asp:MultiView>
</div>

























<!--  FOOTER  -->
<footer id="main-footer" class="text-center p-4 ">
<div class="container">
  <div class="row">
    <div class="col">
      <a href="#top">
<img src="./img/logoo.png" class="mt-2 ml-5" style="height:45px; width:180px" alt=""></a>
<a class="navbar-brand mt-2 ml-3" href="#top" style="font-family: monospace;  font-size: x-large; font-weight:bolder; color:black">HOSTEL</a>
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
