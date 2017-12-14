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

public partial class companyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string s = Session["email"].ToString();
        SqlCommand cmd = new SqlCommand("viewInfo" , conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@email", SqlDbType.VarChar);
        cmd.Parameters["@email"].Value = s;
        SqlCommand cmd2 = new SqlCommand("getDep", conn);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@email", SqlDbType.VarChar);
        cmd2.Parameters["@email"].Value = s;
        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.Default);
        while (rdr.Read())
        {
            string companyName = rdr.GetString(rdr.GetOrdinal("name"));
            string companyType = rdr.GetString(rdr.GetOrdinal("type"));
            string companyAddress = rdr.GetString(rdr.GetOrdinal("address"));
            string companyemail = rdr.GetString(rdr.GetOrdinal("email"));
            Label lcompanyType = new Label();
            lcompanyType.Text = "  <br /> <br />" + "<span class=\"label label-success\" > Company Name</span>" + "     " + companyName + "  <br /> <br />" + "<span class=\"label label-default\" > Company Type</span>" + "    " + companyType + "  <br /> <br />" + "<span class=\"label label-default\" > Company Address</span>" + "     " + companyAddress + "  <br /> <br />" + "<span class=\"label label-default\" > Email</span>" + "    " + companyemail + "  <br /> <br />";
            form1.Controls.Add(lcompanyType);

        }
        conn.Close();
        conn.Open();
        SqlDataReader rdr2 = cmd2.ExecuteReader(CommandBehavior.CloseConnection);
        while(rdr2.Read())
        {
            string name = rdr2.GetString(rdr2.GetOrdinal("name"));
            var code = rdr2.GetInt32(rdr2.GetOrdinal("code"));
            Label dep = new Label();
            dep.Text = "  <br /> <br />"+ "<span class=\"label label-info\" > " + "Department of " + name + "</span>" + "  <br /> <br />";
            form2.Controls.Add(dep);
            Button b = new Button();
            b.Text = "View Jobs";
            string c = code.ToString();
            b.ID =c;
            b.CssClass = "btn btn-default";
            b.Click += new EventHandler(this.viewJobs);
            b.OnClientClick = "viewJobs";
           form2.Controls.Add(b);
        }

    }
    void viewJobs(object sender,
                           EventArgs e)
    {

        Button clickedButton = (Button)sender;
        Session["code"] = clickedButton.ID;
        Response.Redirect("dJobs", true);

    }

}