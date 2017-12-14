using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Announcements : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["Username"].ToString();
        SqlCommand cmd = new SqlCommand("view_announcements", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@username", SqlDbType.VarChar);
        cmd.Parameters["@username"].Value = s;
        conn.Open();    
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            string date = rdr.GetDateTime(rdr.GetOrdinal("date")).ToString();
            string title = rdr.GetString(rdr.GetOrdinal("title"));
            string description = rdr.GetString(rdr.GetOrdinal("description"));
            string type = rdr.GetString(rdr.GetOrdinal("type"));
            Label l = new Label();
            l.Text = "  <br /> <br />" + "<span class=\"label label-default\" > Title </span>" + "<br/> <br/>" + title+"<br/> <br/>"+ "<span class=\"label label-success\" >"+date+ "</span>" + "<br/> <br/>"+ "<span class=\"label label-info\" >" + type + "</span>"+ "<br/> <br/>"+description;
            form1.Controls.Add(l);

        }
    }
}