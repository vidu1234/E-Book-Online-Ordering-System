using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ebook_Pvt.Ltd
{
    public partial class Login : System.Web.UI.Page
    {
        SqlDataManipulator sdm = new SqlDataManipulator();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = sdm.dispalyData("Select * from Users where Username = '" + txt_username.Text + "' and Password = '" + txt_password.Text + "'");
                if (dt.Rows.Count == 1)
                {
                    if (dt.Rows[0]["User_Type"].ToString()=="Administrator")
                    {
                        Session["Username"] = txt_username.Text.Trim();
                        Response.Redirect("AdminHome.aspx");
                    }
                    else
                    {
                        Session["Username"] = txt_username.Text.Trim();
                        Response.Redirect("UserHome.aspx");
                    }
                    
                }
                else
                {
                    lbl_msg.Visible = true;

                }
            }
            catch (Exception ex)
            {

                lbl_msg.Text = ex.Message.ToString();
            }
        }
    }
}