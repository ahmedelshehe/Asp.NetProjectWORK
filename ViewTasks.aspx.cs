using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class ViewTasks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
        TextBox3.Visible = false;
        Button2.Visible = false;
        Button3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        TextBox4.Visible = false;
        Button4.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String Regname = GridView1.SelectedRow.Cells[7].Text;
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("Update_Task_Status_To_Fixed", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter name = new SqlParameter("@employee", Regname);


        cmd.Parameters.Add(name);

        conn.Open();
        cmd.ExecuteNonQuery();
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        String Regname = GridView1.SelectedRow.Cells[7].Text;
        string connStr = ConfigurationManager.ConnectionStrings["ProjectConnectionString"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("Update_Task_Status_To_Assigned", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter name = new SqlParameter("@employee", Regname);
        SqlParameter deadline = new SqlParameter("@deadline", TextBox3.Text);

        cmd.Parameters.Add(name);
        cmd.Parameters.Add(deadline);

        conn.Open();
        cmd.ExecuteNonQuery();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Visible = true;
        TextBox3.Visible = true;
        Button2.Visible = true;
        Button3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        TextBox4.Visible = true;
        Button4.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        String tasknamegrid = GridView1.SelectedRow.Cells[1].Text;
        string connStr = ConfigurationManager.ConnectionStrings["ProjectConnectionString"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("update_Employee_Task", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter employee = new SqlParameter("@employee", TextBox4.Text);
        SqlParameter taskname = new SqlParameter("@Taskname", tasknamegrid);

        cmd.Parameters.Add(employee);
        cmd.Parameters.Add(taskname);

        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Redirect("ViewTasks.aspx");
        Response.Write("Successfully assigned ");
        
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label3.Visible = true;
        TextBox3.Visible = true;
        Button2.Visible = true;
        Button3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        TextBox4.Visible = true;
        Button4.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManagerProfile.aspx");
    }
}