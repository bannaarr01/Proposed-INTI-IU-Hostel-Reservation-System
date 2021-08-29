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
    public partial class viewContactForm : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM [contact] ORDER BY Id ASC"))
                {


                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            gvContact.DataSourceID = null;
                            gvContact.DataSource = dt;
                            gvContact.DataBind();
                        }
                    }
                }
                //conn.Close();
            }

        }
        protected void gvContact_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvContact.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        protected void gvContact_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = gvContact.Rows[e.NewSelectedIndex];
        }

        protected void gvContact_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hrsys"].ConnectionString);

            GridViewRow row = (GridViewRow)gvContact.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblId");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete FROM contact where Id='" + Convert.ToInt32(gvContact.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            this.BindGrid();
        }
    }
}