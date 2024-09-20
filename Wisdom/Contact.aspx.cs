using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Wisdom
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void btnContactUsSubmit_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Contact(Name,Email,Message) Values('"+txtContactUsName.Text+"','"+txtContactUsEmail.Text+"','"+txtContactUsMessage.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            MultiView1.ActiveViewIndex = 1;
        }
    }
}