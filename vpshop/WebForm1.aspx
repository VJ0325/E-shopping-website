<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="vpshop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>VP Shopping</title>

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
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron text-center" style="margin-bottom: 0; background-color:#DD5E89">
            <h1>VP Fashion</h1>
            <p>Stylish Solutions For Every Occassion..</p>
        </div>

        <nav class="navbar navbar-expand-md navbar-dark fixed-middle bg-dark">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    
                    <li class="nav-item active">
                        <a class="nav-link" href="WebForm1.aspx">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li>
                        <a class="nav-link" href="SignUp.aspx"><span class="glyphicon glyphicon-log-in"></span> SignUp</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="About.aspx">About <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="ContactUs.aspx">Contact <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Blog <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Products<span class="sr-only">(current)</span></a>
                    </li>
                                        
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Admin/AdminLogin.aspx"><span class="glyphicon glyphicon-log-in"></span>Admin Login</a>
                        <a class="nav-link" href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a>
                        
                        
                    </li>
                </ul>
            </div>
        </nav>

        <style>
            .carousel {
                margin-top:auto;
                margin-bottom: 4rem;

            }
            /* Since positioning the image, we need to help out the caption */
            .carousel-caption {
                bottom: 3rem;
                z-index: 10;
            }

            /* Declare heights because of positioning of img element */
            .carousel-item {
                height: 32rem;
                background-color: #777;
            }

                .carousel-item > img {
                    position: absolute;
                    top: 0;
                    left: 0;
                    min-width: 100%;
                    height: 32rem;
                }
            
        </style>
        <div class="container"  >
            <div class="row">
                <div class="col-sm-8">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" >
                        <!--For Indicators-->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>
                 
                        <!--wrapper for slide -->
                        <div class="carousel-inner" role="listbox" >
                            <div class="carousel-item active" >
                                <img src="Img/download.jpg" alt="Image" height="500" width="500">
                                <div class="container">
                                    <div class="carousel-caption text-left">
                                        <h3>Sale is Live</h3>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="Img/d2.jpg" alt="Image"  width="500" height="350">
                                <div class="container">
                                    <div class="carousel-caption">
                                        <h3>Clothes</h3>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="Img/d3.jpg" alt="Image" width="500" height="350">
                                <div class="container">
                                    <div class="carousel-caption text-right">
                                        <h3>Biggest Offer</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                  
                </div>
            
        </div>
        <div class="container text-center">
            <h3> Products</h3>
            <br>
            <div class="row">
                <div class="col-sm-3">
                    <img src="Img/p4.jpg" class="img-responsive" style="width:100%"
                        alt="Image"
                        <p>
                            One Piece</p>
                    </div>
                <div class="col-sm-3">
                    <img src="Img/p5.jpg" class="img-responsive" style="width:100%" alt="Image">
                    <p> Long Dress </p>
                    
                </div>
                <div class="col-sm-3">
                    <div class="well">
                        <p>
                            Sales Price..</p>
                        </div>
                    <div class="well">
                        <p>
                            Discount..</p>
                        </div>
                    </div>
                <div class="col-sm-3">
                    <div class="well">
                        <p>
                            Purchase Price..</p>
                        </div>
                    <div class="well">
                        <p>
                            Reviews..</p>
                        </div>
                        
                    </div>
                        
                    </div>
                </div>
           
        
        <div class="container text-center">
            <h4> Our Another Products</h4>
            <br>
            <div class="row">

        <div class="col-sm-2">
            <img src="Img/p6.jpg" class="img-responsive" style="width:100%" alt="Image">
            <p> Dress </p>

        </div>
         <div class="col-sm-2">
            <img src="Img/P1.jpg" class="img-responsive" style="width:100%" alt="Image">
            <p> One Piece </p>
             </div>
        <div class="col-sm-2">
            <img src="Img/P2.jpg" class="img-responsive" style="width:100%" alt="Image">
            <p> Lehanga </p>
             </div>
        <div class="col-sm-2">
            <img src="Img/p3.jpg" class="img-responsive" style="width:100%" alt="Image">
            <p> Saree </p>
             </div>
        
        <div class="col-sm-2">
            <img src="Img/p4.jpg" class="img-responsive" style="width:100%" alt="Image">
            <p> Long Dress </p>
             </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <footer class="container-fluid text-center jumbotron">
        <p>&copy2023 VP Shopping | All Rights Reserved</p>
    </footer>

    </form>
</body>
</html>
