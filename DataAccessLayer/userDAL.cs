using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppProps;

namespace DataAccessLayer
{
    public class userDAL
    {
        Dbcon db = new Dbcon();
        public bool registerUser(user u)
        {
            string qry = "INSERT INTO Registration (Name, Email, Username, Password)  VALUES ( '" + u.Name + "','"+ u.Email +"', '"+ u.Username +"', '"+ u.Password +"')";
            return db.UDI(qry);
        }
        public DataTable LoginUser(user u)
        {
            string qry = "Select * from Registration where Username = '" + u.Username +"'";
            return db.Search(qry);
        }
    }
}
