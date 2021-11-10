using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DataBindControls
{
   
    public partial class DataList : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            Filldatalist();
        }
        public void Filldatalist()
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from User_deatils", con);
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sqlDataAdapter.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            finally
            {
                con.Close();
            }
        }
    }
}