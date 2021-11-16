using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateMangement
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //------- cookie example code-----------------
            //HttpCookie cookie = new HttpCookie("UserData");
            //cookie["First_Name"] = FirstName.Text;
            //cookie["Last_Name"] = LastName.Text;
            //cookie.Expires = DateTime.Now.AddMinutes(60);
            //Response.Cookies.Add(cookie);
            //Response.Redirect("Home.aspx");


            //----------------------------Query String code-------------------------------------------
            //Response.Redirect("~/Home.aspx?FirstName=" + FirstName.Text + "&LastName=" + LastName.Text);

          
            //---------Session State -------------
            //Session["First_Name"] = FirstName.Text;
            //Session["Last_Name"] = LastName.Text;
            //Response.Redirect("Home.aspx");

            //---------Application State -------------
            Application["First_Name"] = FirstName.Text;
            Application["Last_Name"] = LastName.Text;
            Response.Redirect("Home.aspx");
        }
    }
}