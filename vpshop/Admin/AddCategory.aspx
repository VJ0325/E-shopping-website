<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="vpshop.Admin.AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Category</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="alert">
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4">
<div class="form-group">

<label><b>Add Category</b></label><br>
<asp:TextBox ID="txtCategory" CssClass="form-control" runat="server" Width="400px"></asp:TextBox><br />
<asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="ADD" Width="180px" OnClick="btnAdd_Click1" />

</div>

</div>
<div class="col-sm-4"></div>  

</div>
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-8">
<div class="form-group">
    <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server"  AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
        
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
            <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
        </Columns>

        <HeaderStyle Backcolor="Yellow" ForeColor="Black" />

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vpshopcon %>" DeleteCommand="DELETE FROM [CateMst] WHERE [CID] = @CID" InsertCommand="INSERT INTO [CateMst] ([CName]) VALUES (@CName)" SelectCommand="SELECT [CID], [CName] FROM [CateMst]" UpdateCommand="UPDATE [CateMst] SET [CName] = @CName WHERE [CID] = @CID">
        <DeleteParameters>
            <asp:Parameter Name="CID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CName" Type="String" />
            <asp:Parameter Name="CID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
   <%--  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:vpshopcon %>" SelectCommand="SELECT * FROM [CateMst]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vpshopcon %>" SelectCommand="SELECT * FROM [ItemMst]">
    </asp:SqlDataSource>--%>
</div>

</div>

<div class="col-sm-2"></div>

</div>
</div>

</asp:Content>
