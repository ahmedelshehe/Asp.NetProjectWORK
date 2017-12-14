using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class DefineTask : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ProjectConnectionString"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("Define_task", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter Task_name = new SqlParameter("@name", TextBox1.Text);
        SqlParameter company = new SqlParameter("@company", TextBox2.Text);
        SqlParameter Project = new SqlParameter("@project", TextBox3.Text);
        SqlParameter deadline = new SqlParameter("@deadline", TextBox4.Text);
        SqlParameter description = new SqlParameter("@description", TextBox5.Text);
        SqlParameter Manager = new SqlParameter("@manager", TextBox6.Text);



        cmd.Parameters.Add(Task_name);
        cmd.Parameters.Add(company);
        cmd.Parameters.Add(Project);
        cmd.Parameters.Add(deadline);
        cmd.Parameters.Add(description);
        cmd.Parameters.Add(Manager);


        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Write("Successfully Defined ");
    }
}