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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMssg.Visible = false;
            }
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);

                conn.Open();


                SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE studId=@studId AND password=@password", conn);
                cmd.Parameters.AddWithValue("@studId", txtStudId.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        
                        Session["studId"] = dr["studId"].ToString();
                        Session["fName"] = dr["fName"].ToString();
                        int userRole = Convert.ToInt16(dr["isAdmin"].ToString());

                        switch (userRole)
                        {
                           
                            case 0:
                                Response.Write("<script>alert('WELCOME TO OUR HALLS OF RESIDENCE !');</script>");
                                Response.Redirect("~/rooms.aspx");
                                break;
                            case 1:
                                Response.Write("<script>alert('Welcome ADMIN!');</script>");
                                Response.Redirect("~/siteAdmin.aspx");
                                break;

                        }
                    }
                }
                else
                {
                    dr.Close();
                    lblMssg.Visible = true;
                     lblMssg.Text = "ID or Password is incorrect !";
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
          //  Response.Redirect("~/rooms.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signup.aspx");
        }
    }
}