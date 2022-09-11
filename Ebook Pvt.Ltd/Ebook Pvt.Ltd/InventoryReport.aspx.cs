using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Ebook_Pvt.Ltd
{
    public partial class InventoryReport : System.Web.UI.Page
    {
        SqlDataManipulator sdm = new SqlDataManipulator();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = sdm.dispalyData("Select Book_ID,Book_Name,Stock from Book");
            gv_Inventory.DataSource = dt;
            gv_Inventory.DataBind();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reports.aspx");
        }
    }
}