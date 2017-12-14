using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class CreateProject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("create_new_project", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter name = new SqlParameter("@name", TextBox1.Text);
        SqlParameter company = new SqlParameter("@company", TextBox2.Text);
        SqlParameter start = new SqlParameter("@Start_date", TextBox3.Text);
        SqlParameter end = new SqlParameter("@end_date", TextBox4.Text);
        SqlParameter manager = new SqlParameter("@manager", TextBox5.Text);



        cmd.Parameters.Add(name);
        cmd.Parameters.Add(company);
        cmd.Parameters.Add(start);
        cmd.Parameters.Add(end);
        cmd.Parameters.Add(manager);


        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Write("Successfully Created ");
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}