using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AnimalFoodRequest : System.Web.UI.Page
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
            DropDownList dt = GridView1.Rows[rowindex].Cells[4].Controls[1] as DropDownList;
            db.ExecuteCommand("Update AnimalFood set Status='" + dt.SelectedValue + "' where Id=" + GridView1.Rows[rowindex].Cells[0].Text);
            GridView1.DataBind();
 
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        db.ExecuteCommand("Insert into AnimalFood (RDate,SupplId,Status) values('" + DateTime.Now.ToString("MM/dd/yyyy") + "'," + Session["SupplId"] + ",'Pending')");
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Animal Food Request Sent to Admin successfully.');", true);
        GridView1.DataBind();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}