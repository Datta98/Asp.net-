using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;

namespace Ajax
{
    public partial class Login_WithPannel : System.Web.UI.Page
    {
       
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void usr_TextChanged(object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(usr.Text))
            {
                Lbl_availabel.Visible = true;
                con.Open();
                SqlCommand cmd = new SqlCommand("select UPPER(User_name)  from User_deatils where User_name='" + usr.Text + "' ", con);
             
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Lbl_availabel.Text = "Name is Not Available";
                    Lbl_availabel.ForeColor = Color.Red;
                }
                else
                {
                    Lbl_availabel.Text = "Name is  Available";
                    Lbl_availabel.ForeColor = Color.Green;
                }
                con.Close();
            }
            else
            {
                Lbl_availabel.Visible = false;
            }
               
        }

        protected void Btn_register_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand(@"INSERT INTO User_deatils ([User_name],[Email],[Password])
     VALUES
           ('" + usr.Text + "','" + email_id.Text + "','" + pwd.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            email_id.Text = "";
            usr.Text = "";
            pwd.Text = "";
            rep_pwd.Text = "";
            Lbl_availabel.Visible = false;
            //msg.Text = "Register Successfully";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Registered Successfully');", true);
        }
    }
}