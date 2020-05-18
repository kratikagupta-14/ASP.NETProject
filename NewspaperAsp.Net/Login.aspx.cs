using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.IO.Pipes;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

namespace NewspaperAsp.Net
{
    public partial class Login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            Response.Redirect("Dashboard.aspx");
        }
    }
       
        

    
}