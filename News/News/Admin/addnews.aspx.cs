using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace News.Admin
{
    public partial class addnews : System.Web.UI.Page
    {
        news_class _new = new news_class();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btn_save_new_Click(object sender, EventArgs e)
        {
            string filename = "";
            if (Path.GetExtension(FileUpload1.FileName.ToLower()) == ".jpg" ||
                Path.GetExtension(FileUpload1.FileName.ToLower()) == ".png")
            {
                filename = FileUpload1.FileName;
            }
            else
            {
                lbl_file.Visible = true;
                return;
            }
            if (txt_newtitle.Text == "")
            {
                lbl_newtitle.Visible = true;
            }
            else if (txt_newsummary.Text == "")
            {
                lbl_newsummary.Visible = true;
            }
            else if (txt_newdetails.Text == "")
            {
                lbl_newdetails.Visible = true;
            }
            else if (drp_new_cat.Text == "")
            {
                lbl_new_cat.Visible = true;
            }
            else
            {
                _new.insertnews(txt_newtitle.Text, txt_newsummary.Text, txt_newdetails.Text, filename, int.Parse(drp_new_cat.SelectedValue));

                FileUpload1.SaveAs(Server.MapPath("~/newsimgs/" + FileUpload1.FileName));
            }

            txt_newtitle.Text = "";
            txt_newsummary.Text = "";
            txt_newdetails.Text = "";
        }
    }
}