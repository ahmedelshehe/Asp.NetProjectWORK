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

public partial class Request : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_trip_request(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["Username"].ToString();

        SqlCommand cmd = new SqlCommand("trip_request", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@applicant", SqlDbType.VarChar);
        cmd.Parameters["@applicant"].Value = s;
        string d1 = startdate.Text;
        string d2 = enddate.Text;
        string ds = destination.Text;
        string p = purpose.Text;
        cmd.Parameters.Add("@start_date", SqlDbType.Date);
        cmd.Parameters["@start_date"].Value = d1;
        cmd.Parameters.Add("@end_date", SqlDbType.Date);
        cmd.Parameters["@end_date"].Value = d2;
        cmd.Parameters.Add("@destination", SqlDbType.VarChar);
        cmd.Parameters["@destination"].Value = ds;
        cmd.Parameters.Add("@purpose", SqlDbType.VarChar);
        cmd.Parameters["@purpose"].Value = p;
        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
        }
        Response.Write("Request Submitted");
    }
    protected void submit_leave_request(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["Username"].ToString();

        SqlCommand cmd = new SqlCommand("sleave_request", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@applicant", SqlDbType.VarChar);
        cmd.Parameters["@applicant"].Value = s;
        string d1 = startdate2.Text;
        string d2 = enddate2.Text;
        string t = type.Text;
        
        cmd.Parameters.Add("@start_date", SqlDbType.Date);
        cmd.Parameters["@start_date"].Value = d1;
        cmd.Parameters.Add("@end_date", SqlDbType.Date);
        cmd.Parameters["@end_date"].Value = d2;
        cmd.Parameters.Add("@type", SqlDbType.VarChar);
        cmd.Parameters["@type"].Value = t;
        
        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (rdr.Read())
        {
        }
        Response.Write("Request Submitted");
    }
    protected void trip_request(object sender, EventArgs e)
    {
        form1.Visible = true;
        form2.Visible = false;
        tripRequest.Visible = false;
        leaveRequest.Visible = false;
        
    }
    protected void leave_request(object sender, EventArgs e)
    {
        form2.Visible = true;
        form1.Visible = false;
        tripRequest.Visible = false;
        leaveRequest.Visible = false;
    }
}
