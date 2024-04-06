using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Admin_delete_teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string tId = Request.QueryString["tid"];
        string deleteQuery = "DELETE FROM teacher WHERE tid = @teacher_id";
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(deleteQuery, connection);
        command.Parameters.AddWithValue("@teacher_id", tId);
        connection.Open();
        int rowsAffected = command.ExecuteNonQuery();
        if (rowsAffected == 1)
        {
            Response.Redirect("existing_teacher.aspx"); 
        }
        connection.Close();
    }
}