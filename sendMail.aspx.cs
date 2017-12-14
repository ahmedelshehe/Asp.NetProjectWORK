using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sendMail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["recipient"] != null)
        {
            recipient.Text = Session["recipient"].ToString();
        }
    }
    protected void sendm(object sender,EventArgs e)
    {
        string r=recipient.Text;
        string s = subject.Text;
        string b = body.Text;
        string username = Session["Username"].ToString();
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("send_mail", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@recpient", r));
        cmd.Parameters.Add(new SqlParameter("@subject", s));
        cmd.Parameters.Add(new SqlParameter("@body", b));
        
        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {

        }
        Response.Write("Mail Sent!");

    }
}