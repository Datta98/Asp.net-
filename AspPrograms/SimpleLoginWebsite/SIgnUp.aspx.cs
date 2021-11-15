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
    public partial class SIgnUp : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }        

        protected void Btn_register_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=ES-LAPTOP-510\SQL2017;Initial Catalog=UserInfo;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[UserInfo]
           ([EmailId],[UserName],[Password])
     VALUES
           ('" + email_id.Text + "','" + usr.Text + "','" + pwd.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            email_id.Text = "";
            usr.Text = "";
            pwd.Text = "";
            rep_pwd.Text = "";
            msg.Text = "Register Successfully";

        }

        protected void Btn_signin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}