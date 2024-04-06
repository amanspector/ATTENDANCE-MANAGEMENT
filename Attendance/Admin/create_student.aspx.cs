using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.UI.WebControls;

public partial class Admin_create_student : System.Web.UI.Page
{
    String ds = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void add_student_Click(object sender, EventArgs e) {
        
        SqlConnection con = new SqlConnection(ds);
        con.Open();
        SqlCommand insert = new SqlCommand("Insert into student (sname,username,password,dept,class,rollno,phone,address) values (@sname,@username,@password,@dept,@class,@rollno,@phone,@address)", con);
        insert.Parameters.AddWithValue("@sname", name.Text);
        insert.Parameters.AddWithValue("@username", username.Text);
        insert.Parameters.AddWithValue("@password", pass.Text);
        insert.Parameters.AddWithValue("@dept",department.Text);
        insert.Parameters.AddWithValue("@class", classname.Text);
        insert.Parameters.AddWithValue("@phone", Int64.Parse(phone.Text));
        insert.Parameters.AddWithValue("@address", address.Text);
        insert.Parameters.AddWithValue("@rollno", rollno.Text);

        int confirm = insert.ExecuteNonQuery();
        if (confirm == 1)
        {
            name.Text = "";
            username.Text = "";
            pass.Text = "";
            phone.Text = "";
            address.Text = "";
            rollno.Text = "";
            msg.ForeColor = System.Drawing.Color.Green;
            msg.Text = "Student Profile Created!!";
        }
        else
        {
            msg.ForeColor = System.Drawing.Color.Red;
            msg.Text = "Somthing went wrong!!";
        }
        con.Close();



    }
}
