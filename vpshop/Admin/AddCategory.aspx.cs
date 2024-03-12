using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace vpshop.Admin
{
    public partial class AddCategory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vpshopcon"].ConnectionString);

        protected void Page_Load(object sender,EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }

            if (!IsPostBack)
            {
                disp_data();
                //BindingGridview();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
        }
            



        private void BindingGridview()
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM CateMst", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            catch (Exception e)
            {
                Response.Write(e);
            }
        }
        protected void btnAdd_Click1(object sender,EventArgs e)
        {
            // This is an empty event handler. You can remove it if not needed.
            if (string.IsNullOrWhiteSpace(txtCategory.Text))
            {
                Response.Write("<script>alert('Category Name cannot be empty');</script>");
                return;
            }
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vpshopcon"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText ="INSERT INTO CateMst (CName) VALUES ('" + txtCategory.Text + "')";
                //cmd.Parameters.AddWithValue("@CName", txtCategory.Text.Trim());
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Category Added successfully');</script>");

                txtCategory.Text = string.Empty;
                txtCategory.Focus();
                disp_data();
            }
        }
        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from CateMst";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        public void Delete(String cname)
        {
            string sql = "Delete from [cname] where cname=" + cname;
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Delete(GridView1.DataKeys[0].Values[0].ToString());
            BindingGridview();
            
        }
        }
    }
