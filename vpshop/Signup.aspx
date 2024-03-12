<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="vpshop.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>

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
         margin-left: 24px;
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
                        <a class="nav-link" href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a>
                    </li>
                </ul>
            </div>
        </nav><br/>

        <div class="container">
        <div class="col-sm-3"> </div>
        <div class="col-sm-6">
            <div class="panel panel-primary">
            <div class="panel-heading"><center style="height: 34px"><b>SIGN UP!!</b></center></div><br />
            <div class="panel-body">
            <div class="row">
            <div class="col-sm-12">
                <div class="form-group">
                <label>Name:</label>
                <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
                <div class="form-group">
                <label>Surname:</label>
                <asp:TextBox ID="txtSurname" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
                <div class="form-group">
                <label>Address:</label>
                <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
                <div class="form-group">
                <label>City:</label>
                <asp:TextBox ID="txtCity" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
                <div class="form-group">
                <label>Pincode:</label>
                <asp:TextBox ID="txtPincode" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
                <div class="form-group">
                <label>Mobile No:</label>
                <asp:TextBox ID="txtMobileNo" CssClass="form-control" runat="server" TextMode="Number" ValidateRequestMode="Inherit"></asp:TextBox>
            </div>
                <div class="form-group">
                <label>EmailID:</label>
                <asp:TextBox ID="txtEmailid" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Gender:</label>
                <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Male" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label>Password:</label>
                <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </div>
                <div class="form-group">
                <label>Create Date:</label>
                <asp:TextBox ID="txtDate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSignUp" CssClass="btn btn-success" runat="server" Text="Registration" OnClick="btnSignUp_Click" Height="33px" Width="148px"/>
            &nbsp;
                <asp:Button ID="btnCancel" CssClass="btn btn-danger" runat="server" Text="Cancel" Height="34px" Width="118px"/>
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
