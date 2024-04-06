using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;

public partial class Admin_create_teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_teacher_Click(object sender, EventArgs e)
    {
        String ds = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(ds);
        con.Open();
        
        SqlCommand insert = new SqlCommand("Insert into teacher (tname,username,password,dept,joindate,phone) values (@tname,@username,@password,@dept,@joinDate,@phone)", con);
        insert.Parameters.AddWithValue("@tname", name.Text);
        insert.Parameters.AddWithValue("@username", username.Text);
        insert.Parameters.AddWithValue("@password", pass.Text);
        insert.Parameters.AddWithValue("@dept", dept.Text);
        insert.Parameters.AddWithValue("@phone", Int64.Parse(phone.Text));
        insert.Parameters.AddWithValue("@joinDate", joinDate.Text);
        
        int confirm = insert.ExecuteNonQuery();
        if (confirm == 1)
        {
            name.Text = "";
            username.Text = "";
            
            pass.Text = "";
            joinDate.Text = "";
            phone.Text = "";
            msg.ForeColor = System.Drawing.Color.Green;
            msg.Text = "Teacher Profile Created!!";
        }
        else
        {
            msg.ForeColor = System.Drawing.Color.Red;
            msg.Text = "Somthing went wrong!!";
        }
        con.Close();
    }
}