using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FInalTest
{
    public partial class testindex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            DataListDrugs.Visible = true;
            LabelNothingFound.Text = "";
            DataListDrugs.DataSource = DALC.AllDrugs();
            DataListDrugs.DataBind();
            DataListCategories.DataSource = DALC.AllCategories();
            DataListCategories.DataBind();
           

        }

        protected void SearchingButton_Click(object sender, EventArgs e)
        {


            if (SearchBox.Text == "")
            {
                
            }

           else if (DALC.Searching(SearchBox.Text) == null)
            {

                LabelNothingFound.Text = "Axtarışınıza uyğun nəticə tapılmadı!!!";
                DataListDrugs.Visible = false;

            }
            
            else
            {
                DataListDrugs.DataSource = DALC.Searching(SearchBox.Text);
                DataListDrugs.DataBind();
            }
        }
    }  
}


