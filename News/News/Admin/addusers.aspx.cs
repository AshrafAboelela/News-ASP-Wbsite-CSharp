using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.Admin
{
    public partial class addusers : System.Web.UI.Page
    {
        users_class _user = new users_class();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_save_user_Click(object sender, EventArgs e)
        {
            if (txt_username.Text == "")
            {
                lbl_username.Visible = true;
            }
            else if (drp_roles.Text == "")
            {
                lbl_roles.Visible = true;
            }
            else if (txt_pass.Text == "")
            {
                lbl_pass.Visible = true;
            }
            else if (txt_confirmpass.Text != txt_pass.Text)
            {
                lbl_confirmpass.Visible = true;
            }
            else if (txt_mail.Text == "")
            {
                lbl_mail.Visible = true;
            }
            else
            {
                _user.insertusers(int.Parse(drp_roles.SelectedValue), txt_username.Text, txt_pass.Text, txt_mail.Text);
            }
            txt_username.Text = "";
            txt_pass.Text = "";
            txt_confirmpass.Text = "";
            txt_mail.Text = "";
          
        }
    }
}