using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FInalTest
{
    public partial class Shop_grid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DataListCategories.DataSource = DALC.AllCategories();
                DataListCategories.DataBind();


                DataListLastDrugs.DataSource = DALC.Last3();
                DataListLastDrugs.DataBind();

               
            }



            if (HttpContext.Current.Request.Params["id"] == null)
            {
                DataListDrugs.DataSource = DALC.AllDrugs();
                DataListDrugs.DataBind();
            }

            else
            {
                int CategoryID = int.Parse(HttpContext.Current.Request.Params["id"]);
                DataListDrugs.DataSource = DALC.ForCategory(CategoryID);
                DataListDrugs.DataBind();
            }



        }


        protected void SortSelectedIndexChanged(object sender, EventArgs e)
        {

            ApplyFilters();
        }

        protected void ApplyFilters()
        {
            int sortIndex = Int32.Parse(DropDownList1.SelectedItem.Value);
            int categoryID = HttpContext.Current.Request.Params["id"] == null ? -1 : int.Parse(HttpContext.Current.Request.Params["id"]);
            float minprice = float.Parse(minamount.Value.Trim('$'));
            float maxprice = float.Parse(maxamount.Value.Trim('$'));

            DataListDrugs.DataSource = DALC.GetDrugsWithFilters(sortIndex, categoryID, minprice, maxprice);
            DataListDrugs.DataBind();
        }

       

        protected void ButtonPriceApply_Click(object sender, EventArgs e)
        {
            ApplyFilters();
        }
    }
}