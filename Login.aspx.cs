using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Providers.Entities;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("loginProcedure", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string username = UserName.Text;
        string password = Password.Text;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@password", password));
        //SqlParameter pass = cmd.Parameters.Add("@password", SqlDbType.VarChar, 50);
        //pass.Value = password;

        // output parm
        SqlParameter count = cmd.Parameters.Add("@count", SqlDbType.Int);
        count.Direction = ParameterDirection.Output;

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        if (count.Value.ToString().Equals("1"))
        {
            
            Session["Username"] = username;
            
            string connStr2 = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            SqlConnection conn2 = new SqlConnection(connStr2);

            SqlCommand cmd2 = new SqlCommand("redeirectUser", conn2);
            cmd2.CommandType = CommandType.StoredProcedure;
            string username1 = UserName.Text;
            
            cmd2.Parameters.Add(new SqlParameter("@username", username));
            
            

            // output parm
            SqlParameter id = cmd2.Parameters.Add("@id", SqlDbType.Int);
            id.Direction = ParameterDirection.Output;

            conn2.Open();
            cmd2.ExecuteNonQuery();
            conn2.Close();
            if (id.Value.ToString().Equals("3"))
            {
                Response.Redirect("ManagerProfile", true);

            }else if (id.Value.ToString().Equals("2"))
            {
                Response.Redirect("sProfile", true);
            }else
            {
                Response.Redirect("Companies", true);
            }
        }
        else
        {
            Response.Write("Failed");
        }
    }
}