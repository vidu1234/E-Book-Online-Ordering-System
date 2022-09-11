using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ebook_Pvt.Ltd
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlDataManipulator sdm = new SqlDataManipulator();

        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            

            loadFeedback();
        }

        protected void loadFeedback()
        {//loading all feedback from db
            string book = Request.QueryString["Book_ID"];
            DataTable dt = sdm.dispalyData("Select * from Feedbacks where Book_ID='"+book+"'  order by Book_ID asc");
            gv_Feedback.DataSource = dt;
            gv_Feedback.DataBind();
        }

        protected void btn_feedback_Click(object sender, EventArgs e)
        {// adding feedback to the database
            try
            {
                string user = Session["Username"].ToString();
                string book = Request.QueryString["Book_ID"];
                DataTable dt = sdm.dispalyData("Select * from feedbacks where Book_ID='" + book + "' and Username='" + user + "'");
                if (dt.Rows.Count == 1)
                {
                    sdm.modifyData("Update Feedbacks set Rating='" + txt_Rating.Text + "',Feedback='" + txt_feedback.Text + "' where Book_ID='" + book + "' and Username='" + user + "' ");
                    lbl_msg.Text = "Feedback updated successfully!";
                    loadFeedback();
                }
                else
                {
                    sdm.modifyData("Insert into Feedbacks (Username,Book_ID,Rating,Feedback) values ('" + user + "','" + book + "','" + txt_Rating.Text + "','" + txt_feedback.Text + "')");
                    lbl_msg.Text = "Feedback added successfully!";
                    loadFeedback();
                }
            }
            catch (Exception ex)
            {

                lbl_msg.Text = ex.Message.ToString();
            }
            
        }
    }
}