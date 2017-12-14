using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

    public partial class ApplyForTheJob: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("applyforthejob", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter username = new SqlParameter("@uname", TextBox1.Text);
            SqlParameter yearsofexperience = new SqlParameter("@yearsofexperience", TextBox5.Text);
            SqlParameter title = new SqlParameter("@jobtitle", TextBox2.Text);
            SqlParameter code = new SqlParameter("@dcode", TextBox3.Text);
            SqlParameter email = new SqlParameter("@cemail", TextBox4.Text);
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
            Response.Redirect("WebForm3");
        }
        }
    
