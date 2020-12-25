using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SupplierMilk : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    SqlDataSource1.SelectCommand = "select * from MilkCollection";
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select * from SuppMilkCollectionView where SupplID like '%" + TextBox1.Text + "%' or TDate like '%"+TextBox1.Text+"%' or SupplierName like '%"+TextBox1.Text+"%'";
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lb = e.Row.Cells[1].Controls[0] as LinkButton;
            lb.OnClientClick = "return confirm('Do you want to delete Milk Collection Entry?');";
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DeleteRecord")
        {
            int i = Convert.ToInt32(e.CommandArgument);
            db.ExecuteCommand("delete from MilkCollection where Id=" + GridView1.Rows[i].Cells[1].Text);
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            String sid = GridView1.SelectedRow.Cells[5].Text;

            DataTable dt = db.GetTable("select sum(total) from SuppMilkCollectionView where Supplid=" + sid);
            if (dt.Rows.Count > 0)
            {
                Label2.Text = dt.Rows[0][0].ToString();
                dt = db.GetTable("select sum(Amt) from AnimalFoodView where Supplid=" + sid);
                if (dt.Rows.Count > 0)
                {
                    Label3.Text = dt.Rows[0][0].ToString();
                }
                double t = double.Parse(Label2.Text) - double.Parse(Label3.Text);
                Label4.Text = t.ToString();

            }
        }
        catch (Exception ex)
        {
            Label4.Text = Label2.Text;
        }
    }
}