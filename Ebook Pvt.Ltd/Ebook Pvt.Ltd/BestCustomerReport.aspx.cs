using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ebook_Pvt.Ltd
{
    public partial class BestCustomerReport : System.Web.UI.Page
    {
        SqlDataManipulator sdm = new SqlDataManipulator();
        protected void Page_Load(object sender, EventArgs e)
        {
            //load a list of customers and their frequency of orders from the order table
            DataTable dt = sdm.dispalyData("select Username, COUNT(Order_ID) as Number_of_Orders from orders group by Username order by COUNT(*) DESC");
            gv_BestCustomers.DataSource = dt;
            gv_BestCustomers.DataBind();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reports.aspx");
        }
    }
}