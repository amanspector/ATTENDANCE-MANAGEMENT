using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Teacher_students : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void searchBtn_Click(object sender, EventArgs e)
    {
        string rollno = getrollno.Text;
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True"; // Replace with your connection string
        string query = "SELECT * FROM student WHERE rollno="+rollno;

        SqlConnection connection = new SqlConnection(connectionString);

        SqlCommand command = new SqlCommand(query, connection);

        connection.Open();
        SqlDataAdapter adapter = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        StudentList.DataSource = dt;
        StudentList.DataBind();
        if (adapter.Equals(null))
        {
            msg.Text = "No Data Found";
        }

    }
    protected void cancelBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/teacher/students.aspx");
    }
    
    protected void  OKgo_Click(object sender, EventArgs e)
    {
        string classnm = classSele.Text.ToString();
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True"; // Replace with your connection string
        string query = "SELECT * FROM student WHERE class = '" + classnm + "' ORDER BY rollno, sname";

        SqlConnection connection = new SqlConnection(connectionString);

        SqlCommand command = new SqlCommand(query, connection);

        connection.Open();
        SqlDataAdapter adapter = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        StudentList.DataSource = dt;
        StudentList.DataBind();
        if (adapter.Equals(null))
        {
            msg.Text = "No Data Found";
        }
    }
        
}