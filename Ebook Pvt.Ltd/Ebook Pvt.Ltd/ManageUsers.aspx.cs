using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ebook_Pvt.Ltd
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        SqlDataManipulator sdm = new SqlDataManipulator();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadUsers();
        }
        protected void loadUsers()
        {
            // loading book info from db 
            DataTable dt = sdm.dispalyData("Select * from Users order by Username asc");
            gv_Users.DataSource = dt;
            gv_Users.DataBind();
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            try
            {
                //searching for a paticular Book according to the input text
                DataTable dt = sdm.dispalyData("select * from Users where Username like '" + txt_search.Text + "'+'%'");
                gv_Users.DataSource = dt;
                gv_Users.DataBind();
            }
            catch (Exception ex)
            {

                lbl_msg.Text = ex.Message.ToString();
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            try
            {//adding a new user to the db
                sdm.modifyData("insert into Users (Username,Password,First_Name,Last_Name,Age,Email,Address,User_Type) values ('" + Username.Text + "','" + password.Text + "','" + Fname.Text + "','" + Lname.Text + "','" + int.Parse(Age.Text) + "','" + Email.Text + "','" + Address.Text + "','User')");
                lbl_msg.Text = "User Added Successfully!";
                loadUsers();
            }
            catch (Exception ex)
            {
                lbl_msg.Text = ex.Message.ToString();

            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            try
            {//updating user details
                sdm.modifyData("Update users set Password='" + password.Text + "',First_Name='" + Fname.Text + "',Last_Name='" + Lname.Text + "',Age='" + int.Parse(Age.Text) + "',Email='" + Email.Text + "',Address='" + Address.Text + "',User_Type='" + ddl_Utype.Text + "' where Username='" + Username.Text + "'");
                lbl_msg.Text = "User Updated Successfully!";
                loadUsers();
            }
            catch (Exception ex)
            {

                lbl_msg.Text = ex.Message.ToString();
            }

        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            try
            {//deleting a user from the db
                sdm.modifyData("Delete from Users where Username='" + Username.Text + "' ");
                loadUsers();
                lbl_msg.Text = "User Deleted Successfully!";
            }
            catch (Exception ex)
            {

                lbl_msg.Text = ex.Message.ToString();
            }
        }

        protected void gv_Books_SelectedIndexChanged(object sender, EventArgs e)
        {
            //autofilling the form fields when clicking on a grid view item
            if (gv_Users.SelectedIndex != -1)
            {
                Username.Text = gv_Users.SelectedRow.Cells[1].Text;
                password.Text = gv_Users.SelectedRow.Cells[2].Text;
                Fname.Text = gv_Users.SelectedRow.Cells[3].Text;
                Lname.Text = gv_Users.SelectedRow.Cells[4].Text;
                Age.Text = gv_Users.SelectedRow.Cells[5].Text;
                Email.Text = gv_Users.SelectedRow.Cells[6].Text;
                Address.Text = gv_Users.SelectedRow.Cells[7].Text;
                ddl_Utype.Text = gv_Users.SelectedRow.Cells[8].Text;
            }
        }
    }
}