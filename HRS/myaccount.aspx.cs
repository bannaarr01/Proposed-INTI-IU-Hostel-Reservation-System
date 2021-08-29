using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Collections;

namespace HRS
{
    public partial class myaccount : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);
        string stID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fName"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            if (Session["studId"] != null)
            {
                string IDE = Session["studId"].ToString();
                stID = IDE;
            }

            if (!this.IsPostBack) { 
            this.loadProfile();
            }

            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
            //this.fillData();

            //string fName = HttpContext.Current.Session["fName"].ToString();
        }


        private void BindGrid()
        {
            conn.Open();
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM [reservation] WHERE studId=@idstud ORDER BY bookedDate DESC"))
                    
                {
                    cmd.Parameters.AddWithValue("@idstud", stID);

                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = conn;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            //GvCust.DataSource = dt;
                            //  GvCust.DataBind();
                            gvReservations.DataSourceID = null;
                            gvReservations.DataSource = dt;
                            gvReservations.DataBind();
                        }
                    }
                }
                conn.Close();
            }

        }

        protected void loadProfile()
        {

            conn.Open();


            SqlCommand cmd = new SqlCommand("SELECT * FROM [users] WHERE studId = @studId", conn);
            cmd.Parameters.AddWithValue("studId", stID);
            SqlDataReader dr = cmd.ExecuteReader();
            bool recordfound = dr.Read(); //Local variable = recordfound
            if (recordfound)
            {
                lblResult.Text = "G'Day"+" "+dr["fName"].ToString() +" "+ dr["lName"].ToString();
                //txtName.Text = dr["fName"].ToString();
                //txtEmail.Text = dr["email"].ToString();
                //txtMssg.Text = dr["permAddress"].ToString();
                //imgCheck.ImageUrl = dr["studentAvatar"].ToString();
                lblIDD.Text = ": " + stID;
                //lblFirstName.Text = ": "+ dr["fName"].ToString();
               // lblLastName.Text = ": " + dr["lName"].ToString();
                lblPhone.Text = ": " + dr["phone"].ToString();
                lblEmail.Text = ": " + dr["email"].ToString();
                lblNation.Text = ": " + dr["nationality"].ToString();
               // lblDob.Text = ": " + dr["dob"].ToString();
             //   lblGender.Text = ": " + dr["gender"].ToString();
                lblPgEnroll.Text = ": " + dr["prgEnrolled"].ToString();
                lblPermAddr.Text = ": " + dr["permAddress"].ToString();
              //  lblMembSnc.Text = ": " + dr["regDate"].ToString();
                imgCheck.ImageUrl = dr["studentAvatar"].ToString();

            }
            else
            {
                lblResult.Text = "Could Not Load User's Account....";
                lblResult.ForeColor = System.Drawing.Color.Red;
               

            }
            conn.Close();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
           
            if (fuImg.HasFile)
            {
                try
                {
                    if (fuImg.PostedFile.ContentType == "image/jpeg" || fuImg.PostedFile.ContentType == "image/png")
                    {
                        if (fuImg.PostedFile.ContentLength <= 15360000)
                        {
                            string filename = Path.GetFileName(fuImg.FileName);
                            fuImg.SaveAs(Server.MapPath("~/img/users/") + filename);
                            string link = "~/img/users/" + Path.GetFileName(fuImg.FileName);
                            imgCheck.ImageUrl = link;
                            lblStatus.Text = "Upladed status: Successful!";
                            lblStatus.ForeColor = System.Drawing.Color.Green;
                            conn.Open();
                            string UpdateQuery = "UPDATE users SET studentAvatar=@imgFile WHERE studId=@studId";
                            SqlCommand com = new SqlCommand(UpdateQuery, conn);
                            com.Parameters.AddWithValue("@studId", stID);
                            com.Parameters.AddWithValue("@imgFile", link);
                            com.ExecuteNonQuery();
                           
                            Response.Write("<script>alert('Image Uploaded successfully!')</script>");
                            conn.Close();
                        }
                        else
                        {
                            lblStatus.Text = "Upladed status: File has to be less than 150MB!";
                            lblStatus.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        lblStatus.Text = "Upladed status: We accept only image files!";
                        lblStatus.ForeColor = System.Drawing.Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    lblStatus.Text = "Upladed status: The file could not be uploaded! The following error occured: " + ex.Message;
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btnDeleteImg_Click(object sender, EventArgs e)
        {
            string avata = "";
            conn.Open();
            SqlCommand cmd = new SqlCommand("UPDATE users SET studentAvatar='" + avata + "'where studId='" + stID + "'", conn);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Your Profile Image has been Sucessfully Deleted !');window.location='myaccount.aspx';", true);

            conn.Close();
        }

        protected void btnEditProf_Click(object sender, EventArgs e)
        {
            btnEditProf.Visible = false;
            lblIDD.Visible = true;

            lblPhone.Visible = true;
            lblEmail.Visible = true;
            lblNation.Visible = true;
            lblPgEnroll.Visible = true;
            lblPermAddr.Visible = true;

            lblshowProf.Visible = false;


            btnUpdatChanges.Visible = true;


            lblEditPrfl.Visible = true;
            txtPhone.Visible = true;
            txtEmail.Visible = true;
            txtNation.Visible = true;
            txtPgEnroll.Visible = true;
            txtMssg.Visible = true;

            hnlBack.Visible = false;
            hnlBack2.Visible = true;

            //imgCheck.Visible = false;
            //fuImg.Visible = false;
            //btnUpload.Visible = false;
            //btnDeleteImg.Visible = false;

        }

      

        private void updateData()
        {
           

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
                string UpdateSql = "UPDATE users SET phone=@phone, email=@email, nationality=@nationality, prgEnrolled=@prgEnrolled, permAddress=@permAddress WHERE studId=@iid";
                SqlCommand commdd = new SqlCommand(UpdateSql, conn);
                {
                    commdd.Parameters.AddWithValue("@iid", stID);
                    commdd.Parameters.AddWithValue("@phone", txtPhone.Text);
                    commdd.Parameters.AddWithValue("@email", txtEmail.Text);
                    commdd.Parameters.AddWithValue("@nationality", txtNation.Text);
                    commdd.Parameters.AddWithValue("@prgEnrolled", txtPgEnroll.Text);
                    commdd.Parameters.AddWithValue("@permAddress", txtMssg.Text);

                    commdd.ExecuteNonQuery();
                }
                ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Profile Updated Sucessfully!');window.location='myaccount.aspx';", true);
                commdd.Dispose();
                conn.Close();
               
            }


        }
        protected void btnUpdatChanges_Click(object sender, EventArgs e)
        {
            this.updateData();



            btnEditProf.Visible = true;
          
            btnUpdatChanges.Visible = false;


            lblIDD.Visible = true;
            lblPhone.Visible = true;
            lblEmail.Visible = true;
            lblNation.Visible = true;
            lblPgEnroll.Visible = true;
            lblPermAddr.Visible = true;
            lblshowProf.Visible = true;

            lblEditPrfl.Visible = false;
            txtPhone.Visible = false;
            txtEmail.Visible = false;
            txtNation.Visible = false;
            txtPgEnroll.Visible = false;
            txtMssg.Visible = false;

        }

        protected void gvReservations_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvReservations.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        protected void gvReservations_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = gvReservations.SelectedRow;
            this.BindGrid();
        }
    }
}