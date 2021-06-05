<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ShoppingCartProduct.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
     <h1 class="text-center focus">Library Login</h1>
    <form id="form1" runat="server">
        <table class="table  text-center">
            <tr>
                <td>
                    
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" placholder="Username" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <th>
                </th>
                <td>
                    <asp:TextBox ID="txtPassword" placeholder="Password" TextMode="Password" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td>

                </td>
            </tr>
            <tr class="text-center">
                <td>
                </td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary text-center" OnClick="btnLogin_Click"/>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="3"></td>
            </tr>
            <tr>
                <td colspan="3">
                </td>
            </tr>
            <tr class="text-center">
                <td>
                </td>
                <td>
                    <p class=" text-center">Register Yourself If You Are New Here.</p>
                    <asp:Button ID="Button1" runat="server" Text="Click To Register!" CssClass="btn btn-danger text-center" OnClick="Button1_Click" />
                </td>
                <td>
                </td>
            </tr>
        </table>
        </form>
</body>
</html>
