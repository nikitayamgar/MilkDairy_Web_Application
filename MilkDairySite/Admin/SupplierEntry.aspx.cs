﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class SupplierEntry : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        db.ExecuteCommand("Insert into Supplier (SupplierName,SupplierAddress,MobileNo,EmailID,UserName,Password) values('" + NameTextBox.Text + "','" + AddressTextBox.Text + "','" + MobileTextBox.Text + "','" + EmailTextBox.Text + "','" + UserTextBox.Text + "','" + PasswordTextBox.Text + "')");
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Supplier is registered successfully.');", true);
        NameTextBox.Text = "";
        AddressTextBox.Text = "";
        MobileTextBox.Text = "";
        EmailTextBox.Text = "";
        UserTextBox.Text = "";
        PasswordTextBox.Text = "";
        NameTextBox.Focus();
        
    }
    
}