using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;


namespace vpshop.Admin
{
    public partial class Additem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (!IsPostBack)
                {
                    BindCategory();
                }

            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }


        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["vpshopcon"].ConnectionString;
        }
        protected void btnAddItem_Click(object sender, EventArgs e)
        {
            if (IsFormValidate())
            {
                // Insert Record

                //Insert Image First
                FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload2.FileName);
                FileUpload3.SaveAs(Server.MapPath("~/img/") + FileUpload3.FileName);

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vpshopcon"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into ItemMst(IName,Detail,Price,Image,Quantity,CName,Image1,Image2,Size)values(@IName,@Detail,@Price,@Image,@Quantity,@CName,@Image1,@Image2,@Size)";
                    
                    //SqlConnection con = new SqlConnection(GetConnectionString());
                    // SqlCommand cmd = new SqlCommand("insert into ItemMst(IName,Detail,Price,Image,Qnt,CName,Image1,Image2,Size,EntryDate)values(@Name,@Detail,@Price,@Image,@Qnt,@CName,@Image1,@Image2,@Size,@EntryDate)");
                    // if (con.State == ConnectionState.Closed)
                    // {
                    //     con.Open();
                    // }
                     cmd.Parameters.AddWithValue("@IName", txtItemName.Text);
                     cmd.Parameters.AddWithValue("@Detail", txtDesc.Text);
                     cmd.Parameters.AddWithValue("@Price", Convert.ToDouble(txtPrice.Text));
                     cmd.Parameters.AddWithValue("@Image", FileUpload1.FileName);
                     cmd.Parameters.AddWithValue("@Quantity", Convert.ToInt32(txtQty.Text));
                     //cmd.Parameters.AddWithValue("@AvailableQnt",Convert.ToInt32);
                     cmd.Parameters.AddWithValue("@CName", ddlCategory.SelectedItem.Text);
                     cmd.Parameters.AddWithValue("@Image1", FileUpload2.FileName);
                     cmd.Parameters.AddWithValue("@Image2", FileUpload3.FileName);
                     cmd.Parameters.AddWithValue("@Size", ddlSize.SelectedValue);
                     
                     
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Item added successfully');</script>");
                    txtItemName.Text = string.Empty;
                    txtItemName.Focus();
                    BindCategory();

                }
                //else
                //{
                // Response.Write("<script>alert('Validation Error');</script>");
                // }

            }
        }
        private bool IsFormValidate()
        {
            if (txtItemName.Text == string.Empty)
            {
                Response.Write("<script>alert('Item Name is Required');</script>");
                txtItemName.Text = string.Empty;
                txtItemName.Focus();
                return false;
            }

            if (txtDesc.Text == string.Empty)
            {
                Response.Write("<script>alert('Discription details is Required');</script>");
                txtDesc.Text = string.Empty;
                txtDesc.Focus();
                return false;
            }

            if (txtPrice.Text == string.Empty)
            {
                Response.Write("<script>alert('Price is Required');</script>");
                txtPrice.Text = string.Empty;
                txtPrice.Focus();
                return false;
            }

            if (txtQty.Text == string.Empty)
            {
                Response.Write("<script>alert('Quantity is Required');</script>");
                txtQty.Text = string.Empty;
                txtQty.Focus();
                return false;
            }

            if (ddlCategory.SelectedItem.Text == " ")
            {
                Response.Write("<script>alert('Category is Required');</script>");

                ddlCategory.Focus();
                return false;
            }

            if (ddlSize.SelectedIndex == -1)
            {
                Response.Write("<script>alert('Size is Required');</script>");

                ddlSize.Focus();
                return false;
            }
            return true;



        }


        private void BindCategory()
        {


            SqlConnection con = new SqlConnection(GetConnectionString());

            try
            {
                SqlCommand cmd = new SqlCommand("select distinct CID,CName from CateMst", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CName";
                    ddlCategory.DataValueField = "CID";
                    ddlCategory.DataBind();
                }
                else
                {
                    ddlCategory.DataSource = null;
                    ddlCategory.DataBind();

                }
            }
            catch
            {
                Response.Write("");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}