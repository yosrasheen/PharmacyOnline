using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SigninBtn_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pharmacy1ConnectionString"].ToString());
        string query = "select * from log_in where username ='" + txtUserName.Text + "' and password='" + txtPassword.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = query;

        con.Open();

        SqlDataReader r = cmd.ExecuteReader();
        if (r.HasRows)
        {
            r.Read();
            Session["UserName"] = r["UserName"];
            Session["Type"] = r["Type"];
            if (Session["Type"].ToString() == "Patient")
                Response.Redirect("~/index.aspx", true);
            if (Session["Type"].ToString() == "Admin")
                Response.Redirect("~/AdminHome.aspx", true);
            if (Session["Type"].ToString() == "physicien")
                Response.Redirect("~/PhysicianDrug.aspx", true);

            lblMessage.Visible = true;
        }
        else
        {
            lblMessage.Visible = true;
        }

        con.Close();
    }
}