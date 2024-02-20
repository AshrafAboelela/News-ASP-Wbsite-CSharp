using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace News
{
    public class dbconnect
    {
        SqlConnection cn;
        public dbconnect()
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["newscon"].ToString());
        }
        public SqlCommand buildquerycommand(string storedprocedure, SqlParameter[] parameters)
        {
            SqlCommand cmd = new SqlCommand(storedprocedure, this.cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            foreach(SqlParameter parameter in parameters)
            {
                cmd.Parameters.Add(parameter);
            }
            return cmd;
        }
        public int runprocedure(string storedprocedure, SqlParameter[] parameters,int result)
        {
            int rowaffected;
            SqlCommand cmd = buildquerycommand(storedprocedure, parameters);
            cn.Open();
            rowaffected = cmd.ExecuteNonQuery();
            cn.Close();
            return rowaffected;
        }
        public DataSet runprocedure(string storedprocedure, SqlParameter[] parameters, string tablename)
        {
            DataSet ds = new DataSet();
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = buildquerycommand(storedprocedure, parameters);
            da.Fill(ds, tablename);
            cn.Close();
            return ds;
        }
        public DataTable runprocedure(string storedprocedure, SqlParameter[] parameters)
        {
            DataTable dt = new DataTable();
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = buildquerycommand(storedprocedure, parameters);
            da.Fill(dt);
            cn.Close();
            return dt;
        }
        public SqlDataReader Runprocedure(string storedprocedure, SqlParameter[] parameters)
        {
            SqlDataReader dr;
            cn.Open();
            SqlCommand cmd = buildquerycommand(storedprocedure, parameters);
            dr = cmd.ExecuteReader();
            dr.Read();
            if(dr.HasRows==false)
            {
                return null;
            }
            else
            {
                return dr;
            }        
        }
    }
}
