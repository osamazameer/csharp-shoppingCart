<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="ShoppingCartProduct.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 class="text-center focus">NUML GPA CALCULATOR</h1>
    <form id="form1" runat="server">
        <table class="table  text-center">
            <tr>
                <th>
                    <label class="form-control text-right">Name :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Email :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">UserName :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtusername"  runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Password :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr class="text-center">
                <td>
                </td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register Me!" CssClass="btn btn-danger text-center" OnClick="btnRegister_Click" />
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
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-info text-center" />
                </td>
                <td>
                </td>
            </tr>
        </table>
        </form>
</body>
</html>
