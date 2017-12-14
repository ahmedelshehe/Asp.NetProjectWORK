using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mailBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["Username"].ToString();
        SqlCommand cmd = new SqlCommand("view_emails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@username", SqlDbType.VarChar);
        cmd.Parameters["@username"].Value = s;
        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            String subject = rdr.GetString(rdr.GetOrdinal("subject"));
            string date = rdr.GetDateTime(rdr.GetOrdinal("date")).ToString();
            string body = rdr.GetString(rdr.GetOrdinal("body"));
            string recipient = rdr.GetString(rdr.GetOrdinal("recipient_username"));
            Label l = new Label();
            l.Text = "  <br /> <br />" + "Subject : " + subject + "  <br /> <br />" + "Date :" + date + "  <br /> <br />" + "Body: " + "  <br /> <br />" + body+ "<br />_________<br />" +"<br/> <br/>";
            l.CssClass = "label label-info";
            l.Width = 257;
            l.Height = 257;
            Button b = new Button();
            b.Text = "Reply";
            string id = recipient;
            b.ID = id;
            b.Click += new EventHandler(this.replymail);
            b.OnClientClick = "replymail";
            Label br= new Label();
            br.Text = "<br/>               <br/>";
            form1.Controls.Add(l);
            form1.Controls.Add(br);
            form1.Controls.Add(br);
            form1.Controls.Add(b);



        }
    }
    protected void view_inbox(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["Username"].ToString();
        SqlCommand cmd = new SqlCommand("view_emails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@username", SqlDbType.VarChar);
        cmd.Parameters["@username"].Value = s;
        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            String subject = rdr.GetString(rdr.GetOrdinal("subject"));
            string date = rdr.GetDateTime(rdr.GetOrdinal("date")).ToString();
            string body = rdr.GetString(rdr.GetOrdinal("body"));
            string recipient = rdr.GetString(rdr.GetOrdinal("recipient_username"));
            Label l = new Label();
            l.Text = "Subject : " + subject + "  <br /> <br />" + "Date :" + date + "  <br /> <br />" + "Body: " + "  <br /> <br />" + body + "  <br /> <br />" + "<br />_________<br />";
            Button b = new Button();
            b.Text = "Reply";
            string id = recipient;
            b.ID = id;
            b.Click += new EventHandler(this.replymail);
            b.OnClientClick = "replymail";
            
            form1.Controls.Add(l);
            form1.Controls.Add(b);

        }
        
    }
     void replymail(object sender,
                           EventArgs e)
    {

        Button clickedButton = (Button)sender;
        Session["recipient"] = clickedButton.ID;

        Response.Redirect("sendmail");
    }
     protected void sendmail(object sender,EventArgs e)
    {
        Session["recipient"] = null;
        Response.Redirect("sendmail", true);
    }

}