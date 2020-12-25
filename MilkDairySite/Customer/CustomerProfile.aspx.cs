using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

public partial class CustomerProfile : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = db.GetTable("select * from Customer where CustId=" + Session["CustId"]);            
            NameTextBox.Text = dt.Rows[0][1].ToString();
            AddressTextBox.Text = dt.Rows[0][2].ToString();
            MobileTextBox.Text = dt.Rows[0][3].ToString();
            EmailTextBox.Text = dt.Rows[0][4].ToString();
            UserTextBox.Text = dt.Rows[0][5].ToString();
            PasswordTextBox.Text = dt.Rows[0][6].ToString();

        
        }
    }
    
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        db.ExecuteCommand("Update Customer set CustomerName='" + NameTextBox.Text + "',CustomerAddress='" + AddressTextBox.Text + "',MobileNo='" + MobileTextBox.Text + "',EmailID='" + EmailTextBox.Text + "',UserName='" + UserTextBox.Text + "',Password='" + PasswordTextBox.Text + "' where CustId="+Session["CustId"]);
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Customer Profile is updated successfully.');", true);
        NameTextBox.Focus();
        
    }
    
}