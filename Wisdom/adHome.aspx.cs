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
    public partial class adHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            string query = "SELECT COUNT(Message) FROM Contact";
            SqlCommand cmd = new SqlCommand(query, conn);
            int count = (int)cmd.ExecuteScalar();
            conn.Close();
            lblMess.Text = count.ToString();
        }
        protected void btnLog_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}