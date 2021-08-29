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
    public partial class viewEnquiries : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM [enquiry] ORDER BY Id ASC"))
                {


                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            gvEnquiries.DataSourceID = null;
                            gvEnquiries.DataSource = dt;
                            gvEnquiries.DataBind();
                        }
                    }
                }
                //conn.Close();
            }

        }
        

        protected void gvEnquiries_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEnquiries.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        protected void gvEnquiries_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = gvEnquiries.Rows[e.NewSelectedIndex];
        }

        protected void gvEnquiries_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);

            GridViewRow row = (GridViewRow)gvEnquiries.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblId");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete FROM enquiry where Id='" + Convert.ToInt32(gvEnquiries.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            this.BindGrid();
        }
    }
}