using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace News
{
    public partial class Search_New : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["newscon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btn_newtitle_search_Click(object sender, EventArgs e)
        {
            cn.Open();
            string sqlstaement;
            sqlstaement = "select newstitle as [عنوان الخبر],summary as [ملخص الخبر],details as [تفاصيل الخبر],new.dateadd as [التاريخ],category.categoryname as [فئة الخبر] from new join category on new.categoryid=category.categoryid where new.newstitle='" + txt_categoryname.Text + "'";

            SqlCommand cmd = new SqlCommand(sqlstaement, cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            cn.Close();
        }

        protected void btn_newcat_search_Click(object sender, EventArgs e)
        {
            cn.Open();
            string sqlstaement;
sqlstaement="select newstitle as [عنوان الخبر],summary as [ملخص الخبر],details as [تفاصيل الخبر],new.dateadd as [التاريخ],category.categoryname as [فئة الخبر] from new join category on new.categoryid=category.categoryid where new.categoryid='" + dp_new_cat.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(sqlstaement, cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            cn.Close();
        }
    }
}