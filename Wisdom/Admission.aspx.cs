using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Wisdom
{
    public partial class Admission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }            
        }        

        protected void btnThird_Click(object sender, EventArgs e)
        {
            if (ddlAdmissionClass.SelectedValue != "11th Science" && ddlAdmissionClass.SelectedValue != "12th Science" && ddlAdmissionClass.SelectedValue != "11th Arts" && ddlAdmissionClass.SelectedValue != "12th Arts")
            {                
                MultiView1.ActiveViewIndex = 3;
            }
            else
            {
                MultiView1.ActiveViewIndex = 2;
            }
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Admission(Father_name,Mother_name,Father_profession,Mother_professsion) Values('" + txtAdmissionFatherName.Text + "','" + txtAdmissionFatherProfession.Text + "','" + txtAdmissionMotherName.Text + "','" + txtAdmissionMotherProfession.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();            
        }

        protected void btnSecond_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Admission(Class,Name,Mobile,Email,Address,Gender,BirthDate) Values('" + ddlAdmissionClass.SelectedValue + "','" + txtAdmissionName.Text + "'," + txtAdmissionMobile.Text + ",'" + txtAdmissionEmail.Text + "','" + txtAdmissionAddress.Text + "','" + ddlAdmissionGender.SelectedValue + "','" + txtAdmissionDOB.Text + "')", con);
            SqlCommand cmd2 = new SqlCommand("Insert into Stud(Class,Name,Mobile,Email,Address,Gender,BirthDate) Values('" + ddlAdmissionClass.SelectedValue + "','" + txtAdmissionName.Text + "'," + txtAdmissionMobile.Text + ",'" + txtAdmissionEmail.Text + "','" + txtAdmissionAddress.Text + "','" + ddlAdmissionGender.SelectedValue + "','" + txtAdmissionDOB.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into Admission([10th_seat],[10th_marks],[10th_per]) Values('"+txtAdmissionSeatNumber.Text+"',"+txtAdmissionMarks.Text+","+txtAdmissionPercentage.Text+")", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            MultiView1.ActiveViewIndex = 3;
        }
    }
}