using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerSite : System.Web.UI.MasterPage
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToString("dd MMM yyyy hh:mm:ss tt");
    }

    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
    }
}
