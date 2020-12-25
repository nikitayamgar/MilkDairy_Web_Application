using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class CustomerEntry : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        db.ExecuteCommand("Insert into SupplierAdvance (TDate,SupplId,AdvanceAmt,Status) values('"+ DateTime.Now.ToString("MM/dd/yyyy")+"'," + Session["SupplId"]+","+ AmtTextBox.Text + ",'Pending')");
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Supplier Advance Request Sent to Admin successfully.');", true);
        AmtTextBox.Text = "";
        AmtTextBox.Focus();
        
    }
    
}