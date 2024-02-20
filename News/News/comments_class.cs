using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace News
{
    public class comments_class
    {
        public int insertcomment(string comment, string u_name, int new_id)
        {
            int rowaffected = 0;
            int result = 0;
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("comment",comment),
                new SqlParameter("username",u_name),
                new SqlParameter("newsid",new_id)
            };
            result = dbo.runprocedure("sp_insertcomment", parameters, rowaffected);
            return result;
        }
        public DataTable showcomments(int newsid)
        {
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("newsid",newsid)
            };
            return dbo.runprocedure("sp_selectallcommentbyid", parameters);
        }
        public DataTable selectallcomments()
        {
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
            };
            return dbo.runprocedure("sp_selectallcomment", parameters);
        }
        public int deletecomments(int commentid)
        {
            int rowaffected = 0;
            int result = 0;
            dbconnect dbo = new dbconnect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("commentid",commentid)
            };
            result = dbo.runprocedure("sp_deletecomment", parameters, rowaffected);
            return result;
        }
    }
}