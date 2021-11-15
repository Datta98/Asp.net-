using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace SimpleLoginWebsite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");

            //Server.Transfer("SignUp.aspx");


        }

        protected void Btn_signin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=ES-LAPTOP-510\SQL2017;Initial Catalog=UserInfo;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from UserInfo where EmailId='"+usr.Text+ "' and Password='"+pwd.Text+"'",con);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataTable dT = new DataTable();
            sqlDataAdapter.Fill(dT);
            int i = cmd.ExecuteNonQuery();
            if(dT.Rows.Count>0)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                display.Text = "Invalid Input";
            }
        }
    }
}