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
    public partial class adAtten : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ddlSyllabusStandard.SelectedValue == "1st")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "2nd")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "3rd")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "4th")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "5th")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "6th")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "7th")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "8th")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "9th")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "10th")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "11th Arts")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "11th Science")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "12th Arts")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
            else if (ddlSyllabusStandard.SelectedValue == "12th Science")
            {
                string strcon = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into Attendance(Roll_no,Date,Class,Status) Values(" + txtResultRollNumber.Text + ",'" + txtDate.Text + "','" + ddlSyllabusStandard.SelectedValue + "','" + rbAtten.SelectedValue + "')", con);
                con.Open();
                int c = cmd.ExecuteNonQuery();
                con.Close();
                if (c != 0)
                {
                    lblMess.Text = "* Inserted Successfully";
                }
                else
                {
                    lblMess.Text = "* Something Went Wrong";
                }
            }
        }
        protected void btnLog_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}