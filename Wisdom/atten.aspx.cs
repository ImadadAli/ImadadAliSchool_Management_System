using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Wisdom
{
    public partial class atten : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sshab\OneDrive\Documents\Visual Studio 2010\Projects\Wisdom\Wisdom\App_Data\School.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Attendance where Class='" + ddlStandard.SelectedValue + "' ORDER BY Date ASC", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataTable dt = new DataTable();
            sda.SelectCommand = cmd;
            sda.Fill(dt);

            gvAtten.DataSource = dt;
            gvAtten.DataBind();
            con.Close();                
        }
    }
}