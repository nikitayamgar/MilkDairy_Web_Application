using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AnimalFood : System.Web.UI.Page
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
            DropDownList dt = GridView1.Rows[rowindex].Cells[5].Controls[0] as DropDownList;
            db.ExecuteCommand("Update AnimalFood set Status='" + dt.SelectedValue + "' where Id=" + GridView1.Rows[rowindex].Cells[0].Text);
            GridView1.DataBind();
 
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String data = "";
        double amt = 0;
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                data += CheckBoxList1.Items[i].Text + ":" + CheckBoxList1.Items[i].Value + "^";
                amt += Double.Parse(CheckBoxList1.Items[i].Value);
            }
        }
        db.ExecuteCommand("Insert into AnimalFood (RDate,SupplId,Status,data,Amt) values('" + DateTime.Now.ToString("MM/dd/yyyy") + "'," + Session["SupplId"] + ",'Pending','"+data+"',"+amt+")");
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Animal Food Request Sent to Admin successfully.');", true);
        GridView1.DataBind();
        
    }
}