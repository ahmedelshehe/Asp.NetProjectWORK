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

public partial class dJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd2 = new SqlCommand("getJobs", conn);
        string s = Session["email"].ToString();
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@email", SqlDbType.VarChar);
        cmd2.Parameters["@email"].Value = s;
        cmd2.Parameters.Add("@code", SqlDbType.Int);
        string c1= Session["code"].ToString();
        var c = Int32.Parse(c1);
        cmd2.Parameters["@code"].Value = c;
        conn.Open();
        SqlDataReader rdr = cmd2.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            string title = rdr.GetString(rdr.GetOrdinal("title"));
            string shortd = rdr.GetString(rdr.GetOrdinal("short_description"));
            string detaild = rdr.GetString(rdr.GetOrdinal("detailed_description"));
            string min = rdr.GetString(rdr.GetOrdinal("min_experience"));
            Decimal salary = rdr.GetDecimal(rdr.GetOrdinal("salary"));
            var working_hours = rdr.GetInt32(rdr.GetOrdinal("working_hours"));

            Label l = new Label();
            l.Text = "<span class=\"label label-default\" > Job Title</span>" + title + "<br/> <br/>" + "<span class=\"label label-info\" > Short Description</span>" + shortd + "  <br /> <br />" + "<span class=\"label label-warning\" > Detailed Description</span>" + detaild + "  <br /> <br />" + "<span class=\"label label-danger\" > Min. Experience</span>" + min + "  <br /> <br />" + "<span class=\"label label-success\" > Salary</span>" + salary + "  <br /> <br />" + "<span class=\"label label-primary\" > Working Hours</span>" + working_hours + "  <br /> <br />";
            l.Font.Size = 12;

            Label l2 = new Label();
            l2.Font.Size = 17;
            l2.Text = "______________________________" + "  <br /> <br />" + "<span class=\"label label-info\" > Job Information</span>" + "  <br /> <br />";
            form1.Controls.Add(l2);
            form1.Controls.Add(l);

        }
    }
}