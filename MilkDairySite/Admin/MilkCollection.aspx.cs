using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

public partial class MilkCollection : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = db.GetTable("select * from CowMilkRate");
            FatDropDownList.DataSource = dt;
            FatDropDownList.DataValueField = "MilkRate";
            FatDropDownList.DataTextField = "Fat";
            FatDropDownList.DataBind();
        }
    }
    
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        db.ExecuteCommand("Insert into MilkCollection (TDate,TTime,SupplId,MilkType,MilkInLtr,Fat,Rate,Total) values('" + DateTextBox.Text + "','" + TimeTextBox.Text + "','" + SuppDropDownList.SelectedValue + "','" + TypeDropDownList.Text + "'," + LitreTextBox.Text + "," + FatDropDownList.SelectedValue + ","+RateTextBox.Text+","+TotalTextBox.Text+")");
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Milk Collected Successfully.');", true);
        DateTextBox.Text = "";
        TimeTextBox.Text = "";
        SuppDropDownList.SelectedIndex=-1;
        LitreTextBox.Text = "";
        
        FatDropDownList.SelectedIndex=-1;
        RateTextBox.Text = "";
        TotalTextBox.Text = "";
        DateTextBox.Focus();
        
    }

    protected void TypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (TypeDropDownList.Text == "Cow")
        {
            DataTable dt = db.GetTable("select * from CowMilkRate");
            FatDropDownList.DataSource = dt;
            FatDropDownList.DataValueField = "MilkRate";
            FatDropDownList.DataTextField = "Fat";
            FatDropDownList.DataBind();
        }
        else
        {
            DataTable dt = db.GetTable("select * from BuffelowMilkRate");
            FatDropDownList.DataSource = dt;
            FatDropDownList.DataValueField = "MilkRate";
            FatDropDownList.DataTextField = "Fat";
            FatDropDownList.DataBind();
        }

    }
    protected void FatDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        RateTextBox.Text = FatDropDownList.SelectedValue;
        TotalTextBox.Text = (double.Parse(LitreTextBox.Text) * double.Parse(RateTextBox.Text)).ToString("F");
    }
}