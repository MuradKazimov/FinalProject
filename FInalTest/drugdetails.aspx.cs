using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FInalTest
{
    public partial class shop_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            try
            {

                int DrugID = int.Parse(HttpContext.Current.Request.Params["id"]);
                DataSet ds = DALC.DrugData(DrugID);
                LabelName.Text = ds.Tables[0].Rows[0].Field<string>("DrugName");
                LabelPrice.Text = ds.Tables[0].Rows[0].Field<double>("Price").ToString();
                LabelCountry.Text = ds.Tables[0].Rows[0].Field<string>("Country");
                ProductImage.ImageUrl = ds.Tables[0].Rows[0].Field<string>("Image");
                LabelDescription.Text = ds.Tables[0].Rows[0].Field<string>("Description");
                LabelUnit.Text = ds.Tables[0].Rows[0].Field<string>("Unit");
                LabelManufacturer.Text = ds.Tables[0].Rows[0].Field<string>("Manufacturer");
                LabelCategory.Text = ds.Tables[0].Rows[0].Field<string>("CategoryName");

                DataListRelated.DataSource = DALC.GetRelatedDrugs(ds.Tables[0].Rows[0].Field<int>("CategoryID"));
                DataListRelated.DataBind();
            }

            catch
            {
                HttpContext.Current.Response.Redirect("/home.aspx");
            }

        }

    }
}