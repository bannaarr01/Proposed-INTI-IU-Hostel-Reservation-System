using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace HRS
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "You must be a VALID Student of INTI UI Nilai before you are allowed to register. Click <b>YES</b> if You are a Student";
                txtFname.Enabled = txtPassword.Enabled = txtLname.Enabled = txtStudId.Enabled = txtEmail.Enabled = txtPhone.Enabled = txtPermAddrs.Enabled = txtPgEnrol.Enabled = txtNation.Enabled = txtDob.Enabled = txtGender.Enabled = false;
                btnSubmit.Enabled = false;

                if (rdoType.SelectedIndex !=1)
                {
                    rdoType.SelectedIndex = 1;

                }

              

            }
        }

        public void Enable()
        {
            txtFname.Enabled = txtPassword.Enabled = txtLname.Enabled = txtStudId.Enabled = txtEmail.Enabled = txtPhone.Enabled = txtPermAddrs.Enabled = txtPgEnrol.Enabled = txtNation.Enabled = txtDob.Enabled = txtGender.Enabled = true;
            btnSubmit.Enabled = true;
            lblMsg.Visible = false;
        }
        public void Clear()
        {
            txtFname.Text = txtPassword.Text= txtLname.Text = txtStudId.Text = txtEmail.Text = txtPhone.Text = txtPermAddrs.Text = txtPgEnrol.Text =txtNation.Text = txtDob.Text=txtGender.Text= "";
            btnSubmit.Enabled = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string txtAdmin = "0";
            string studAvart = "";
            string insertQuery = "INSERT into users (studId, email, password, phone, isAdmin, fName, lName, studentAvatar, nationality, dob, gender, prgEnrolled, permAddress, regDate) VALUES  (@studId, @email, @password, @phone, @isAdmin, @fName, @lName, @studentAvatar, @nationality, @dob, @gender, @prgEnrolled, @permAddress, GETDATE())";
            SqlCommand comd = new SqlCommand(insertQuery, conn);
            comd.Parameters.AddWithValue("@studId", txtStudId.Text);
            comd.Parameters.AddWithValue("@email", txtEmail.Text);
            comd.Parameters.AddWithValue("@password", txtPassword.Text);
            comd.Parameters.AddWithValue("@phone", txtPhone.Text);
            comd.Parameters.AddWithValue("@isAdmin", Convert.ToInt16(txtAdmin));
            comd.Parameters.AddWithValue("@fName", txtFname.Text);
            comd.Parameters.AddWithValue("@lName", txtLname.Text);
            comd.Parameters.AddWithValue("@studentAvatar", studAvart);
            comd.Parameters.AddWithValue("@nationality", txtNation.Text);
            comd.Parameters.AddWithValue("@dob", txtDob.Text);
            comd.Parameters.AddWithValue("@gender", txtGender.Text);
            comd.Parameters.AddWithValue("@prgEnrolled", txtPgEnrol.Text);
            comd.Parameters.AddWithValue("@permAddress", txtPermAddrs.Text);
            //comd.Parameters.AddWithValue("@regDate", GETDATE());
            comd.ExecuteNonQuery();

            ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Congratulation !. You are now a Member of INT UI Hostel. Click OK to LOGIN with your student ID and Password');window.location='login.aspx';", true);

            //Response.Write("<script>alert('Congratulation !. You are now a Member of INT UI Hostel. You can Now LOGIN with your student ID and Password')</script>");

            conn.Close();
            Clear();
            //Response.Redirect("~/login.aspx");
        }

        protected void rdoType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rdoType.SelectedIndex == 0)
            {
                Enable();

            }

            if (rdoType.SelectedIndex == 1)
            {
                
                txtFname.Enabled = txtPassword.Enabled = txtLname.Enabled = txtStudId.Enabled = txtEmail.Enabled = txtPhone.Enabled = txtPermAddrs.Enabled = txtPgEnrol.Enabled = txtNation.Enabled = txtDob.Enabled = txtGender.Enabled = false;
            btnSubmit.Enabled = false;
                lblMsg.Visible = true;
            }
        }
    }
}