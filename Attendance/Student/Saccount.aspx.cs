using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; // Make sure to import the appropriate MySQL data provider.

public partial class Student_Saccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Connection string to your MySQL database
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        var sid = Session["id"];
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand("SELECT * FROM student WHERE sid = @sid", connection);

        // Add parameter to the query
        command.Parameters.AddWithValue("@sid", sid);

        try
        {
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                // Populate data into the placeholders or controls on your page
                lbl_id.Text = reader["sid"].ToString();
                lbl_name.Text = reader["sname"].ToString();
                lbl_dept.Text = reader["dept"].ToString();
                lbl_email.Text = reader["username"].ToString();
                lbl_class.Text = reader["class"].ToString();
                lbl_phn.Text = reader["phone"].ToString();
                lbl_add.Text = reader["address"].ToString();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            if (connection.State == System.Data.ConnectionState.Open)
            {
                connection.Close();
            }
        }
    }

   
}
