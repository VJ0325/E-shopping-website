using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace vpshop
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UserLogin();
        }
        private void UserLogin()
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vpshopcon"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from tblUserMaster Name,Password from  where Name=@Name AND Password=@Password", con);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Password", txtpass.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                clr();
                Response.Write("<script>alert('You are successfully Logged in..')</script>");
                txtName.Text = string.Empty;
                txtpass.Text = string.Empty;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        private void clr()
        {
        }
    }
}




           
            