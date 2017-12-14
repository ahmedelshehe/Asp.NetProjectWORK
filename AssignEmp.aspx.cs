using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class AssignEmp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("AssignEmployeeProject", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter project_name = new SqlParameter("@project_name", TextBox1.Text);
        SqlParameter company = new SqlParameter("@company", TextBox2.Text);
        SqlParameter emp = new SqlParameter("@employee", TextBox3.Text);
        SqlParameter Manager = new SqlParameter("@manager", TextBox4.Text);



        cmd.Parameters.Add(project_name);
        cmd.Parameters.Add(company);
        cmd.Parameters.Add(emp);
        cmd.Parameters.Add(Manager);


        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Write("Successfully Assigned ");
    }
}