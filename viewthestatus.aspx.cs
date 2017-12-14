using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

    public partial class viewthestatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("jobseekerscore", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter score = new SqlParameter("@score", TextBox1.Text);
            cmd.Parameters.Add(score);
            conn.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Successfully Assigned ");
            Session["score"] = score;
            Response.Redirect("WebForm1");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("displayingstatus", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter score = new SqlParameter("@score", TextBox2.Text);
            SqlParameter hr_response = new SqlParameter("@hrresponse", TextBox3.Text);
            SqlParameter managerresponse = new SqlParameter("@managerresponse", TextBox4.Text);
            cmd.Parameters.Add(score);
            cmd.Parameters.Add(hr_response);
            cmd.Parameters.Add(managerresponse);
            conn.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Successfully Assigned ");
            Session["score"] = score;
            Session["hrresponse"] = hr_response;
            Session["managerresponse"] = managerresponse;
            Response.Redirect("WebForm2");
        }
    }
