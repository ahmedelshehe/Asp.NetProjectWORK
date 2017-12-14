using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class ViewRequests : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("Request_response", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter Username = new SqlParameter("@manager", TextBox2.Text);
        SqlParameter Applicant = new SqlParameter("@employee", TextBox3.Text);
        SqlParameter Respond = new SqlParameter("@response", TextBox4.Text);
        SqlParameter Reason = new SqlParameter("@reason", TextBox5.Text);

        cmd.Parameters.Add(Respond);
        cmd.Parameters.Add(Reason);
        cmd.Parameters.Add(Username);
        cmd.Parameters.Add(Applicant);

        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Write("Successfully Respond ");
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}