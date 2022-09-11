using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ebook_Pvt.Ltd
{
    public partial class Register : System.Web.UI.Page
    {
        SqlDataManipulator sdm = new SqlDataManipulator();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            try
            {
                sdm.modifyData("insert into Users (Username,Password,First_Name,Last_Name,Age,Email,Address,User_Type) values ('" + Username.Text + "','" + password.Text + "','" + Fname.Text + "','" + Lname.Text + "','" + int.Parse(Age.Text) + "','" + Email.Text + "','" + Address.Text + "','User')");
                lbl_msg.Text = "Registration Succesful!";
            }
            catch (Exception ex)
            {
                lbl_msg.Text = ex.Message.ToString();

            }
        }
    }
}