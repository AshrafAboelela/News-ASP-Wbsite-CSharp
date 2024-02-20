using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.Admin
{
    public partial class showcategory : System.Web.UI.Page
    {
        category_class _cat = new category_class();
        protected void getdata()
        {
            grdcategory.DataSource = _cat.selectallcategory();
            grdcategory.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getdata();
            }            
        }
        protected void grdcategory_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdcategory.EditIndex = e.NewEditIndex;
            getdata();
        }
        protected void grdcategory_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblcatid = (Label)grdcategory.Rows[e.RowIndex].Cells[0].FindControl("lbl_id");
            TextBox txtcatname = (TextBox)grdcategory.Rows[e.RowIndex].Cells[1].FindControl("txt_editcategoryname");
            _cat.updatecategory(int.Parse(lblcatid.Text), txtcatname.Text);
            grdcategory.EditIndex = -1;
            getdata();
        }
        protected void grdcategory_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdcategory.EditIndex = -1;
            getdata();
        }
        protected void grdcategory_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblcatid = (Label)grdcategory.Rows[e.RowIndex].Cells[0].FindControl("lbl_id");
            _cat.deletecategory(int.Parse(lblcatid.Text));
            getdata();
        }
    }
}