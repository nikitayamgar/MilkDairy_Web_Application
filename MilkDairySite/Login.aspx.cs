using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        String role = DropDownList1.Text;
        String user = TextBox1.Text;
        String pass = TextBox2.Text;
        String msg = "";
        if (role == "Admin")
        {
            DataTable dt = db.GetTable("select * from Admin where UserId='" + user + "' and Password='" + pass + "'");
            if (dt.Rows.Count > 0)
            {
                Session["user"] = user;
                Session["role"] = role;
                Response.Redirect("~/Admin/Admin.aspx");
            }
            else
            {
                msg = "Login failed try again....";
            }
        }
        else if (role == "Customer")
        {
            DataTable dt = db.GetTable("select * from Customer where UserName='" + user + "' and Password='" + pass + "'");
            if (dt.Rows.Count > 0)
            {
                Session["user"] = user;
                Session["role"] = role;
                Session["CustId"] = dt.Rows[0][0].ToString();
                Response.Redirect("~/Customer/Customer.aspx");
            }
            else
            {
                msg = "Login failed try again....";
            }
        }
        else if (role == "Supplier")
        {
            DataTable dt = db.GetTable("select * from Supplier where UserName='" + user + "' and Password='" + pass + "'");
            if (dt.Rows.Count > 0)
            {
                Session["user"] = user;
                Session["role"] = role;
                Session["SupplId"] = dt.Rows[0][0].ToString();
                Response.Redirect("~/Supplier/Supplier.aspx");
            }
            else
            {
                msg = "Login failed try again....";
            }
        }
        else
        {
            msg = "Login failed try again....";
        }
        ClientScript.RegisterStartupScript(GetType(), "msg", "alert('" + msg + "');", true);

    }
}