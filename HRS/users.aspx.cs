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
    public partial class users : System.Web.UI.Page
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
        }
        private void BindGrid()
        {
            connection();
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM [users] ORDER BY regDate DESC"))
                {


                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);

                            gvUsers.DataSourceID = null;
                            gvUsers.DataSource = dt;
                            gvUsers.DataBind();
                        }
                    }
                }
                //conn.Close();
            }

        }

        private void BindData(string txtSearch)
        {
            string constr = ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE studId = @studId", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        cmd.Parameters.AddWithValue("@studId", txtSearch);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        gvUsers.DataSource = ds;
                        gvUsers.DataBind();
                    }
                }
            }
        }

        private void SearchUsers()
        {
            string constr = ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    string sql = "SELECT * FROM users";
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
                            gvUsers.DataSource = dt;
                            gvUsers.DataBind();
                            //lblRecord.Text = "RECORD FOUND!";
                            // lblRecord.ForeColor = System.Drawing.Color.Green;

                        }
                        else
                        {

                            dt.Rows.Add(dt.NewRow());
                            gvUsers.DataSource = dt;
                            gvUsers.DataBind();
                            gvUsers.Rows[0].Cells.Clear();
                            gvUsers.Rows[0].Cells.Add(new TableCell());
                            gvUsers.Rows[0].Cells[0].ColumnSpan = dt.Columns.Count;
                            gvUsers.Rows[0].Cells[0].Text = "<b>Sorry, no record found ..!</b>";
                            gvUsers.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                            lblRecord.Text = "RECORD NOT FOUND!";
                            lblRecord.ForeColor = System.Drawing.Color.Red;

                        }
                    }
                }
            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.SearchUsers();
            hlnBack.Visible = true;
            hnlBack1.Visible = false;
        }

        protected void gvUsers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvUsers.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        //protected void gvUsers_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    GridViewRow gr = gvUsers.SelectedRow;
        //    this.BindGrid();
           
        //}

        protected void gvUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvUsers.EditIndex = -1;
            this.BindGrid();
            hlnBack.Visible = true;
            hnlBack1.Visible = false;
        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);
            string studentId = gvUsers.DataKeys[e.RowIndex].Value.ToString();
            GridViewRow row = (GridViewRow)gvUsers.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblstudId");
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM users where studId='" + studentId + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            this.BindGrid();


           // SqlCommand cmdds = new SqlCommand("UPDATE users SET isAdmin='" + isAdmin.Text + "'where studId='" + studentId + "'", conn);
        }

        protected void gvUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvUsers.EditIndex = e.NewEditIndex;
            if (this.txtSearch.Text == "")
            {
                this.BindGrid();
            }
            if (this.txtSearch.Text.Length > 0)
            {
                BindData(this.txtSearch.Text);
            }
            hlnBack.Visible = true;
            hnlBack1.Visible = false;
        }

        protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);

            //int reservid = Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value.ToString());
           string studentId = gvUsers.DataKeys[e.RowIndex].Value.ToString();
            GridViewRow row = (GridViewRow)gvUsers.Rows[e.RowIndex];
            Label lblstudId = (Label)row.FindControl("lblstudId"); 
            TextBox isAdmin = (TextBox)row.Cells[11].Controls[0];
           //TextBox nationality = (TextBox)row.Cells[13].Controls[0];
            gvUsers.EditIndex = -1;
            conn.Open();
            SqlCommand cmdds = new SqlCommand("UPDATE users SET isAdmin='" + isAdmin.Text + "'where studId='" + studentId + "'", conn);
            //SqlCommand cmdds = new SqlCommand("UPDATE users SET isAdmin=@isAdmin, where studId=@studId", conn);
            //cmdds.Parameters.AddWithValue("@studId", studentId);
           // cmdds.Parameters.AddWithValue("@isAdmin", isAdmin.Text);
            cmdds.ExecuteNonQuery();
            conn.Close();
            this.BindGrid();

            hlnBack.Visible = true;
            hnlBack1.Visible = false;
        }

        protected void gvUsers_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = gvUsers.Rows[e.NewSelectedIndex];
        }
    }
}