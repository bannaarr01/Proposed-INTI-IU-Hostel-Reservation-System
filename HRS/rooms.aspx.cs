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
    public partial class rooms : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);
        string stID;
        int typePrice;
        int deposit = 1500;
        int total;
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

            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                lblMssg.Visible = false;
                //if (rdoType.SelectedIndex != 0)
                //{
                //    rdoType.SelectedIndex = 0;

                //}

                //if (rdoSession.SelectedIndex != 0)
                //{
                //    rdoSession.SelectedIndex = 0;

                //}


                //if (rdoLocation.SelectedIndex != 0)
                //{
                //    rdoLocation.SelectedIndex = 0;

                //}


                ////LOC2 SECTION 2

                //if (rdoSession2.SelectedIndex != 0)
                //{
                //    rdoSession2.SelectedIndex = 0;

                //}


                //if (rdoLocation2.SelectedIndex != 0)
                //{
                //    rdoLocation2.SelectedIndex = 0;

                //}


                ////LOC3 SECTION 3
                //if (rdoSession3.SelectedIndex != 0)
                //{
                //    rdoSession3.SelectedIndex = 0;

                //}


                //if (rdoLocation3.SelectedIndex != 0)
                //{
                //    rdoLocation3.SelectedIndex = 0;

                //}

            }
            if (MultiView1.ActiveViewIndex == 0)
            {
                lblMssg.Visible = false;
                

            }

            if (MultiView1.ActiveViewIndex == 1)
            {
                lblMssg.Visible = false;
                
            }

            if (MultiView1.ActiveViewIndex == 2)
            {
                lblMssg.Visible = false;
              
            }


        }

      

        protected void btnBookSingleRoom_Click(object sender, EventArgs e)
        {
            if (rdoType.SelectedIndex == 0)
            {
                switch (rdoSession.SelectedIndex)
                {
                    case 4:
                        typePrice = 4380;

                        break;

                    case 3:
                        typePrice = 3650;

                        break;

                    case 2:
                        typePrice = 2920;

                        break;

                    case 1:
                        typePrice = 2190;

                        break;
                    case 0:
                        typePrice = 1460;

                        break;
                }

            }

            if (rdoType.SelectedIndex == 1)
            {
                switch (rdoSession.SelectedIndex)
                {
                    case 4:
                        typePrice = 2580;

                        break;

                    case 3:
                        typePrice = 2150;

                        break;

                    case 2:
                        typePrice = 1720;

                        break;

                    case 1:
                        typePrice = 1290;

                        break;
                    case 0:
                        typePrice = 860;

                        break;
                }

            }

            //TO GET BOOKING TOTAL PRICE
            total = deposit + typePrice;


            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string txtApproved = "0";
            string rumType = "Single Room";
            string insertQuery = "INSERT INTO reservation (roomType, bookedDate, hallChosen, progAndSession, studId, isApproved, totalPrice) OUTPUT inserted.bookingId VALUES (@roomType, GETDATE(), @hallChosen, @progAndSession, @studId, @isApproved, @totalPrice)";
            //string insertQuery = "INSERT into users (studId, email, password, phone, isAdmin, fName, lName, studentAvatar, nationality, dob, gender, prgEnrolled, permAddress, regDate) VALUES  (@studId, @email, @password, @phone, @isAdmin, @fName, @lName, @studentAvatar, @nationality, @dob, @gender, @prgEnrolled, @permAddress, GETDATE())";
            SqlCommand comd = new SqlCommand(insertQuery, conn);
            comd.Parameters.AddWithValue("@roomType", rumType);
            comd.Parameters.AddWithValue("@hallChosen", rdoLocation.SelectedItem.ToString());
            comd.Parameters.AddWithValue("@progAndSession", rdoSession.SelectedItem.ToString());
            comd.Parameters.AddWithValue("@studId", stID);
            comd.Parameters.AddWithValue("@isApproved", Convert.ToInt16(txtApproved));
            comd.Parameters.AddWithValue("@totalPrice", total);
         
            comd.ExecuteNonQuery();
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "success", "alert('Your Booking is Sucessful !'); setInterval(function(){location.href='~/myaccount.aspx';},3000);", true);
            //Response.Write("<script>alert('Your Booking is Sucessful !')</script>");
            ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Your Booking is Sucessful !. Click OK to View Your Booking Details');window.location='myaccount.aspx';", true);
            conn.Close();

            rdoType.ClearSelection();
            rdoLocation.ClearSelection();
            rdoSession.ClearSelection();

            //rdoType.Enabled = false;
            //rdoLocation.Enabled = false;
            //rdoSession.Enabled = false;
            // Response.Write("<script>alert('Your Booking is Sucessful !')</script>");

            //System.Threading.Thread.Sleep(3000);
            //Response.Redirect("~/myaccount.aspx");
            // Response.AddHeader("REFRESH", "3;URL=myaccount.aspx");
            //Clear();

            //  total = deposit + typePrice;
            //  lblMssg.Text = "<br/> Deposit : " + Convert.ToString(deposit) + "<br/> Price : " + Convert.ToString(typePrice) + "<br/> Total : " + Convert.ToString(total); 

            //lblMssg.Text = "<br /> Air Conditioned ? : "  + rdoType.SelectedItem.ToString() + "<br /> Hall Location: " + rdoLocation.SelectedItem.ToString() + "<br /> Session: "+ rdoSession.SelectedItem.ToString()
            // + "<br /> Type Price: " + Convert.ToString(total);
        }

        protected void btnCheckSingleRoom_Click(object sender, EventArgs e)
        {
            if (rdoType.SelectedIndex == 0)
            {
                switch (rdoSession.SelectedIndex)
                {
                    case 4:
                        typePrice = 4380;

                        break;

                    case 3:
                        typePrice = 3650;

                        break;

                    case 2:
                        typePrice = 2920;

                        break;

                    case 1:
                        typePrice = 2190;

                        break;
                    case 0:
                        typePrice = 1460;

                        break;
                }

            }

            if (rdoType.SelectedIndex == 1)
            {
                switch (rdoSession.SelectedIndex)
                {
                    case 4:
                        typePrice = 2580;

                        break;

                    case 3:
                        typePrice = 2150;

                        break;

                    case 2:
                        typePrice = 1720;

                        break;

                    case 1:
                        typePrice = 1290;

                        break;
                    case 0:
                        typePrice = 860;

                        break;
                }

            }


            total = deposit + typePrice;
            lblMssg.Visible = true;
            lblMssg.Text = "<br/> Deposit Fee: " + Convert.ToString(deposit) + "<br/> Price Based on Selection: " + Convert.ToString(typePrice) + "<br/> ---------------------------- "  + "<br/> Total Amount : " + Convert.ToString(total) + "<br/> ---------------------------- ";

        }

        protected void btnCheckTwinRoom_Click(object sender, EventArgs e)
        {
            if (rdoLocation2.SelectedIndex == 3 )
            {
                //rdoLocation22.Enabled = false;
               // rdoLocation22.Items[0].Enabled = false;
                switch (rdoSession2.SelectedIndex)
                {
                    case 4:
                        typePrice = 4260;

                        break;

                    case 3:
                        typePrice = 3550;

                        break;

                    case 2:
                        typePrice = 2840;

                        break;

                    case 1:
                        typePrice = 2130;

                        break;
                    case 0:
                        typePrice = 1420;

                        break;
                }

            }



            if ( rdoLocation2.SelectedIndex == 2)
            {
                switch (rdoSession2.SelectedIndex)
                {
                    case 4:
                        typePrice = 2460;

                        break;

                    case 3:
                        typePrice = 2050;

                        break;

                    case 2:
                        typePrice = 1640;

                        break;

                    case 1:
                        typePrice = 1230;

                        break;
                    case 0:
                        typePrice = 820;

                        break;
                }

            }


            if (rdoLocation2.SelectedIndex == 1)
            {
                switch (rdoSession2.SelectedIndex)
                {
                    case 4:
                        typePrice = 3540;

                        break;

                    case 3:
                        typePrice = 2950;

                        break;

                    case 2:
                        typePrice = 2360;

                        break;

                    case 1:
                        typePrice = 1770;

                        break;
                    case 0:
                        typePrice = 1180;

                        break;
                }

            }


            if (rdoLocation2.SelectedIndex == 0)
            {
                switch (rdoSession2.SelectedIndex)
                {
                    case 4:
                        typePrice = 1980;

                        break;

                    case 3:
                        typePrice = 1650;

                        break;

                    case 2:
                        typePrice = 1320;

                        break;

                    case 1:
                        typePrice = 990;

                        break;
                    case 0:
                        typePrice = 660;

                        break;
                }

            }

            total = deposit + typePrice;
            lblMssg.Visible = true;
            lblMssg.Text = "<br/> Deposit Fee: " + Convert.ToString(deposit) + "<br/> Price Based on Selection: " + Convert.ToString(typePrice) + "<br/> ---------------------------- " + "<br/> Total Amount : RM " + Convert.ToString(total) + "<br/> ---------------------------- ";

        }

        protected void btnBookTwinRoom_Click(object sender, EventArgs e)
        {//BOOK TWIN ROOM

            if (rdoLocation2.SelectedIndex == 3)
            {
                //rdoLocation22.Enabled = false;
                // rdoLocation22.Items[0].Enabled = false;
                switch (rdoSession2.SelectedIndex)
                {
                    case 4:
                        typePrice = 4260;

                        break;

                    case 3:
                        typePrice = 3550;

                        break;

                    case 2:
                        typePrice = 2840;

                        break;

                    case 1:
                        typePrice = 2130;

                        break;
                    case 0:
                        typePrice = 1420;

                        break;
                }

            }



            if (rdoLocation2.SelectedIndex == 2)
            {
                switch (rdoSession2.SelectedIndex)
                {
                    case 4:
                        typePrice = 2460;

                        break;

                    case 3:
                        typePrice = 2050;

                        break;

                    case 2:
                        typePrice = 1640;

                        break;

                    case 1:
                        typePrice = 1230;

                        break;
                    case 0:
                        typePrice = 820;

                        break;
                }

            }


            if (rdoLocation2.SelectedIndex == 1)
            {
                switch (rdoSession2.SelectedIndex)
                {
                    case 4:
                        typePrice = 3540;

                        break;

                    case 3:
                        typePrice = 2950;

                        break;

                    case 2:
                        typePrice = 2360;

                        break;

                    case 1:
                        typePrice = 1770;

                        break;
                    case 0:
                        typePrice = 1180;

                        break;
                }

            }


            if (rdoLocation2.SelectedIndex == 0)
            {
                switch (rdoSession2.SelectedIndex)
                {
                    case 4:
                        typePrice = 1980;

                        break;

                    case 3:
                        typePrice = 1650;

                        break;

                    case 2:
                        typePrice = 1320;

                        break;

                    case 1:
                        typePrice = 990;

                        break;
                    case 0:
                        typePrice = 660;

                        break;
                }

            }

            //TO GET BOOKING TOTAL PRICE
            total = deposit + typePrice;


            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string txtApproved = "0";
            string rumType = "Twin Sharing Room";
            string insertQuery = "INSERT INTO reservation (roomType, bookedDate, hallChosen, progAndSession, studId, isApproved, totalPrice) OUTPUT inserted.bookingId VALUES (@roomType, GETDATE(), @hallChosen, @progAndSession, @studId, @isApproved, @totalPrice)";
            //string insertQuery = "INSERT into users (studId, email, password, phone, isAdmin, fName, lName, studentAvatar, nationality, dob, gender, prgEnrolled, permAddress, regDate) VALUES  (@studId, @email, @password, @phone, @isAdmin, @fName, @lName, @studentAvatar, @nationality, @dob, @gender, @prgEnrolled, @permAddress, GETDATE())";
            SqlCommand comd = new SqlCommand(insertQuery, conn);
            comd.Parameters.AddWithValue("@roomType", rumType);
            comd.Parameters.AddWithValue("@hallChosen", rdoLocation2.SelectedItem.ToString());
            comd.Parameters.AddWithValue("@progAndSession", rdoSession2.SelectedItem.ToString());
            comd.Parameters.AddWithValue("@studId", stID);
            comd.Parameters.AddWithValue("@isApproved", Convert.ToInt16(txtApproved));
            comd.Parameters.AddWithValue("@totalPrice", total);

            comd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Your Booking is Sucessful !. Click OK to View Your Booking Details');window.location='myaccount.aspx';", true);
            conn.Close();

            rdoLocation2.ClearSelection();
            rdoSession2.ClearSelection();

        }
        protected void btnCheckAttachBathRoom_Click(object sender, EventArgs e)
        {    //CHECKING THE PRICE OF ATTACHED BATHROOM 

            if (rdoLocation3.SelectedIndex == 0)
            {
                switch (rdoSession3.SelectedIndex)
                {
                    case 4:
                        typePrice = 6660;

                        break;

                    case 3:
                        typePrice = 5550;

                        break;

                    case 2:
                        typePrice = 4440;

                        break;

                    case 1:
                        typePrice = 3330;

                        break;
                    case 0:
                        typePrice = 2220;

                        break;
                }

            }


            if (rdoLocation3.SelectedIndex == 1)
            {
                switch (rdoSession3.SelectedIndex)
                {
                    case 4:
                        typePrice = 4740;

                        break;

                    case 3:
                        typePrice = 3950;

                        break;

                    case 2:
                        typePrice = 3160;

                        break;

                    case 1:
                        typePrice = 2370;

                        break;
                    case 0:
                        typePrice = 1580;

                        break;
                }

            }



            if (rdoLocation3.SelectedIndex == 2)
            {
                switch (rdoSession3.SelectedIndex)
                {
                    case 4:
                        typePrice = 4260;

                        break;

                    case 3:
                        typePrice = 3550;

                        break;

                    case 2:
                        typePrice = 2840;

                        break;

                    case 1:
                        typePrice = 2130;

                        break;
                    case 0:
                        typePrice = 1420;

                        break;
                }

            }


            if (rdoLocation3.SelectedIndex == 3)
            {
                switch (rdoSession3.SelectedIndex)
                {
                    case 4:
                        typePrice = 4620;

                        break;

                    case 3:
                        typePrice = 3850;

                        break;

                    case 2:
                        typePrice = 3080;

                        break;

                    case 1:
                        typePrice = 2310;

                        break;
                    case 0:
                        typePrice = 1540;

                        break;
                }

            }

            total = deposit + typePrice;
                lblMssg.Visible = true;
                lblMssg.Text = "<br/> Deposit Fee: " + Convert.ToString(deposit) + "<br/> Price Based on Selection: " + Convert.ToString(typePrice) + "<br/> ---------------------------- " + "<br/> Total Amount : RM " + Convert.ToString(total) + "<br/> ---------------------------- ";

            }
        


        protected void btnBookAttachBathRoom_Click(object sender, EventArgs e)
        {//BOOK ATTACHED ROOM

            if (rdoLocation3.SelectedIndex == 0)
            {
                switch (rdoSession3.SelectedIndex)
                {
                    case 4:
                        typePrice = 6660;

                        break;

                    case 3:
                        typePrice = 5550;

                        break;

                    case 2:
                        typePrice = 4440;

                        break;

                    case 1:
                        typePrice = 3330;

                        break;
                    case 0:
                        typePrice = 2220;

                        break;
                }

            }


            if (rdoLocation3.SelectedIndex == 1)
            {
                switch (rdoSession3.SelectedIndex)
                {
                    case 4:
                        typePrice = 4740;

                        break;

                    case 3:
                        typePrice = 3950;

                        break;

                    case 2:
                        typePrice = 3160;

                        break;

                    case 1:
                        typePrice = 2370;

                        break;
                    case 0:
                        typePrice = 1580;

                        break;
                }

            }



            if (rdoLocation3.SelectedIndex == 2)
            {
                switch (rdoSession3.SelectedIndex)
                {
                    case 4:
                        typePrice = 4260;

                        break;

                    case 3:
                        typePrice = 3550;

                        break;

                    case 2:
                        typePrice = 2840;

                        break;

                    case 1:
                        typePrice = 2130;

                        break;
                    case 0:
                        typePrice = 1420;

                        break;
                }

            }


            if (rdoLocation3.SelectedIndex == 3)
            {
                switch (rdoSession3.SelectedIndex)
                {
                    case 4:
                        typePrice = 4620;

                        break;

                    case 3:
                        typePrice = 3850;

                        break;

                    case 2:
                        typePrice = 3080;

                        break;

                    case 1:
                        typePrice = 2310;

                        break;
                    case 0:
                        typePrice = 1540;

                        break;
                }

            }

            total = deposit + typePrice;

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string txtApproved = "0";
            string rumType = "Rooms with Attached Bathroom";
            string insertQuery = "INSERT INTO reservation (roomType, bookedDate, hallChosen, progAndSession, studId, isApproved, totalPrice) OUTPUT inserted.bookingId VALUES (@roomType, GETDATE(), @hallChosen, @progAndSession, @studId, @isApproved, @totalPrice)";
            //string insertQuery = "INSERT into users (studId, email, password, phone, isAdmin, fName, lName, studentAvatar, nationality, dob, gender, prgEnrolled, permAddress, regDate) VALUES  (@studId, @email, @password, @phone, @isAdmin, @fName, @lName, @studentAvatar, @nationality, @dob, @gender, @prgEnrolled, @permAddress, GETDATE())";
            SqlCommand comd = new SqlCommand(insertQuery, conn);
            comd.Parameters.AddWithValue("@roomType", rumType);
            comd.Parameters.AddWithValue("@hallChosen", rdoLocation3.SelectedItem.ToString());
            comd.Parameters.AddWithValue("@progAndSession", rdoSession3.SelectedItem.ToString());
            comd.Parameters.AddWithValue("@studId", stID);
            comd.Parameters.AddWithValue("@isApproved", Convert.ToInt16(txtApproved));
            comd.Parameters.AddWithValue("@totalPrice", total);

            comd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Your Booking is Sucessful !. Click OK to View Your Booking Details');window.location='myaccount.aspx';", true);
            conn.Close();

            rdoLocation3.ClearSelection();
            rdoSession3.ClearSelection();

        }
    }
    





}