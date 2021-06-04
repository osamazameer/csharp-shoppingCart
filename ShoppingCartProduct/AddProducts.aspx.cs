using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppProps;
using DataAccessLayer;

namespace ShoppingCartProduct
{
    public partial class AddProducts : System.Web.UI.Page
    {
        product p = new product();
        productDAL DAL = new productDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsertProduct_Click(object sender, EventArgs e)
        {
            p.Name = txtName.Text;
            p.Image = (txtImage.Text + ".jpg");
            string location = @"F:\workstuff\Muneeb bc\Shopping-Cart-Asp.net\ShoppingCartProduct\Images\";
            string path = System.IO.Path.Combine( location , p.Image);
            p.Price = Convert.ToInt32(txtPrice.Text);
            p.Description = txtDes.Text;
            FileUpload1.SaveAs(path);
            if(DAL.insertProduct(p))
            {
                Response.Write("<script>alert('Added')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            p.Name = txtName.Text;
            DataTable dt = DAL.SearchProductsDAL(p);
            if(dt != null)
            {
                txtImage.Text = dt.Rows[0]["Image"].ToString();
                txtPrice.Text = dt.Rows[0]["Price"].ToString();
                txtDes.Text = dt.Rows[0]["Description"].ToString();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            p.Name = txtName.Text;
            if(DAL.DeleteProduct(p))
            {
                Response.Write("<script>alert('Deleted')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }
        }
    }
}