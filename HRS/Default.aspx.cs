using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace HRS
{
    public partial class Default : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }



        public void Clear()
        {
            txtName.Text = txtEmail.Text = txtMssg.Text = "";
            btnSubmit.Enabled = false;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

          
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                string insertQuery = "INSERT INTO enquiry (ename, email, mssg) OUTPUT inserted.Id VALUES (@ename,@email,@mssg)";
                SqlCommand comd = new SqlCommand(insertQuery,conn);
               // comd.Parameters.AddWithValue("@Id",Convert.ToInt16(Id.Text));
                comd.Parameters.AddWithValue("@ename", txtName.Text);
                comd.Parameters.AddWithValue("@email", txtEmail.Text);
                comd.Parameters.AddWithValue("@mssg", txtMssg.Text);
                comd.ExecuteNonQuery();

                Response.Write("<script>alert('Your Enquiry Has been successfully Submitted. We will get back to you asap!')</script>");
                //result.Visible = true;
                conn.Close();
                 Clear();
            
            
        }
    }
}