using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void register(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("registerVal", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string username = UserName.Text;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        
        // output parm
        SqlParameter count = cmd.Parameters.Add("@id", SqlDbType.Int);
        count.Direction = ParameterDirection.Output;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        if (count.Value.ToString().Equals("0"))
        {
            FailureText.Text = "This Username is not unique";
            ErrorMessage.Visible = true;
        }else if(Password.Text!=Password2.Text)
        {
            FailureText.Text = "The Password Do Not Match";
            ErrorMessage.Visible = true;

        }
        else
        {
            string connStr2 = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection conn2 = new SqlConnection(connStr);

            SqlCommand cmd2 = new SqlCommand("userregisteration", conn);
            cmd2.CommandType = CommandType.StoredProcedure;
            string username1 = UserName.Text;
            cmd2.Parameters.Add(new SqlParameter("@username", username1));
            string password = Password.Text;
            cmd2.Parameters.Add(new SqlParameter("@password", password));
            string personalEmail = pe.Text;
            cmd2.Parameters.Add(new SqlParameter("pemail", personalEmail));
            string birthdate = birth.Text;
            cmd2.Parameters.Add("@birthdate", SqlDbType.Date);
            cmd2.Parameters["@birthdate"].Value = birthdate;
            
            string first_name = first.Text;
            cmd2.Parameters.Add(new SqlParameter("@firstname", first_name));
            string middle_name =middle.Text;
            cmd2.Parameters.Add(new SqlParameter("@middlename", middle_name));
            string last_name = last.Text;
            cmd2.Parameters.Add(new SqlParameter("@lastname", last_name));
            var years = exp.Text;
            cmd2.Parameters.Add(new SqlParameter("@yearsofexperience", years));
            conn.Open();
            cmd2.ExecuteNonQuery();
            conn.Close();
            Session["Username"] = username1;
            Response.Redirect("Companies");
        }
    }
}