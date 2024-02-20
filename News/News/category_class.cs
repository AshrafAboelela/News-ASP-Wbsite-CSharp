using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace News
{
    public class category_class
    {
        public int insertcategory(string categoryname)
        {
            int rowaffected = 0;
            int result = 0;
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("categoryname",categoryname)
            };
            result = dbo.runprocedure("sp_insertcategory", parameters, rowaffected);
            return result;
        }

        public DataTable selectallcategory()
        {
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
            };
            return dbo.runprocedure("sp_selectallcategory",parameters);
        }

        public int updatecategory(int catid,string categoryname)
        {
            int rowaffected = 0;
            int result = 0;
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("categoryid",catid),
                new SqlParameter("categoryname",categoryname)
            };
            result = dbo.runprocedure("sp_updatecategory", parameters, rowaffected);
            return result;
        }

        public int deletecategory(int catid)
        {
            int rowaffected = 0;
            int result = 0;
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("categoryid",catid)
            };
            result = dbo.runprocedure("sp_deletecategory", parameters, rowaffected);
            return result;
        }
    }
}