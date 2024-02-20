using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.Admin
{
    public partial class shownews : System.Web.UI.Page
    {
        news_class _new = new news_class();
        protected void showdata()
        {
            GridView1.DataSource = _new.selectallnews();
            GridView1.DataBind();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            showdata();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lbl_new_id = (Label)GridView1.Rows[e.RowIndex].Cells[0].FindControl("lbl_newid");
            _new.deletecategory(int.Parse(lbl_new_id.Text));
            showdata();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lbl_new_id = (Label)GridView1.Rows[e.RowIndex].Cells[0].FindControl("lbl_newid");
            TextBox txt_title_new = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].FindControl("txt_editnewtitle");
            TextBox txt_summary_new = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].FindControl("txt_editnewsummary");
            TextBox txt_details_new = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].FindControl("txt_editnewdetails");
            _new.updatenews(txt_title_new.Text, txt_summary_new.Text, txt_details_new.Text, int.Parse(lbl_new_id.Text));
            GridView1.EditIndex = -1;
            showdata();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            showdata();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                showdata();
            }            
        }
    }
}
