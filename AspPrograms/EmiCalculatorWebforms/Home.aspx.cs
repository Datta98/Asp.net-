using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmiCalculatorWebforms
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlConnection"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            this.login_div.Visible = false;
            this.Signup_div.Visible = false;
        }
        protected void login_Click(object sender, EventArgs e)
        {
            this.login_div.Visible = true;
            this.Signup_div.Visible = false;
        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            this.login_div.Visible = false;
            this.Signup_div.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(con);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Enrollment values('" + uname.Text + "','" + pwd.Text + "','" + email.Text + "','" + phno.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Message.Text = "Inserted successfully";


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect(String.Format("StudentDashboard.aspx?username={0}&id={1}", username.Text, 1));
            // Session["Username"] = TextBox1.Text;
            // Response.Redirect("~/StudentDashboard.aspx");
            SqlConnection con = new SqlConnection(@"Data Source=ES-LAPTOP-510\SQL2017;Initial Catalog=UserDetails;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Enrollment where UserName='" + username.Text + "' and Password='" + password.Text + "'", con);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            int i = cmd.ExecuteNonQuery();
            if (dataTable.Rows.Count > 0)
            {
                Response.Redirect("emi.aspx");
            }
            else
            {
//Message1.Text = "Username and Password is incorrect";
            }
        }


    }
}