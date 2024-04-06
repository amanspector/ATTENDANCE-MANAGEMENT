using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        // Start the session (if not already started)
       if (Session["id"] != null)
        {
            // Destroy the session
            Session.Abandon();
       }

        // Redirect to the index page
        Response.Redirect("index.aspx");
    }
    
}