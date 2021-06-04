using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppProps;
using System.Data;

namespace DataAccessLayer
{
    public class productDAL
    {
        Dbcon db = new Dbcon();
        public DataTable GellAllProductsDAL()
        {
            string qry = "Select * from products";
            return db.Search(qry);
        }
        public DataTable SearchProductsDAL(product p)
        {
            string qry = "Select * from products where Name ='"+ p.Name +"'";
            return db.Search(qry);
        }
        public DataTable SearchProductDAL(product p)
        {
            string qry = "Select * from products where Id ='"+ p.Id +"'";
            return db.Search(qry);
        }
        
        public bool insertProduct(product p)
        {
            string qry = "Insert into Products Values ('"+ p.Name +"', '"+ p.Image +"', '"+ p.Price +"', '"+ p.Description +"' )";
            return db.UDI(qry);
        }
        public bool DeleteProduct(product p)
        {
            string qry = "Delete from products where Name = ('"+ p.Name +"')";
            return db.UDI(qry);
        }
    }
}
