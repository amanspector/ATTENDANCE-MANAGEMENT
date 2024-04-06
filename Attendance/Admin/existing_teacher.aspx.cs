using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_existing_teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        string query = "SELECT * FROM teacher ORDER BY dept";

        SqlConnection connection = new SqlConnection(connectionString);
        
        SqlCommand command = new SqlCommand(query, connection);
            
        connection.Open();
        SqlDataAdapter adapter = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        GridViewTeachers.DataSource = dt;
        GridViewTeachers.DataBind();
            
        
    }
}