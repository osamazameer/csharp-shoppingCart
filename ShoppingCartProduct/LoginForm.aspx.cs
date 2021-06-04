using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppProps;
using BusinessLogicLayer;
using System.Data;

namespace ShoppingCartProduct
{
    public partial class LoginForm : System.Web.UI.Page
    {
        user u = new user();
        userBLL uBLL = new userBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationForm.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            u.Username = txtUsername.Text;
            u.Password = txtPassword.Text;
            DataTable dt = uBLL.LoginUserBLL(u);
            if (dt != null)
            {
                if (txtPassword.Text.Equals(dt.Rows[0]["Password"].ToString()))
                {
                    Session["username"] = txtUsername.Text;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Password');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Not Registered');</script>");
            }
        }
    }
}