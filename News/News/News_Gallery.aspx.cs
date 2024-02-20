using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace News
{
    public partial class News_Gallery : System.Web.UI.Page
    {
        news_class _new = new news_class();
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["newscon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from new", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
}
                       
