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
    public partial class New_Details : System.Web.UI.Page
    {
        news_class _new = new news_class();
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["newscon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                    SqlDataReader dr;
                    dr = _new.selectallnewsbynewid(int.Parse(Request.QueryString["newsid"].ToString()));
                    Label1.Text = dr[1].ToString();
                    Label2.Text = dr[1].ToString();
                    Label3.Text = dr[2].ToString();
                    Label4.Text = dr[3].ToString();
                    Image1.ImageUrl = "~/newsimgs/" + dr[4].ToString();
                    dr.Close();          
            }
        }
    }
}
