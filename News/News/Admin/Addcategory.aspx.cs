using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.Admin
{
    public partial class Addcategory : System.Web.UI.Page
    { 
        category_class _cat = new category_class();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_category_Click(object sender, EventArgs e)
        {
            if (txt_categoryname.Text == "")
            {
                lbl_categoryname.Visible = true;
            }
            else
            {
                _cat.insertcategory(txt_categoryname.Text);
            }
            txt_categoryname.Text = "";
        }
    }
}
