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
    public partial class reservations : System.Web.UI.Page
    {
        public SqlConnection con;
        public string constr;

        public void connection()
        {
            constr = ConfigurationManager.ConnectionStrings["hrsys"].ToString();
            con = new SqlConnection(constr);
            con.Open();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fName"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
            if (!IsPostBack)
            {
                lblMssg.Visible = true;
                lblMssg.Text="You can Only EDIT 'isApproved' Column";
                lblRecord.Visible = false;
            }
        }

        private void BindGrid()
        {
            connection();
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM [reservation] ORDER BY bookingId ASC"))
                {


                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
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
                //conn.Close();
            }

        }

        private void SearchCustomers()
        {
            string constr = ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    string sql = "SELECT * FROM reservation";
                    if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
                    {
                        sql += " WHERE studId LIKE  @studId + '%'";
                        cmd.Parameters.AddWithValue("@studId", txtSearch.Text.Trim());

                    }

                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            gvReservations.DataSource = dt;
                            gvReservations.DataBind();
                            //lblRecord.Text = "RECORD FOUND!";
                           // lblRecord.ForeColor = System.Drawing.Color.Green;

                        }
                        else
                        {

                            dt.Rows.Add(dt.NewRow());
                            gvReservations.DataSource = dt;
                            gvReservations.DataBind();
                            gvReservations.Rows[0].Cells.Clear();
                            gvReservations.Rows[0].Cells.Add(new TableCell());
                            gvReservations.Rows[0].Cells[0].ColumnSpan = dt.Columns.Count;
                            gvReservations.Rows[0].Cells[0].Text = "<b>Sorry, no record found ..!</b>";
                            gvReservations.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                            lblRecord.Text = "RECORD NOT FOUND!";
                            lblRecord.ForeColor = System.Drawing.Color.Red;

                        }
                    }
                }
            }
        }
        private void BindData(string txtSearch)
        {
            string constr = ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM reservation WHERE studId = @studId", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        cmd.Parameters.AddWithValue("@studId", txtSearch);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        gvReservations.DataSource = ds;
                        gvReservations.DataBind();
                    }
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.SearchCustomers();
            hlnBack.Visible = true;
            hnlBack1.Visible = false;
        }

        protected void gvReservations_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvReservations.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

     

        protected void gvReservations_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);

            GridViewRow row = (GridViewRow)gvReservations.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblbookingId");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete FROM reservation where bookingId='" + Convert.ToInt32(gvReservations.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            this.BindGrid();
        }

        protected void gvReservations_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvReservations.EditIndex = e.NewEditIndex;
            if(this.txtSearch.Text == "")
            {
                this.BindGrid();
            }
           if(this.txtSearch.Text.Length>0)
            {
                BindData(this.txtSearch.Text);
            }
           
            
            hlnBack.Visible = true;
            hnlBack1.Visible = false;

        }

        protected void gvReservations_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);
           
               
                int reservid = Convert.ToInt32(gvReservations.DataKeys[e.RowIndex].Value.ToString());
                GridViewRow row = (GridViewRow)gvReservations.Rows[e.RowIndex];
                Label lblbookingId = (Label)row.FindControl("lblbookingId");
                //TextBox txtname=(TextBox)gr.cell[].control[];  
                TextBox isApproved = (TextBox)row.Cells[8].Controls[0];
                //TextBox textadd = (TextBox)row.Cells[1].Controls[0];
                //TextBox textc = (TextBox)row.Cells[2].Controls[0]; 
                // SqlCommand cmd = new SqlCommand("update detail set name='" + textName.Text + "',address='" + textadd.Text + "',country='" + textc.Text + "'where id='" + userid + "'", conn);  

                gvReservations.EditIndex = -1;
                conn.Open();
                SqlCommand cmd = new SqlCommand("UPDATE reservation SET isApproved='" + isApproved.Text + "'where bookingId='" + reservid + "'", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                this.BindGrid();

            hlnBack.Visible = true;
            hnlBack1.Visible = false;
        }

            /*  string insertQuery = "INSERT INTO reservation (roomType, bookedDate, hallChosen, progAndSession, studId, isApproved, totalPrice) OUTPUT inserted.bookingId VALUES (@roomType, GETDATE(), @hallChosen, @progAndSession, @studId, @isApproved, @totalPrice)";
                 SqlCommand comd = new SqlCommand(insertQuery, conn);
                comd.Parameters.AddWithValue("@roomType", rumType);
                comd.Parameters.AddWithValue("@hallChosen", rdoLocation.SelectedItem.ToString());
                comd.Parameters.AddWithValue("@progAndSession", rdoSession.SelectedItem.ToString());
                comd.Parameters.AddWithValue("@studId", stID);
                comd.Parameters.AddWithValue("@isApproved", Convert.ToInt16(txtApproved));
                comd.Parameters.AddWithValue("@totalPrice", total);*/


          
        
            protected void gvReservations_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvReservations.EditIndex = -1;
            this.BindGrid();
            hlnBack.Visible = true;
            hnlBack1.Visible = false;
        }

        protected void gvReservations_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = gvReservations.Rows[e.NewSelectedIndex];
        }
    }
}