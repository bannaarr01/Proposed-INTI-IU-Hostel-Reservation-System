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
    public partial class faq : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = "select * from tFaq "; 

            SqlDataAdapter da = new SqlDataAdapter(query, conn);

            DataSet ds = new DataSet();
            da.Fill(ds, "tFaq");

            //rpFaq.DataSourceID = null;
            rpFaq.DataSource = ds;
            rpFaq.DataMember = "tFaq";
            rpFaq.DataBind();
            conn.Close();
        }


        public void Clear()
        {
            txtName.Text =txtStudId.Text = txtEmail.Text =txtPhone.Text= txtMssg.Text = "";
            btnSubmit.Enabled = false;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string insertQuery = "INSERT INTO contact (sname, studId, email, phone, mssg) OUTPUT inserted.Id VALUES (@sname,@studId,@email,@phone,@mssg)";
            SqlCommand comd = new SqlCommand(insertQuery, conn);
            comd.Parameters.AddWithValue("@sname", txtName.Text);
            comd.Parameters.AddWithValue("@studId", txtStudId.Text);
            comd.Parameters.AddWithValue("@email", txtEmail.Text);
            comd.Parameters.AddWithValue("@phone", Convert.ToInt64(txtPhone.Text));
            comd.Parameters.AddWithValue("@mssg", txtMssg.Text);
            comd.ExecuteNonQuery();

            Response.Write("<script>alert('Your Contact Form Has been successfully Submitted. We will get back to you asap!')</script>");
           
            conn.Close();
            Clear();

        }
    }
}