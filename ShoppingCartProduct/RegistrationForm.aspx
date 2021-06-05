<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="ShoppingCartProduct.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 260px;
        }
    </style>
</head>
<body>
    <h1 class="text-center focus">Library</h1>
    <form id="form1" runat="server">
        <table class="table  text-center">
            <tr>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="txtName" placeholder="Name" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                </td>
                
            </tr>
            <tr>
                <td >
                </td>
                <td>
                    <asp:TextBox ID="txtusername" placeholder="UserName" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPassword" placeholder="Password" TextMode="Password" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td></td>
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
                <td class="auto-style1">
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
