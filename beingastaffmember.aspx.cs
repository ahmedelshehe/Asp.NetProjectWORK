using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

    public partial class beingastaffmember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("beingastaffmember", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter username = new SqlParameter("@uname", TextBox1.Text);
            SqlParameter annual_leave = new SqlParameter("@annual_leave", TextBox2.Text);
            SqlParameter company_email = new SqlParameter("@company_email", TextBox3.Text);
            SqlParameter day_off = new SqlParameter("@day_off", TextBox4.Text);
            SqlParameter salary = new SqlParameter("@salary", TextBox5.Text);
            SqlParameter code = new SqlParameter("@code", TextBox6.Text);
            SqlParameter email = new SqlParameter("@email", TextBox7.Text);
            SqlParameter title = new SqlParameter("@title", TextBox8.Text);
            cmd.Parameters.Add(username);
            cmd.Parameters.Add(annual_leave);
            cmd.Parameters.Add(company_email);
            cmd.Parameters.Add(day_off);
            cmd.Parameters.Add(salary);
            cmd.Parameters.Add(code);
            cmd.Parameters.Add(email);
            cmd.Parameters.Add(title);
            conn.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Successfully Assigned ");
            Session["uname"] = username;
            Session["annual_leave"] = annual_leave;
            Session["company_email"] = company_email;
            Session["dayoff"] = day_off;
            Session["salary"] = salary;
            Session["code"] = code;
            Session["email"] = email;
            Session["title"] = title;
            Response.Redirect("WebForm5");
        }
    }
