<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Additem.aspx.cs" Inherits="vpshop.Admin.Additem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add item</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">


        <div class="col-sm-1"></div>

        <div class="col-sm-4">
            <div class="form-group">
                <label >Item Name</label>
                <asp:TextBox ID="txtItemName" CssClass="form-control" runat="server"  Width="250"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Description</label>
                <asp:TextBox ID="txtDesc"  CssClass="form-control" runat="server" Width="250" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Price</label>
                <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server" Width="180"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Quantity</label>
                <asp:TextBox ID="txtQty" CssClass="form-control" runat="server" Width="250"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Image</label>
                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" Width="250" />
            </div>
            </div>
            <div class="col-sm-2"></div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>Image1</label>
                <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" Width="250" />
            </div>

            <div class="form-group">
                <label>Image2</label>
                <asp:FileUpload ID="FileUpload3" CssClass="form-control" runat="server" Width="250" />
            </div>

            <div class="form-group">
                <label>Size</label>
                <asp:DropDownList ID="ddlSize" CssClass="form-control" runat="server" Width="250px">
                <asp:ListItem Text="select Option" Value="0"></asp:ListItem>
                <asp:ListItem Text="Small" Value="1"></asp:ListItem>
                <asp:ListItem Text="Large" Value="2"></asp:ListItem>
                <asp:ListItem Text="Medium" Value="3"></asp:ListItem>
                <asp:ListItem Text="xLarge" Value="4"></asp:ListItem>
                <asp:ListItem Text="xxLarge" Value="5"></asp:ListItem>
                <asp:ListItem Text=" 01 " Value="6"></asp:ListItem>
                <asp:ListItem Text=" 02 " Value="7"></asp:ListItem>
                <asp:ListItem Text=" 03 " Value="8"></asp:ListItem>
                <asp:ListItem Text=" 04 " Value="9"></asp:ListItem>
                <asp:ListItem Text=" 05 " Value="10"></asp:ListItem>
                <asp:ListItem Text=" 06 " Value="11"></asp:ListItem>
                <asp:ListItem Text=" 07 " Value="12"></asp:ListItem>
                <asp:ListItem Text=" 08 " Value="13"></asp:ListItem>
                <asp:ListItem Text=" 09 " Value="14"></asp:ListItem>
                <asp:ListItem Text=" 10 " Value="15"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label>Category</label>
                <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" Width="250">

                </asp:DropDownList>
            </div>

            <div class="form-group">
               <asp:Button ID="btnAddItem" CssClass="btn btn-success btn-lg" runat="server" Text="ADD ITEM" Width="160" OnClick="btnAddItem_Click" />

            </div>
        </div>

        <div class="col-sm-2"></div>
    </div>

    <div class="col-sm-2">

    </div>

    <div class="row">
    <div class="col-sm-12">
    <div class="table">
        <asp:GridView ID="GridView1" CssClass="table" runat="server"  AutoGenerateColumns="False" DataKeyNames="IID" AllowPaging="True" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IID" HeaderText="IID" InsertVisible="False" ReadOnly="True" SortExpression="IID" />
                <asp:BoundField DataField="IName" HeaderText="IName" SortExpression="IName" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                <asp:BoundField DataField="Image1" HeaderText="Image1" SortExpression="Image1" />
                <asp:BoundField DataField="Image2" HeaderText="Image2" SortExpression="Image2" />
                <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vpshopcon %>" DeleteCommand="DELETE FROM [ItemMst] WHERE [IID] = @IID" InsertCommand="INSERT INTO [ItemMst] ([IName], [Image], [Detail], [Price], [Quantity], [CName], [Image1], [Image2], [Size]) VALUES (@IName, @Image, @Detail, @Price, @Quantity, @CName, @Image1, @Image2, @Size)" SelectCommand="SELECT [IID], [IName], [Image], [Detail], [Price], [Quantity], [CName], [Image1], [Image2], [Size] FROM [ItemMst]" UpdateCommand="UPDATE [ItemMst] SET [IName] = @IName, [Image] = @Image, [Detail] = @Detail, [Price] = @Price, [Quantity] = @Quantity, [CName] = @CName, [Image1] = @Image1, [Image2] = @Image2, [Size] = @Size WHERE [IID] = @IID">
            <DeleteParameters>
                <asp:Parameter Name="IID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IName" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="Detail" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="CName" Type="String" />
                <asp:Parameter Name="Image1" Type="String" />
                <asp:Parameter Name="Image2" Type="String" />
                <asp:Parameter Name="Size" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IName" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="Detail" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="CName" Type="String" />
                <asp:Parameter Name="Image1" Type="String" />
                <asp:Parameter Name="Image2" Type="String" />
                <asp:Parameter Name="Size" Type="Int32" />
                <asp:Parameter Name="IID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <%-- <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:vpshopcon %>" SelectCommand="SELECT * FROM [ItemMst]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>

    </div>
    </div>
    </div>

</asp:Content>
