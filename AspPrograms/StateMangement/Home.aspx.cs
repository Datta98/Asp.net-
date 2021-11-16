using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateMangement
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //HttpCookie cookie = Request.Cookies["UserData"];
            //if (cookie != null)
            //{
            //    //----------cookie code----------------------
            //    //Label_FirstName.Text = cookie["First_Name"];
            //    //Label_LastName.Text = cookie["Last_Name"];
            //               
            //}

            //----------------Query String code------------------
            //    // Label_FirstName.Text = Request.QueryString["FirstName"];
            //    //Label_LastName.Text = Request.QueryString["LastName"];  


            //-------------------Session state -------------------------
            //if (Session["First_Name"] != null)
            //{
            //    Label_FirstName.Text = Session["First_Name"].ToString();
            //}

            //if (Session["Last_Name"] != null)
            //{
            //    Label_LastName.Text = Session["Last_Name"].ToString();
            //}



            //-------------------Application state -------------------------
            if (Application["First_Name"] != null)
            {
                Label_FirstName.Text = Application["First_Name"].ToString();
            }

            if (Application["Last_Name"] != null)
            {
                Label_LastName.Text = Application["Last_Name"].ToString();
            }
        }
    }
}