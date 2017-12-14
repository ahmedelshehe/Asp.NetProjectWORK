using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Providers.Entities;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["Username"] == null)
        {
            Response.Redirect("Login", true);
        }
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["Username"].ToString();
        SqlCommand cmd = new SqlCommand("viewUser", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@username", SqlDbType.VarChar);
        cmd.Parameters["@username"].Value = s;
        conn.Open();
        warning.Visible = false;
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            string dayoff = rdr.GetString(rdr.GetOrdinal("day_off"));
            if(dayoff== System.DateTime.Now.DayOfWeek.ToString() || System.DateTime.Now.DayOfWeek.ToString()=="Friday")
            {

                checkin.Enabled = false;
                warning.Visible = true;
            }
        }


    }
    protected void checkIn(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["Username"].ToString();
        SqlCommand cmd = new SqlCommand("check_in", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@username", SqlDbType.VarChar);
        cmd.Parameters["@username"].Value = s;
        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.Default);
        checkin.Enabled = false;
        checkout.Enabled = true;


    }
    protected void checkOut(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["Username"].ToString();
        SqlCommand cmd = new SqlCommand("check_out", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@username", SqlDbType.VarChar);
        cmd.Parameters["@username"].Value = s;
        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.Default);
        checkin.Enabled = true;
        checkout.Enabled = false;
        


    }
    protected void viewAttendance(object sender,EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["Username"].ToString();
        
        SqlCommand cmd = new SqlCommand("Show_Attendace_records", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@username", SqlDbType.VarChar);
        cmd.Parameters["@username"].Value = s;
        string d1 = date1.Text;
        string d2 = date2.Text;
        cmd.Parameters.Add("@date1", SqlDbType.Date);
        cmd.Parameters["@date1"].Value = d1;
        cmd.Parameters.Add("@date2", SqlDbType.Date);
        cmd.Parameters["@date2"].Value = d2;
        conn.Open();
        
       
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.Default);
        while (rdr.Read())
        {

            string checkin = rdr.GetDateTime(rdr.GetOrdinal("start_time")).ToString();
            string checkout = rdr.GetDateTime(rdr.GetOrdinal("start_time")).ToString();
            string duration = rdr.GetInt32(rdr.GetOrdinal("duration")).ToString();
            Label record = new Label();
            record.Text = "  <br /> <br />" + "Check in Time :" + checkin + "  <br /> <br />" + "Check out Time : " + checkout + "  <br /> <br />" + "Duration : " + duration;
            form2.Controls.Add(record);
            
            Label dash = new Label();
            dash.Text = "  <br /> <br />" + "_________________________________________________" + "  <br /> <br />";
            form2.Controls.Add(dash);
            form2.Visible = true;
        }
    }
    protected void request(object sender, EventArgs e)
    {
        Response.Redirect("Request", true);
    }
    protected void viewRequest(object sender,EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["Username"].ToString();
        SqlCommand cmd = new SqlCommand("View_requests", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@username", SqlDbType.VarChar);
        cmd.Parameters["@username"].Value = s;
        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            string startdate = rdr.GetDateTime(rdr.GetOrdinal("start_date")).ToString();
            string enddate = rdr.GetDateTime(rdr.GetOrdinal("end_date")).ToString();
            string requestdate = rdr.GetDateTime(rdr.GetOrdinal("request_date")).ToString();
            string mresponse = rdr.GetString(rdr.GetOrdinal("manager_response"));
            string hrresponse = rdr.GetString(rdr.GetOrdinal("hr_response"));
            Label r = new Label();
            r.Text = "  <br /> <br />" + "Request Date :" + requestdate + "  <br /> <br />" + "Start Date :" + "  <br /> <br />" + startdate
                + "  <br /> <br />" + "End Date" + "  <br /> <br />" + enddate + "  <br /> <br />" + "Manager Response" + "  <br /> <br />" + mresponse + "  <br /> <br />" + "Hr Reponse" + "  <br /> <br />" + hrresponse + "  <br /> <br />" + "_____________________";
            form4.Controls.Add(r);
        }
    }
    protected void deleteRequests(object sender,EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["Username"].ToString();
        SqlCommand cmd = new SqlCommand("delete_outdated", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@username", SqlDbType.VarChar);
        cmd.Parameters["@username"].Value = s;
        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
        }


    }
    protected void viewAnn(object sender, EventArgs e)
    {

        Response.Redirect("Announcements", true);

    }
}