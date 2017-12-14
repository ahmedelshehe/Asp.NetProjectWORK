using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class viewApplication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("Mngr_Accept_or_reject_Applicant", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter jobseeker = new SqlParameter("@job_seeker", TextBox2.Text);
        SqlParameter response = new SqlParameter("@mngr_response", TextBox3.Text);


        cmd.Parameters.Add(response);
        cmd.Parameters.Add(jobseeker);
  
        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Write("Successfully Respond ");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}