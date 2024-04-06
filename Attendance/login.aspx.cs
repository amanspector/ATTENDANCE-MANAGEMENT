using System;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.UI;

public partial class login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String ds = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        String lblError = "<b>INVALID CREDENTIALS</b>";
        if (Request.Form["login"] != null)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];
            SqlConnection con = new SqlConnection(ds);
            con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM student", con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    if (reader["username"].ToString() == username && reader["password"].ToString() == password)
                    {
                        Session["id"] = reader["sid"];
                        Session["rollno"] = reader["rollno"];
                        Session["clss"] = reader["class"];
                        Session["sname"] = reader["sname"];
                        Response.Redirect("~/Student/index.aspx");
                    }
                }

                reader.Close();
                cmd = new SqlCommand("SELECT * FROM teacher", con);
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    if (reader["username"].ToString() == username && reader["password"].ToString() == password)
                    {
                        Session["dept"] = reader["dept"];
                        Session["id"] = reader["tid"];
                        Response.Redirect("~/Teacher/index.aspx");
                        //Response.Write(Session["dept"]);
                    }
                }

                reader.Close();
                err.Text = lblError;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                // Ensure connections are closed in the finally block
                if (con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }
    }
}