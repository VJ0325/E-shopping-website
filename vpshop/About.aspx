<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="vpshop.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>About me Page</title>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <style>
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }

        .Carousel-inner img {
            width: 100%; /* Set width to 100%*/
            min-height: 200px;
        }


        @media (max-width: 600px) {
            .carousel-caption {
                display: none;
            }
        }
        .btn-danger {
            margin-left: 41px;
        }
        .btn-success {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- Container (About Section) -->
<div class="container-fluid">
  <div class="row">

    <div class="col-sm-8">
      <h2>About Company Page</h2>
        <asp:Panel ID="Panel1" runat="server" Height="28px" style="margin-left: 684px; margin-top: 0px">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Img/About-Us_Banner_Mobile15Apr2019211123.gif" />
        </asp:Panel>
      <p style="width: 675px">I am geek at heart that loves to learn and play with new technologies. I am grounded with solid object oriented programming principles, but spread my wings across most of the Microsoft product stack: from ASP.NET MVC, WCF, Windows forms, Silverlight, Business Intelligence, PerformancePoint Services, VSTO to SharePoint.</p>
      
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-8">
      <h4><strong>MISSION:</strong> Our mission lorem ipsum..</h4>      
        <p><strong>VISION:</strong> Our vision Lorem ipsum.</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </div>
  </div>
</div>

<!-- Container (Services Section) -->
<div class="container-fluid text-center">
  <h2>SERVICES</h2>
  <h4>What we offer</h4>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-off logo-small"></span>
      <h4>POWER</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-heart logo-small"></span>
      <h4>LOVE</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small"></span>
      <h4>JOB DONE</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
  </div>
  <br><br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-leaf logo-small"></span>
      <h4>GREEN</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small"></span>
      <h4>CERTIFIED</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
      <h4 style="color:#303030;">HARD WORK</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
  </div>
    </div>
</asp:Content>
