using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ebook_Pvt.Ltd
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            Response.Redirect("IncomeReport.aspx");
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            Response.Redirect("InventoryReport.aspx");
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            Response.Redirect("BestCustomerReport.aspx");
        }
    }
}