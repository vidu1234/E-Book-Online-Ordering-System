using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ebook_Pvt.Ltd
{
    public partial class MyAccount : System.Web.UI.Page
    {
        SqlDataManipulator sdm = new SqlDataManipulator();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string user = Session["Username"].ToString();
                DataTable dt = sdm.dispalyData("Select * from Users where Username='" + user + "' ");

                Fname.Text = dt.Rows[0]["First_Name"].ToString();
                Lname.Text = dt.Rows[0]["Last_Name"].ToString();
                password.Text = dt.Rows[0]["Password"].ToString();
                Age.Text = dt.Rows[0]["Age"].ToString();
                Email.Text = dt.Rows[0]["Email"].ToString();
                Address.Text = dt.Rows[0]["Address"].ToString();
            }
            
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            try
            {//updating user details
                string user = Session["Username"].ToString();
                sdm.modifyData("Update Users set Password='" + password.Text + "',First_Name='" + Fname.Text + "',Last_Name='" + Lname.Text + "',Age='" + int.Parse(Age.Text) + "',Email='" + Email.Text + "',Address='" + Address.Text + "' where Username='" + user + "'");
                lbl_msg.Text = "User Updated Successfully!";
                DataTable dt = sdm.dispalyData("Select * from Users where Username='" + user + "' ");

                Fname.Text = dt.Rows[0]["First_Name"].ToString();
                Lname.Text = dt.Rows[0]["Last_Name"].ToString();
                password.Text = dt.Rows[0]["Password"].ToString();
                Age.Text = dt.Rows[0]["Age"].ToString();
                Email.Text = dt.Rows[0]["Email"].ToString();
                Address.Text = dt.Rows[0]["Address"].ToString();
            }

            catch (Exception ex)
            {

                lbl_msg.Text = ex.Message.ToString();
            }
        }
    }
}