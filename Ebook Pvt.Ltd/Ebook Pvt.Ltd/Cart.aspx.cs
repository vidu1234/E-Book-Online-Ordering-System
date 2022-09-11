using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ebook_Pvt.Ltd
{
    public partial class Cart : System.Web.UI.Page
    {
        SqlDataManipulator sdm = new SqlDataManipulator();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Session["buyitems"] == null)
                    {
                        btn_Checkout.Enabled = false;
                    }
                    else
                    {
                        btn_Checkout.Enabled = true;
                    }
                }

                // adding books to cart grid view
                Session["AddBook"] = false;
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("Book_ID");
                dt.Columns.Add("Book_Name");
                dt.Columns.Add("Quantity");
                dt.Columns.Add("Price");
                dt.Columns.Add("Total");

                if (Request.QueryString["Book_ID"] != null)
                {
                    if (Session["buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        dr["Book_ID"] = Request.QueryString["Book_ID"];
                        dr["Book_Name"] = Request.QueryString["Book_Name"];
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        dr["Price"] = Request.QueryString["Price"];

                        double price = Convert.ToDouble(dr["Price"].ToString());
                        int quantity = Convert.ToInt32(dr["Quantity"].ToString());
                        double total = price * quantity;
                        dr["Total"] = total;

                        dt.Rows.Add(dr);
                        gv_cart.DataSource = dt;
                        gv_cart.DataBind();
                        Session["buyitems"] = dt;
                        btn_Checkout.Enabled = true;

                        gv_cart.FooterRow.Cells[5].Text = "Sum";
                        gv_cart.FooterRow.Cells[6].Text = Totalsum().ToString();
                        Response.Redirect("Cart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        dr = dt.NewRow();
                        dr["Book_ID"] = Request.QueryString["Book_ID"];
                        dr["Book_Name"] = Request.QueryString["Book_Name"];
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        dr["Price"] = Request.QueryString["Price"];

                        double price = Convert.ToDouble(dr["Price"].ToString());
                        int quantity = Convert.ToInt32(dr["Quantity"].ToString());
                        double total = price * quantity;
                        dr["Total"] = total;

                        dt.Rows.Add(dr);
                        gv_cart.DataSource = dt;
                        gv_cart.DataBind();
                        Session["buyitems"] = dt;
                        btn_Checkout.Enabled = true;

                        gv_cart.FooterRow.Cells[5].Text = "Sum";
                        gv_cart.FooterRow.Cells[6].Text = Totalsum().ToString();
                        Response.Redirect("Cart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    gv_cart.DataSource = dt;
                    gv_cart.DataBind();
                    if (gv_cart.Rows.Count > 0)
                    {
                        gv_cart.FooterRow.Cells[5].Text = "Sum";
                        gv_cart.FooterRow.Cells[6].Text = Totalsum().ToString();
                    }
                }
            }
            catch (Exception ex)
            {

                lbl_msg.Text= ex.Message.ToString();
            }
            
        }
        public float Totalsum()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int rows = dt.Rows.Count;
            int i = 0;
            float totalsum = 0;
            while (i < rows)
            {
                totalsum = totalsum + float.Parse(dt.Rows[i]["Total"].ToString());
                i = i + 1;
            }
            return totalsum;
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            DataTable dt = (DataTable)Session["buyitems"]; 
            dt.Rows[index].Delete();
            Session["buyitems"] = dt;
            gv_cart.DataSource = dt;
            gv_cart.DataBind();
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Shop.aspx");
        }

        protected void btn_Checkout_Click(object sender, EventArgs e)
        {
            try
            {
                string orderDate = DateTime.Now.ToShortDateString();
                string user = Session["Username"].ToString();
                string items = "";
                //add all the books to the order
                for (int i = 0; i < gv_cart.Rows.Count; i++)
                {
                    items = items + " " + gv_cart.Rows[i].Cells[2].Text + " " + gv_cart.Rows[i].Cells[3].Text + "*" + gv_cart.Rows[i].Cells[5].Text;
                }

                // update book stock according to order quantity
                for (int i = 0; i < gv_cart.Rows.Count; i++)
                {
                    int qty = int.Parse(gv_cart.Rows[i].Cells[5].Text);
                    DataTable dt = sdm.dispalyData("Select Stock from Book where Book_ID='" + gv_cart.Rows[i].Cells[2].Text + "'");
                    int stock = int.Parse(dt.Rows[0]["Stock"].ToString());
                    int newstock = stock - qty;
                    sdm.modifyData("Update Book set Stock='" + newstock + "' where Book_ID='" + gv_cart.Rows[i].Cells[2].Text + "'");
                }
                // creating a new order

                sdm.modifyData("insert into Orders(Order_Date,Items,Total,Status,Username) values('"+orderDate+"','"+items+"','"+float.Parse(gv_cart.FooterRow.Cells[6].Text)+"','Pending','"+user+"')");
                lbl_msg.Text = "Order Added Successfully";
                Session["buyitems"] = null;

                gv_cart.DataSource = Session["buyitems"];
                gv_cart.DataBind();

                btn_Checkout.Enabled = false;
            }
            catch (Exception ex)
            {

                lbl_msg.Text = ex.Message.ToString();
            }
            
        }
    }
}