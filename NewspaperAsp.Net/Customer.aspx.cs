using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Xceed.Wpf.Toolkit;

namespace NewspaperAsp.Net
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        StringBuilder table = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=HP; Initial Catalog=News; User ID=sa; integrated Security=false";
            con.Open();
            if (!Page.IsPostBack)
                disp_data();
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            Response.Write("submit button");

            SqlCommand cmd = new SqlCommand("INSERT INTO Customer" + "(Customer_Name, Contact, Address, Email, Locality) VALUES(@Customer_Name, @Contact,@Address, @Email, @Locality)", con);
            cmd.Parameters.AddWithValue("@Customer_Name", customerNameTb.Text);
            cmd.Parameters.AddWithValue("@Contact", contactTb.Text);
            cmd.Parameters.AddWithValue("@Address", addressTb.Text);
            cmd.Parameters.AddWithValue("@Email", emailTb.Text);
            cmd.Parameters.AddWithValue("@Locality", localityTb.Text);
            cmd.ExecuteNonQuery();


            customerNameTb.Text = "";
            contactTb.Text = "";
            addressTb.Text = "";
            emailTb.Text = "";
            localityTb.Text = "";

            disp_data();
           

        }


        void disp_data()
        {
            // con.ConnectionString = "Data Source=HP; Initial Catalog=News; User ID=sa; integrated Security=false";
            //con.Open();
            SqlCommand cmd = new SqlCommand("select * from Customer", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rpt.DataSource = dt;
            rpt.DataBind();


            /*  cmd.CommandText = "select * from Customer";
             cmd.Connection = con;
             SqlDataReader rd = cmd.ExecuteReader(); 




             if (rd.HasRows)
             {
                 while (rd.Read())
                 {
                     table.Append("<tr>");
                     table.Append("<td>" + rd[0] + "</td>");
                     table.Append("<td>" + rd[1] + "</td>");
                     table.Append("<td>" + rd[2] + "</td>");
                     table.Append("<td>" + rd[3] + "</td>");
                     table.Append("<td>" + rd[4] + "</td>");
                     table.Append("<td>" + rd[5] + "</td>");
                     // table.Append("<td class=\"auto-style1\"> <ul class=\"list-inline m-0\"> <li class=\"list-inline-item\"> <button class=\"btn btn-success btn-sm rounded-0\" type=\"button\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Edit\" id=\"editBtn\"><i class=\"fa fa-edit\" dir=\"rtl\"></i></button> </li> <li class=\"list-inline-item\"> <button class=\"btn btn-danger btn-sm rounded-0\" type=\"button\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\" id=\"deleteBtn\" onclick=\"deleteBtn_Click\"><i class=\"fa fa-trash\"></i></button> </li> </ul> </td>");
                     table.Append("<td class=\"auto-style1\"> <ul class=\"list-inline m-0\"> <li class=\"list-inline-item\"><form><input type=\"hidden\" ID=\"editId\" value=" +rd[0]+ "> <button class=\"btn btn-success btn-sm rounded-0\" type=\"submit\" onclick=\"editBtn_Click\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Edit\" id=\"editBtn\"><i class=\"fa fa-edit\" dir=\"rtl\"></i></button></form> </li> <li class=\"list-inline-item\"><form> <input type=\"hidden\" ID=\"deleteId\" value=" +rd[0]+ "> <button class=\"btn btn-danger btn-sm rounded-0\" type=\"submit\" onclick=\"deleteBtn_Click\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\" id=\"deleteBtn\"><i class=\"fa fa-trash\"></i></button></form> </li> </ul> </td>");
                     table.Append("</tr>");

                 }
             }

             PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
             
            rd.Close(); */


        }


       protected void deleteBtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Delete * from customer where id=@Id ");
            Response.Write("delete button");
        }

        protected void editBtn_Click(object sender, EventArgs e)
        {
            Response.Write("edit button");

        }
        protected void AddCustomer_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddCustomer.aspx");

        }

    }
}
 