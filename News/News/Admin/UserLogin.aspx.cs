using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace News.Admin
{
    public partial class UserLogin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["newscon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_user_login_Click(object sender, EventArgs e)
        {
            if (txt_ausername.Text == "")
            {
                lbl_username.Visible = true;
            }
            if (txt_userpass.Text == "")
            {
                lbl_userpass.Visible = true;
            }
            SqlCommand cmd = new SqlCommand("select * from users where username=@user and password=@pass and roleid='2'", cn);
            cmd.Parameters.AddWithValue("@user", txt_ausername.Text);
            cmd.Parameters.AddWithValue("@pass", txt_userpass.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cn.Open();
            int i = cmd.ExecuteNonQuery();
            cn.Close();
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("~/Userpage.aspx");
            }
            else
            {
                lbl_valid.Text = "عفوا ليس لديك صلاحية الدخول";
                lbl_valid.ForeColor = System.Drawing.Color.Red;
                lbl_valid.Visible = true;
            }  
        }
    }
}