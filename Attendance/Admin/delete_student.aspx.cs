using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_delete_student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sId = Request.QueryString["sid"];
        string snm = Request.QueryString["sname"];
        string cls = Request.QueryString["class"];

        string deleteQuery = "DELETE FROM student WHERE sid = @id";
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(deleteQuery, connection);
        command.Parameters.AddWithValue("@id", sId);
        connection.Open();
        int rowsAffected = command.ExecuteNonQuery();
        if (rowsAffected == 1)
        {
            Response.Redirect("existing_student.aspx");
        }
        connection.Close();

        SqlCommand cmd = new SqlCommand("Delete FROM " + cls + " WHERE sname = '" + snm + "'", connection);
        cmd.ExecuteNonQuery();
    }
}