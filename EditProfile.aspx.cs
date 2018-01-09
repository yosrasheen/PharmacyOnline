using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }
    void LoadData()
    {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pharmacy1ConnectionString"].ToString());
        string query = "SELECT        PATIENT.Ssn, PATIENT.First1, PATIENT.Middle, PATIENT.Last1, PATIENT.Gender, PATIENT.Email, PATIENT.City, PATIENT.Street, PATIENT.Zip, PATIENT.Address, "+
                       "  PATIENT.Telephone, PATIENT.Cname, PATIENT.Edate, PATIENT.Sdate, PATIENT.CTelephone, PATIENT.Height, PATIENT.Weight, PATIENT.Birth, PATIENT.Disease, "+
                        " PATIENT.Date, PATIENT.Description,PATIENT.hasInsurance, log_in.UserName, log_in.Password, log_in.Type, log_in.Patient_Ssn, log_in.specialist_Id "+
"FROM            log_in INNER JOIN "+
 "                        PATIENT ON log_in.Patient_Ssn = PATIENT.Ssn "+
"WHERE        (log_in.UserName = '"+Session["UserName"].ToString()+"')";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = query;

        con.Open();

        SqlDataReader r = cmd.ExecuteReader();
        if (r.HasRows)
        {
            r.Read();
            txtSsn.Text = r["Ssn"].ToString();
            txtFirstName.Text = r["First1"].ToString();
            txtMidleName.Text = r["Middle"].ToString();
            txtLastName.Text = r["Last1"].ToString();
            ddlGender.SelectedValue = r["Gender"].ToString();
            txtEmail.Text = r["Email"].ToString();
            txtCity.Text = r["City"].ToString();
            txtStreet.Text = r["Street"].ToString();
            txtZip.Text = r["Zip"].ToString();
            txtAddress.Text = r["Address"].ToString();
            txtTelephone.Text = r["Telephone"].ToString();
            txtCompanyName.Text = r["Cname"].ToString();
            txtEndDate.Text = r["Edate"].ToString();
            txtStartDate.Text = r["Sdate"].ToString();
            txtComanyTelephone.Text = r["CTelephone"].ToString();
            txtHeight.Text = r["Height"].ToString();
            txtWeight.Text = r["weight"].ToString();
            txtBirthDate.Text = r["Birth"].ToString();
            txtUserName.Text = Session["UserName"].ToString();
            txtConfirmEmail.Text = r["Email"].ToString();

            if (Convert.ToBoolean(r["hasInsurance"]))
            {
                rbYes.Checked = true;
                pnlInsurance.Visible = true;
                txtCompanyName.Text = r["Cname"].ToString();
                txtComanyTelephone.Text = r["CTelephone"].ToString();
                txtStartDate.Text = r["Sdate"].ToString();
                txtEndDate.Text = r["Edate"].ToString();


            }
            else
            {
                rbNo.Checked = true;
                pnlInsurance.Visible = false;
            }
           

        }

        con.Close();

    }
    protected void Add_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pharmacy1ConnectionString"].ToString());
        string query = "update Patient set First1='"+txtFirstName.Text +"',"+
            "Middle='"+txtMidleName.Text +"', Last1='"+txtLastName.Text+ "',"+
                "Gender='"+ddlGender.SelectedValue  +"', Email='"+txtEmail.Text+ "',"+
                    "City='"+txtCity.Text +"', Street='"+txtStreet.Text+ "',"+
                        "Zip='"+txtZip.Text +"', Address='"+txtAddress.Text+ "',"+
                            "Telephone='"+txtTelephone.Text +"', Cname='"+txtCompanyName.Text+ "',"+
                                "Edate='"+txtEndDate.Text +"', Sdate='"+txtStartDate.Text +"',"+
                                    "CTelephone='"+txtComanyTelephone.Text +"', Height='"+txtHeight.Text+ "',"+
                                        "Weight='"+txtWeight.Text +"', Birth='"+txtBirthDate.Text+ "',"+
                                        "hasInsurance='"+rbYes.Checked+"' where Ssn='"+txtSsn.Text.Trim() +"'";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = query;

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();
            query = "update log_in set Password='"+txtPassword.Text +"' where username ='"+txtUserName.Text +"'";
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            lblMessage.Text = "your information updated successfull ...";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            pnlMessage.Visible = true;
            pnlRegisteration.Visible = false;
            con.Close();
        }
        catch (Exception ee)
        {
            lblMessage.Text = "error in update : " + ee.Message;
            lblMessage.ForeColor = System.Drawing.Color.Red;
            pnlMessage.Visible = true;
            pnlRegisteration.Visible = false;
        }

        

    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        LoadData();
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (rbYes.Checked)
            pnlInsurance.Visible = true;

    }
    protected void rbNo_CheckedChanged(object sender, EventArgs e)
    {
        if (rbNo.Checked)
        {
            pnlInsurance.Visible = false;
            txtComanyTelephone.Text = string.Empty;
            txtCompanyName.Text = string.Empty;
            txtStartDate.Text = string.Empty;
            txtEndDate.Text = string.Empty;
            txtAddress.Text = string.Empty;
        }
    }
}