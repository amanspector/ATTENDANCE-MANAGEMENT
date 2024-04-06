using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Teacher_report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void OKgo_Click(object sender, EventArgs e)
    {
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string clsssele = seleClass.Text.ToString();
            con.Open();
            string query = "SELECT rollno, sname, dept, SUM(status) AS present, COUNT(status) - SUM(status) AS absent, COUNT(status) AS total FROM " + clsssele + " WHERE dept = @dept GROUP BY rollno, sname, dept";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@dept", Session["dept"].ToString());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}