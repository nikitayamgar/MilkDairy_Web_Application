using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Supplier_SupplierMilk : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    SqlDataSource1.SelectCommand = "select * from MilkCollection";
        //}
        DataTable dt = db.GetTable("select sum(total) from SuppMilkCollectionView where Supplid=" + Session["SupplId"]);
        if (dt.Rows.Count > 0)
        {
            Label2.Text = dt.Rows[0][0].ToString();
            dt = db.GetTable("select sum(Amt) from AnimalFoodView where Supplid=" + Session["SupplId"]);
            if (dt.Rows.Count > 0)
            {
                Label3.Text = dt.Rows[0][0].ToString();
            }
            double t = double.Parse(Label2.Text) - double.Parse(Label3.Text);
            Label4.Text = t.ToString();

        }

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select * from SuppMilkCollectionView where TDate='"+TextBox1.Text+"'";
       
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}