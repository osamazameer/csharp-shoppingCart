using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppProps;
using DataAccessLayer;
using System.Data;

namespace BusinessLogicLayer
{
    public class userBLL
    {
        userDAL uDAL = new userDAL();

        public bool RegistrationUserBLL(user u)
        {
            return uDAL.registerUser(u);
        }
        public DataTable LoginUserBLL(user u)
        {
            return uDAL.LoginUser(u);
        }
    }
}
