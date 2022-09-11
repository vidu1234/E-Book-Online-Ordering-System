using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ebook_Pvt.Ltd
{
    public partial class Manage_Books : System.Web.UI.Page
    {
        SqlDataManipulator sdm = new SqlDataManipulator();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadbooks();
            }
           
        }
        protected void loadbooks()
        {// loading book info from db 
            DataTable dt = sdm.dispalyData("Select * from Book order by Book_ID asc");
            gv_Books.DataSource = dt;
            gv_Books.DataBind();
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            try
            {
                //searching for a paticular Book according to the input text
                DataTable dt = sdm.dispalyData("select * from Book where Book_Name like '" + txt_search.Text + "'+'%'");
                gv_Books.DataSource = dt;
                gv_Books.DataBind();
            }
            catch (Exception ex)
            {

                lbl_msg.Text = ex.Message.ToString();
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {// adding a new book to the db
            try
            {
                sdm.modifyData("Insert into Book (Book_ID,Book_Name,Author,Publisher,Book_Description,Stock,Price) values('" + txt_BID.Text + "','" + txt_Bname.Text + "','" + txt_Author.Text + "','" + txt_publisher.Text + "','" + txt_Bdescription.Text + "','" + int.Parse(txt_Stock.Text) + "','" + float.Parse(txt_Price.Text) + "')");
                lbl_msg.Text = "Book Added Successfully!";
                loadbooks();
            }
            catch (Exception ex)
            {

                lbl_msg.Text = ex.Message.ToString();
            }
            

        }

        protected void btn_update_Click(object sender, EventArgs e)
        {// pdating book info
            try
            {
                sdm.modifyData("Update Book Set Book_Name='"+txt_Bname.Text+ "',Author='" + txt_Author.Text + "',Publisher='" + txt_publisher.Text + "',Book_Description='" + txt_Bdescription.Text + "',Stock='" + int.Parse(txt_Stock.Text) + "',Price='" + float.Parse(txt_Price.Text) + "' where Book_ID='" + txt_BID.Text + "' ");
                lbl_msg.Text = "Book Updated Successfully!";
                loadbooks();
            }
            catch (Exception ex)
            {


                lbl_msg.Text = ex.Message.ToString();
            }
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {//deleting books from db
            try
            {
                sdm.modifyData("Delete from Book where Book_ID='" + txt_BID.Text + "'");
                lbl_msg.Text = "Book Deleted Successfully!";
                loadbooks();
            }
            catch (Exception ex)
            {

                lbl_msg.Text = ex.Message.ToString();
            }
        }

        protected void gv_Books_SelectedIndexChanged(object sender, EventArgs e)
        {
            //autofilling the form fields when clicking on a grid view item
            if (gv_Books.SelectedIndex != -1)
            {
                txt_BID.Text = gv_Books.SelectedRow.Cells[1].Text;
                txt_Bname.Text = gv_Books.SelectedRow.Cells[2].Text;
                txt_Author.Text = gv_Books.SelectedRow.Cells[3].Text;
                txt_publisher.Text = gv_Books.SelectedRow.Cells[4].Text;
                txt_Bdescription.Text = gv_Books.SelectedRow.Cells[5].Text;
                txt_Stock.Text = gv_Books.SelectedRow.Cells[6].Text;
                txt_Price.Text = gv_Books.SelectedRow.Cells[7].Text;
            }
        }
    }
}