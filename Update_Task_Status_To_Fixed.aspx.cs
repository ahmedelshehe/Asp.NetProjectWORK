using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

    public partial class Update_Task_Status_To_Fixed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Update_Task_Status_To_Fixed", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter reg_employee = new SqlParameter("@employee", TextBox1.Text);
            cmd.Parameters.Add(reg_employee);
            conn.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Successfully Assigned ");
            Session["@employee"] = reg_employee;
            Response.Redirect("WebForm8");
        }
    }
