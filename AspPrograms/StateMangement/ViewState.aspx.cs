using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateMangement
{
    public partial class ViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            ViewState["First_Name"] = FirstName.Text;
            ViewState["Last_Name"] = LastName.Text;

            FirstName.Text = "";
            LastName.Text = "";
        }

        protected void Restore_Click(object sender, EventArgs e)
        {
            if (ViewState["First_Name"] != null)
            {
               FirstName.Text = ViewState["First_Name"].ToString();
            }

            if (ViewState["Last_Name"] != null)
            {
                LastName.Text = ViewState["Last_Name"].ToString();
            }
        }
    }
}