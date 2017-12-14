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

public partial class results : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["stext"].ToString();
        SqlCommand cmd = new SqlCommand("Search_Companies", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@text", SqlDbType.VarChar);
        cmd.Parameters["@text"].Value = s;

        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (rdr.Read())
        {
            string companyName = rdr.GetString(rdr.GetOrdinal("name"));
            string companyType = rdr.GetString(rdr.GetOrdinal("type"));
            string companyAddress = rdr.GetString(rdr.GetOrdinal("address"));
            string companyemail = rdr.GetString(rdr.GetOrdinal("email"));

            Label lcompanyType = new Label();
            lcompanyType.Text = "  <br /> <br />" + "<span class=\"label label-default\" > Company Name</span>" + "     " + companyName + "  <br /> <br />" + "<span class=\"label label-default\" > Company Type</span>" + "    " + companyType + "  <br /> <br />" + "<span class=\"label label-default\" > Company Address</span>" + "     " + companyAddress + "  <br /> <br />" + "<span class=\"label label-default\" > Email</span>" + "    " + companyemail + "  <br /> <br />";
            form1.Controls.Add(lcompanyType);
            Button b = new Button();
            b.Text = "View Profile";
            string id = companyemail;
            b.ID = id;
            b.CssClass = "btn btn-default";
            b.Click += new EventHandler(this.viewInfo);
            b.OnClientClick = "viewInfo";
            form1.Controls.Add(b);

        }
    }
    void viewInfo(object sender,
                           EventArgs e)
    {

        Button clickedButton = (Button)sender;
        Session["email"] = clickedButton.ID;
        Response.Redirect("companyProfile", true);

    }
}