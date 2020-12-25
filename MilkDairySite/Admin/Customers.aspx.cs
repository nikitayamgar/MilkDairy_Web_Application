using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataSource1.SelectCommand = "select * from Customer";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select * from Customer where CustID like '%" + TextBox1.Text + "%' or CustomerName like '%"+TextBox1.Text+"%'";
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lb = e.Row.Cells[0].Controls[0] as LinkButton;
            lb.OnClientClick = "return confirm('Do you want to delete Customer Entry?');";
        }
    }
}