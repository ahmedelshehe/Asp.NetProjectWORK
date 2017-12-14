using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

    public partial class viewemployeetasks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Employee_Tasks", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            conn.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Successfully Assigned ");
            Response.Redirect("WebForm7");
        }
    }
