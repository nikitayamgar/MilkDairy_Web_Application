using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
public partial class CowRateEntry : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    void ResetForm()
    {
        FromTextBox .Text = "";
        ToTextBox.Text = "";
        RateTextBox.Text = "";
        IncreaseTextBox.Text = "";
        FromTextBox.Focus();
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        db.ExecuteCommand("Delete from CowMilkRate");
        String from = FromTextBox.Text;
        String to= ToTextBox.Text;
        String rate= RateTextBox.Text;
        String incr = IncreaseTextBox.Text;

        double a = double.Parse(from);
        double b = double.Parse(to);
        double r = double.Parse(rate);
        double i = double.Parse(incr);

        while (a <= b)
        {
            db.ExecuteCommand("Insert into CowMilkRate (Fat,MilkRate) Values(" + a + "," + r +")");
            a = a + 0.1;
            r = r + i;
        }
                
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Cow Milk Rate Updated')", true);

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
            lb.OnClientClick = "return confirm('Do you want to delete Rate Entry?');";
        }
    }
}