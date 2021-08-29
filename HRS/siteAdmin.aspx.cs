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
    public partial class siteAdmin : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM [reservation] ORDER BY bookedDate DESC"))
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

        protected void gvReservations_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = gvReservations.SelectedRow;
        }

        protected void gvReservations_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvReservations.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        protected void btnReservations_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/reservations.aspx");
        }

        protected void btnChangePass_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/changePassword.aspx");
        }

        protected void btnUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/users.aspx");
        }
    }
}