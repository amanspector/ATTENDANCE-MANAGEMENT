using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Teacher_attendance : System.Web.UI.Page
{
    DateTime dp = DateTime.Now.Date; 
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            TimeZoneInfo indianTimeZone = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime indianTime = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, indianTimeZone);

            // Set the text of DateLabel with the formatted date and time
            DateLabel.Text = "Attendance of " + indianTime.ToString("MM/dd/yyyy hh:mm:ss tt");

        }
    }
    

        
    
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True"; // Replace with your connection string
        string seleclass = classsele.Text.ToString();

        foreach (GridViewRow row in StudentGridView.Rows)
        {
            int rno = Convert.ToInt32(row.Cells[0].Text);
            string sname = row.Cells[1].Text;
            string department = row.Cells[2].Text;
            string classnm = row.Cells[3].Text;
            RadioButtonList statusRadioButtonList = (RadioButtonList)row.FindControl("StatusRadioButtonList");
            int status = Convert.ToInt32(statusRadioButtonList.SelectedValue);

            SqlConnection connection = new SqlConnection(connectionString);

            string query = "INSERT INTO "+seleclass+" (rollno, sname, dept,class, status, date) VALUES (@rollno, @sname, @dept,@class, @status, @dp)";
            SqlCommand command = new SqlCommand(query, connection);
                
            command.Parameters.AddWithValue("@rollno", rno);
            command.Parameters.AddWithValue("@sname", sname);
            command.Parameters.AddWithValue("@dept", department);
            command.Parameters.AddWithValue("@class", classnm);
            command.Parameters.AddWithValue("@status", status);
            command.Parameters.AddWithValue("@dp", dp);
            connection.Open();
            command.ExecuteNonQuery();
                
         }
        

        Response.Write("<script>alert('Attendance Recorded.');</script>");

    }
    protected void OKgo_Click(object sender, EventArgs e)
    {
        SaveButton.Visible = true;
        var dept = Session["dept"];
        string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True"; // Replace with your connection string
        string query = "SELECT * FROM student WHERE dept=@dept and class = @class order by rollno";

        SqlConnection connection = new SqlConnection(connectionString);

        SqlCommand command = new SqlCommand(query, connection);

        command.Parameters.AddWithValue("@dept", dept);
        command.Parameters.AddWithValue("@class", classsele.Text.ToString());

        connection.Open();
        SqlDataAdapter adapter = new SqlDataAdapter(command);

        DataTable dt = new DataTable();
        adapter.Fill(dt);
        StudentGridView.DataSource = dt;
        StudentGridView.DataBind();
    }
}