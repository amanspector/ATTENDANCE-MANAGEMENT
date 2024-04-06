using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Student_Sreport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            // Connect to the database
            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(connectionString);

            string cnm = Session["clss"].ToString();
            string query = "SELECT date, status FROM " + cnm + " WHERE sname = @sname";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@sname", Session["sname"].ToString());

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                showReport.DataSource = dt;
                showReport.DataBind();
            }
            else
            {
                msg.Text = "No data found.";
            }

        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
       

    }
   
}