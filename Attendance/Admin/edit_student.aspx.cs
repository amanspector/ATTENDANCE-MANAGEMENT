using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_edit_student : System.Web.UI.Page
{
    string sId;
    protected void Page_Load(object sender, EventArgs e)
    {
        sId = Request.QueryString["sid"];
        if(!IsPostBack)
        {
            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("SELECT * FROM student WHERE sid = @sid", connection);
            command.Parameters.AddWithValue("@sid", sId);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                name.Text = reader["sname"].ToString();
                username.Text = reader["username"].ToString();
                pass.Text = reader["password"].ToString();
                classnm.Text = reader["class"].ToString();
                dept.Text = reader["dept"].ToString();
                rollno.Text = reader["rollno"].ToString();
                phone.Text = reader["phone"].ToString();
                address.Text = reader["address"].ToString();
            }
            connection.Close();
        }
    }
    protected void edit_student_Click(object sender, EventArgs e)
    {
        string nm = name.Text.ToString();
        string unm = username.Text.ToString();
        string passw = pass.Text.ToString();
        string classname = classnm.Text.ToString();
        string depatrment = dept.Text.ToString();
        string phoneno = phone.Text.ToString();
        string add = address.Text.ToString();
        string roll=rollno.Text.ToString();

        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        string updateQuery = @"UPDATE student SET 
        sname = @sname,
        username = @username,
        password = @password,
        class = @class,
        dept = @dept,
        rollno = @rno,
        phone = @phone,
        address = @address
        WHERE sid = @student_id";
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(updateQuery, connection);
        command.Parameters.AddWithValue("@sname", nm);
        command.Parameters.AddWithValue("@username", unm);
        command.Parameters.AddWithValue("@password", passw);
        command.Parameters.AddWithValue("@class", classname);
        command.Parameters.AddWithValue("@dept", depatrment);
        command.Parameters.AddWithValue("@rno", roll);
        command.Parameters.AddWithValue("@phone", phoneno);
        command.Parameters.AddWithValue("@address", add);
        command.Parameters.AddWithValue("@student_id", sId);
        connection.Open();
        int rowsAffected = command.ExecuteNonQuery();
        if (rowsAffected == 1)
        {
            Response.Redirect("existing_student.aspx"); 
        }
        connection.Close();
    }
}