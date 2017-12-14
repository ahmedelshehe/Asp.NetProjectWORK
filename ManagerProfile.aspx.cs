using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagerProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManagerViewRequests.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewApplication.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateProject.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("DefineTask.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteEmp.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewTasks.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("AssignEmp.aspx");
    }
}