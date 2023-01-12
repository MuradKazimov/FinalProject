using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace FInalTest
{
    public class DALC
    {

        public static string conn = "Data Source=DESKTOP-HQ54VJP\\SQLEXPRESS01;Database=Pharmacy;Integrated Security=true";


        private static SqlConnection sqlConn = new SqlConnection(conn);

        public static DataView AllDrugs()
        {
            if (sqlConn.State != ConnectionState.Open) sqlConn.Open();
            string query = "select * from Drugs";
            SqlCommand cmd = new SqlCommand(query, sqlConn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            sqlConn.Close();
            if (ds.Tables[0].Rows.Count == 0) return null;
            return ds.Tables[0].DefaultView;
        }

        public static DataView AllCategories()
        {
            if (sqlConn.State != ConnectionState.Open) sqlConn.Open();
            string query = "select * from Categories";
            SqlCommand cmd = new SqlCommand(query, sqlConn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            sqlConn.Close();
            if (ds.Tables[0].Rows.Count == 0) return null;
            return ds.Tables[0].DefaultView;

        }
        public static DataView Last3()
        {
            if (sqlConn.State != ConnectionState.Open) sqlConn.Open();
            string query = "select top 3 * from Drugs order by DrugID desc";
            SqlCommand cmd = new SqlCommand(query, sqlConn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            sqlConn.Close();
            if (ds.Tables[0].Rows.Count == 0) return null;
            return ds.Tables[0].DefaultView;
        }
     

      

        public static DataView GetDrugsWithFilters(int sortBy, int categoryID, float minprice, float maxprice)
        {
            if (sqlConn.State != ConnectionState.Open) sqlConn.Open();
            string query = "select * from Drugs WHERE Price BETWEEN @minprice AND @maxprice";

            if (categoryID != -1)
            {
                query += " AND CategoryID=@CategoryID";
            }


            query += " ORDER BY ";
            switch (sortBy)
            {
                case 1:
                    query += "DrugID ASC";
                    break;
                case 2:
                    query += "Price ASC";
                    break;
                case 3:
                    query += "Price DESC";
                    break;
                default:
                    query += "DrugID DESC";
                    break;
            }
            SqlCommand cmd = new SqlCommand(query, sqlConn);
            cmd.Parameters.AddWithValue("@minprice", minprice);
            cmd.Parameters.AddWithValue("@maxprice", maxprice);
            if(categoryID != -1)
            {
                cmd.Parameters.AddWithValue("@CategoryID", categoryID);
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            sqlConn.Close();
            if (ds.Tables[0].Rows.Count == 0) return null;
            return ds.Tables[0].DefaultView;
        }

        public static DataSet DrugData(int DrugID)
        {
            if (sqlConn.State != ConnectionState.Open) sqlConn.Open();
            string query = "SELECT d.DrugID, d.DrugName, d.Country, d.Manufacturer, d.Price, d.Description, d.Image, d.Unit, d.CategoryID, c.CategoryID, c.CategoryName FROM Drugs d ,Categories c WHERE  d.CategoryID =c.CategoryID and DrugID='" + DrugID + "'";
            SqlCommand cmd = new SqlCommand(query, sqlConn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            sqlConn.Close();
            if (ds.Tables[0].Rows.Count == 0) return null;
            return ds;
        }




        public static DataView ForCategory(int CategoryID)
        {
            if (sqlConn.State != ConnectionState.Open) sqlConn.Open();
            string query = "select * from Drugs where CategoryID=@CategoryID";
            SqlCommand cmd = new SqlCommand(query, sqlConn);
            cmd.Parameters.AddWithValue("@CategoryID", CategoryID);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            sqlConn.Close();
            if (ds.Tables[0].Rows.Count == 0) return null;
            return ds.Tables[0].DefaultView;
        }

        public static DataView GetRelatedDrugs(int CategoryID)
        {
            if (sqlConn.State != ConnectionState.Open) sqlConn.Open();
            string query = "select TOP(3) * from Drugs where CategoryID=@CategoryID";
            SqlCommand cmd = new SqlCommand(query, sqlConn);
            cmd.Parameters.AddWithValue("@CategoryID", CategoryID);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            sqlConn.Close();
            if (ds.Tables[0].Rows.Count == 0) return null;
            return ds.Tables[0].DefaultView;
        }

       

    
        

        public static DataView Searching(string SearchBox)
        {
            if (sqlConn.State != ConnectionState.Open) sqlConn.Open();
            SqlCommand cmd = new SqlCommand("Search", sqlConn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", SearchBox);
            cmd.Parameters.Add(new SqlParameter()
            {
                Direction = ParameterDirection.Output,
                ParameterName = "@status",
                SqlDbType = SqlDbType.Int,
            });
            cmd.ExecuteNonQuery();

            if (cmd.Parameters["@status"].Value.ToString() == "1")
            {
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds.Tables[0].DefaultView;
            }
            else
            {
                return null;
            }
        }



     









    }


}

//string query = "select * from Drugs";
//SqlCommand cmd = new SqlCommand(query, sqlConn);
//sqlConn.Open();
//SqlDataAdapter da = new SqlDataAdapter(cmd);
//DataSet ds = new DataSet();
//da.Fill(ds);