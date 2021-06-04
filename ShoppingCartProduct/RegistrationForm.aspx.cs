using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppProps;
using BusinessLogicLayer;

namespace ShoppingCartProduct
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        user u = new user();
        userBLL uBLL = new userBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            u.Name = txtName.Text;
            u.Email = txtEmail.Text;
            u.Username = txtusername.Text;
            u.Password = txtPassword.Text;
            if(uBLL.RegistrationUserBLL(u))
            {
                Response.Write("<script>alert('Registered')</script>");
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }
        }
    }
}