using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SuppAdvance : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "UpdateStatus")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);
            DropDownList dt = GridView1.Rows[rowindex].Cells[5].Controls[1] as DropDownList;
            db.ExecuteCommand("Update SupplierAdvance set Status='" + dt.SelectedValue + "' where Id=" + GridView1.Rows[rowindex].Cells[0].Text);
            GridView1.DataBind();
 
        }

    }
}