<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="ShoppingCartProduct.AddProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 class="text-center focus">Insert Products</h1>
    <form id="form1" runat="server">
        <table class="table  text-center">
            <tr>
                <th>
                    <label class="form-control text-right">Name :</label>
                </th>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="BtnSearch" runat="server" Text="Search" OnClick="BtnSearch_Click" />
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Image Name :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtImage" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right"> Upload :</label>
                </th>
                <td colspan="2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Price :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtPrice" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Description :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtDes" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr class="text-center">
                <td>
                </td>
                <td>
                    <asp:Button ID="btnInsertProduct" runat="server" Text="Add" CssClass="btn btn-danger text-center" OnClick="btnInsertProduct_Click" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                </td>
                <td>
                </td>
            </tr>
            <tr class="text-center">
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr><tr class="text-center">
                <td>
                </td>
                <td>
                    <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn btn-info text-center" OnClick="btnBack_Click"/>
                </td>
                <td>
                </td>
            </tr>
        </table>
        </form>
</body>
</html>
