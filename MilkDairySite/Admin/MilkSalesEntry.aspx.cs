using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
public partial class MilkSalesEntry : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    void ResetForm()
    {
        DropDownList1.SelectedIndex = -1;
        DateTextBox .Text = "";
        ToDateTextBox.Text = "";
        TotalTextBox.Text = "";

        DropDownList1.Focus();
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {        
        db.ExecuteCommand("Insert into CustomerBill (BillDate,CustId,CustomerName,DateFrom,DateTo,Total) Values('" + DateTime.Now.ToString("MM/dd/yyyy") + "','"+ DropDownList1.SelectedValue+"','" + DropDownList1.SelectedItem.Text + "','" + DateTextBox.Text + "','"+ToDateTextBox.Text+"',"+TotalTextBox.Text+")");
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Customer Bill is created successfully..')", true);

        GridView1.DataBind();
        ResetForm();
    }
    protected void CancelButton_Click(object sender, EventArgs e)
    {
        ResetForm();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lb = e.Row.Cells[0].Controls[0] as LinkButton;
            lb.OnClientClick = "return confirm('Do you want to delete Bill Entry?');";
        }
    }
}