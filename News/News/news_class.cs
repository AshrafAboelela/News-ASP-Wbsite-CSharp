using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace News
{
    public class news_class
    {
        public int insertnews(string title, string summary, string details, string imagepath, int cat_id)
        {
            int rowaffected = 0;
            int result = 0;
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("newstitle",title),
                new SqlParameter("summary",summary),
                new SqlParameter("imagepath",imagepath),
                new SqlParameter("details",details),
                new SqlParameter("categoryid",cat_id)
            };
            result = dbo.runprocedure("sp_insertnews", parameters, rowaffected);
            return result;
        }

        public DataTable selectallnews()
        {
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
            };
            return dbo.runprocedure("sp_selectallnews", parameters);
        }

        public SqlDataReader selectallnewsbycatid(int catid)
        {
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                 new SqlParameter("catid",catid)
            };
            return dbo.Runprocedure("sp_selectallnewsbycatid", parameters);
        }

        public SqlDataReader selectallnewsbynewid(int nid)
        {
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                 new SqlParameter("newid",nid)
            };
            return dbo.Runprocedure("sp_selectallnewsbynewid", parameters);
        }

        public int deletecategory(int newsid)
        {
            int rowaffected = 0;
            int result = 0;
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("newsid",newsid)
            };
            result = dbo.runprocedure("sp_deletenews", parameters, rowaffected);
            return result;
        }

        public int updatenews(string title, string summary, string details, int newsid)
        {
            int rowaffected = 0;
            int result = 0;
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("newsid",newsid),
                new SqlParameter("newstitle",title),
                new SqlParameter("summary",summary),
                new SqlParameter("details",details)
            };
            result = dbo.runprocedure("sp_updatenews", parameters, rowaffected);
            return result;
        }
    }
}