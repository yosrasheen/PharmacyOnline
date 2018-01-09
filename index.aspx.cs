using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            pnlLogin.Visible = true;
            pnlSignIn.Visible = false;
            lnkUSerName.Text = Session["UserName"].ToString();

        }
        else
        {
            pnlSignIn.Visible = true;
            pnlLogin.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}