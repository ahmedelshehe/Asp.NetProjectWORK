using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

    public partial class deletejobapplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("deletejobapplication", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter username = new SqlParameter("@uname", TextBox1.Text);
            SqlParameter yearsofexperience = new SqlParameter("@yearsofexperience", TextBox2.Text);
            SqlParameter title = new SqlParameter("@jobtitle", TextBox3.Text);
            SqlParameter code = new SqlParameter("@dcode", TextBox4.Text);
            SqlParameter email = new SqlParameter("@cemail", TextBox5.Text);
            cmd.Parameters.Add(username);
            cmd.Parameters.Add(yearsofexperience);
            cmd.Parameters.Add(title);
            cmd.Parameters.Add(code);
            cmd.Parameters.Add(email);
            conn.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Successfully Assigned ");
            Session["uname"] = username;
            Session["yearsofexperience"] = yearsofexperience;
            Session["title"] = title;
            Session["code"] = code;
            Session["email"] = email;
            Response.Redirect("WebForm4");
        }
    }
