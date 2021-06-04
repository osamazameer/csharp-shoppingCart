using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using AppProps;
using DataAccessLayer;

namespace BusinessLogicLayer
{
    public class productBLL
    {
        productDAL pDAL = new productDAL();
        userDAL uDAL = new userDAL();

        public DataTable GetAllProductsBLL()
        {
            return pDAL.GellAllProductsDAL();
        }
        public DataTable SearchProductsBLL(product p)
        {
            return pDAL.SearchProductsDAL(p);
        }
        public DataTable ProductBLL(product p)
        {
            return pDAL.SearchProductDAL(p);
        }
        public bool InsertProductBLL(product p)
        {
            return pDAL.insertProduct(p);
        }
        
    }
}
