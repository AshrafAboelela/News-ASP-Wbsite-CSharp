using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace News
{
    public class users_class
    {
        public int insertusers(int role_id, string user, string pass, string mail)
        {
            int rowaffected = 0;
            int result = 0;
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("roleid",role_id),
                new SqlParameter("username",user),
                new SqlParameter("password",pass),
                new SqlParameter("email",mail)
            };
            result = dbo.runprocedure("sp_insertuser", parameters, rowaffected);
            return result;
        }

        public int updateusers(int userid, string user, string pass, string mail)
        {
            int rowaffected = 0;
            int result = 0;
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("userid",userid),
                new SqlParameter("username",user),
                new SqlParameter("password",pass),
                new SqlParameter("email",mail)
            };
            result = dbo.runprocedure("sp_updateuser", parameters, rowaffected);
            return result;
        }
        public int deleteuser(int userid)
        {
            int rowaffected = 0;
            int result = 0;
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
               new SqlParameter("userid",userid)
            };
            result = dbo.runprocedure("sp_deleteuser", parameters, rowaffected);
            return result;
        }
        public DataTable selectallusers()
        {
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
            };
            return dbo.runprocedure("sp_selectallusers", parameters);
        }

        public DataTable selectallusersbyuserid(int usrid)
        {
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                 new SqlParameter("userid",usrid)
            };
            return dbo.runprocedure("sp_selectallusersbyid", parameters);
        }
    }
}