using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ebook_Pvt.Ltd
{
    public partial class Shop : System.Web.UI.Page
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

        protected void btn_addtoCart_Click(object sender, EventArgs e)
        {
            try
            {
                Session["AddBook"] = true;
                Response.Redirect("Cart.aspx?Book_ID=" + gv_Books.SelectedRow.Cells[1].Text + "&Quantity=" + txt_quantity.Text + "&Book_Name=" + gv_Books.SelectedRow.Cells[2].Text + "&Price=" + gv_Books.SelectedRow.Cells[7].Text);
            }
            catch (Exception ex)
            {

                lbl_msg.Text = ex.Message.ToString();
            }
           
        }

        protected void btn_viewCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void btn_Feedback_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Feedback.aspx?Book_ID=" + gv_Books.SelectedRow.Cells[1].Text);
            }
            catch (Exception ex)
            {


                lbl_msg.Text = ex.Message.ToString();
            }
            
        }
    }
}