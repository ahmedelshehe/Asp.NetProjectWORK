using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class DeleteEmp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ProjectConnectionString"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("remove_employee_from_project", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter Employee = new SqlParameter("@emoloyee", TextBox1.Text);


        cmd.Parameters.Add(Employee);


        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Write("Successfully Deleted ");
    }
}