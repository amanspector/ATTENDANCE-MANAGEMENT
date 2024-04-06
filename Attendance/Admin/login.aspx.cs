using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["login"] != null)
        {
            string lblError = "<b>INVALID CREDENTIALS</b>";
            try
            {
                if (Request.Form["username"] == "admin" && Request.Form["password"] == "admin")
                    {
                        Session["user"] = Request.Form["username"];
                        Response.Redirect("~/Admin/index.aspx");
                        //err.Text = Session["user"].ToString();
                    }
                    else
                    {
                        err.Text = lblError;
                    }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
