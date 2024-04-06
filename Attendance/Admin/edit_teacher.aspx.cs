using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class edit_teacher : System.Web.UI.Page
{
    string tId;
    DateTime jdate;
    protected void Page_Load(object sender, EventArgs e)
    {
        tId = Request.QueryString["tid"];
        if (!IsPostBack)
        {
            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("SELECT * FROM teacher WHERE tid = @tid", connection);
            command.Parameters.AddWithValue("@tid", tId);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                name.Text = reader["tname"].ToString();
                username.Text = reader["username"].ToString();
                pass.Text = reader["password"].ToString();
                dept.Text = reader["dept"].ToString();
                phone.Text = reader["phone"].ToString();
            }
            connection.Close();
            
        }
    }
   
       
    protected void edit_teach_Click(object sender, EventArgs e)
    {
        string nm = name.Text.ToString();
        string unm = username.Text.ToString();
        string passw = pass.Text.ToString();
        string depatrment = dept.Text.ToString();
        string phoneno = phone.Text.ToString();
        

        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand com = new SqlCommand("SELECT * FROM teacher WHERE tid = @tid", con);
        com.Parameters.AddWithValue("@tid", tId);
        con.Open();
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            jdate = (DateTime)reader["joindate"];
        }
        con.Close();
        
        string updateQuery = @"UPDATE teacher SET 
        tname = @tname,
        username = @username,
        password = @password,
        dept = @dept,
        phone = @phone,
        joindate=@joindate
        WHERE tid = @id";
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(updateQuery, connection);
        command.Parameters.AddWithValue("@tname", nm);
        command.Parameters.AddWithValue("@username", unm);
        command.Parameters.AddWithValue("@password", passw);
        command.Parameters.AddWithValue("@dept", depatrment);
        command.Parameters.AddWithValue("@phone", phoneno);
        if (joindate.Text == "01-01-0001 12:00:00 AM" || joindate.Text == "")
        {

            command.Parameters.AddWithValue("@joindate", jdate);
        }
        else
        {
            command.Parameters.AddWithValue("@joindate", joindate.Text);
        }
        command.Parameters.AddWithValue("@id", tId);
        connection.Open();
        int rowsAffected = command.ExecuteNonQuery();
        if (rowsAffected == 1)
        {
            Response.Redirect("existing_teacher.aspx"); 
        }
        connection.Close();
    }
}