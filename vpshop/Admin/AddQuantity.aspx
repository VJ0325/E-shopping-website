<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddQuantity.aspx.cs" Inherits="vpshop.Admin.AddQuantity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Quantity</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
<div class="container">

    <div class="row">
        <div class="col-sm-3">
            <div class="form-group">
                <label>ItemName:</label>
                <asp:DropDownList ID="ddlItemName" CssClass="form-control" runat="server"></asp:DropDownList><br/>
                <asp:Button ID="btnAddQuantity" CssClass="btn btn-success" runat="server" Text="ADD" Width="150px" OnClick="btnAddQuantity_Click" />
            </div>
           </div>

        <div class="col-sm-2">
            <div class="form-group">
                <label>Qty:</label>
                <asp:TextBox ID="txtQty" CssClass="form-group" runat="server"></asp:TextBox><br/>
                </div>
         </div>

     </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="table table-responsive">
                <asp:GridView ID="GridView1" Caption="Add Quantity Record" CssClass="table" runat="server" AutoGenerateColumns="False">
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:vpshopcon %>" SelectCommand="SELECT * FROM [ItemMst]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

            </div>
        </div>
    </div>
</div>
</asp:Content>
