using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace vpshop.Admin
{      
    public partial class AdminLogin : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vpshopcon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session.RemoveAll();
            //Session.Remove("UserName");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsFormValid())
            {
                //Response.Write("<script>alert('You are Successfully Logged in..');</script>");
                try
                {
                    SqlCommand cmd = new SqlCommand("select Username,Password from AdminMst where Username=@Username AND Password=@Password", con);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    cmd.Parameters.AddWithValue("@UserName", txtuserid.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtpass.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Session["UserName"] = dr.GetValue(0).ToString();

                            Response.Write("<script>alert('Login Successful');</script>");
                            Response.Redirect("HomeAdmin.aspx");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Login');</script>");
                        //Response.Redirect("~/WebForm1.aspx");
                        txtuserid.Text = string.Empty;
                        txtpass.Text = string.Empty;
                        txtuserid.Focus();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                //Response.Write("<script>alert('Validation Error');</script>");
            }
        }

        private bool IsFormValid()
        {
            if (txtuserid.Text == string.Empty)
            {
                Response.Write("<script>alert('UserName is Required');</script>");
                txtuserid.Text = string.Empty;
                txtuserid.Focus();
                return false;
            }
            if(txtpass.Text == string.Empty)
            {
                Response.Write("<script>alert('Password is Required');</script>");
                txtpass.Text = string.Empty;
                txtpass.Focus();
                return false;
            }

            return true;
        }
    }
}