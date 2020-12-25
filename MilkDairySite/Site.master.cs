using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = DateTime.Now.ToString("dd MMM yyyy hh:mm:ss tt");
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToString("dd MMM yyyy hh:mm:ss tt");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["title"] = "Data User Login";
        Response.Redirect("~/Login.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["title"] = "Data Owner Login";
        Response.Redirect("~/Login.aspx");
    }
    
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["title"] = "Cloud Admin Login";
        Response.Redirect("~/Login.aspx");


    }
}
