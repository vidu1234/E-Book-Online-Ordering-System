using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ebook_Pvt.Ltd
{
    public partial class MyOrders : System.Web.UI.Page
    {
        SqlDataManipulator sdm = new SqlDataManipulator();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadOrders();
            }
        }
        protected void loadOrders()
        {// loading order info from db 
            string User= Session["Username"].ToString();
            DataTable dt = sdm.dispalyData("Select * from Orders Where Username='"+User+"' order by Order_ID asc");
            gv_Orders.DataSource = dt;
            gv_Orders.DataBind();
        }

        protected void btn_Checkout_Click(object sender, EventArgs e)
        {
            sdm.modifyData("Delete from Orders where Order_ID='"+gv_Orders.SelectedRow.Cells[1].Text+"'");
            lbl_msg.Text = "Order canceled successfully!";
            loadOrders();
        }
    }
}