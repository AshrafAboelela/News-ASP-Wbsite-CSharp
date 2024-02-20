using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News
{
    public partial class Add_Comment : System.Web.UI.Page
    {
        comments_class _c = new comments_class();
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btn_add_comment_Click(object sender, EventArgs e)
        {
            if (txt_categoryname.Text == "")
            {
                lbl_new_title.Visible = true;
            }
            else if (txt_uname.Text == "")
            {
                lbl_uname.Visible = true;
            }
            else
            {
            _c.insertcomment(txt_categoryname.Text, txt_uname.Text, int.Parse(drp_new_title.SelectedValue));
            }
            txt_categoryname.Text = "";
            txt_uname.Text = "";
        }
    }
}