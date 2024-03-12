<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="vpshop.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>

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
            margin-left: 40px;
        }
        .btn-success {}
        </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron text-center" style="margin-bottom: 0; background-color:#DD5E89">
            <h1>VP Fashion</h1>
            <p>The Real Indian Online Shopping Site!!</p>
        </div>

        <nav class="navbar navbar-expand-md navbar-dark fixed-middle bg-dark">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="navbar-brand" href="WebForm1.aspx">VP Fashion</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="WebForm1.aspx">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">About <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Contact <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Blog <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Product <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="SignUp.aspx"><span class="glyphicon glyphicon-log-in"></span> SignUp</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br/>
        <div class="container">
        <div class="col-sm-3"> </div>
        <div class="col-sm-6">
            <div class="panel panel-primary">
            <div class="panel-heading"><b>LOGIN</b></></div><br/>
            <div class="panel-body">
            <div class="row">
            <div class="col-sm-12">
            <div class="form-group">
                <label>UserID:</label>
                <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Password:</label>
                <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login" Width="80px" OnClick="btnLogin_Click"/>
                <asp:Button ID="btnCancel" CssClass="btn btn-danger" runat="server" Text="Cancel" Width="81px"/>
            </div>
            
            
                </div>
            </div>
            </div>
            </div>
            <div class="panel-footer">

            </div>
            </div>

        </div>
        <div class="col-sm-3"> </div>
            <br>
    <footer class="container-fluid text-center jumbotron">
        <p>VP Fashion ..The shopping app</p>
    </footer>

        

        </form>
    </body>
    </html>
