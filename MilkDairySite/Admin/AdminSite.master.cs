using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSite : System.Web.UI.MasterPage
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToString("dd MMM yyyy hh:mm:ss tt");
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (e.Item.Text == "Registered Vehicles")
        {
            Session["query"] = "select * from VehicleInfo";
            Session["table"] = "VehicleInfo";
            Session["report"] = "VehicleListReport.rpt";
            Response.Redirect("~/Police/ReportForm.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
    }
}
