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
            if (inputEmail.Value.ToUpper() == "ADMIN" && inputPassword.Value.ToUpper() =="ADMIN")
            {
                Response.Redirect("Home.aspx");
            }
            /*
            else
            {
                LoginDetails log = ValidateUser(username.Value, psw.Value);

                if(log.IsAuthUser)
                {
                    Session["UserID"] = log.UserId;
                    Session["role"] = log.role;
                    Session["username"] = log.username;
                    Session["IsAuth"] = log.IsAuthUser;
                    Response.Redirect("Home.aspx");

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

            }
        }

        private LoginDetails ValidateUser(string username, string psw)
        {
            LoginDetails obj = new LoginDeatils();
            obj.IsAuthUser = false;

            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["bs"].ConnectionString);
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            string qr = sele 
            */

        }  

    }
}