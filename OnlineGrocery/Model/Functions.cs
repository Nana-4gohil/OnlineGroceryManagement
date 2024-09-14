using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OnlineGrocery.Model
{
    public class Functions
    {
        private SqlConnection Con;
        private SqlCommand cmd;
        private DataTable dt;
        private SqlDataAdapter sda;
        private string ConnString;

        public Functions()
        {
            ConnString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Nanabhai\\source\\repos\\OnlineGrocery\\OnlineGrocery\\App_Data\\GroceryAspDb.mdf;Integrated Security=True";
            Con = new SqlConnection(ConnString);
            cmd = new SqlCommand();
            cmd.Connection = Con;

        }
        public DataTable getDate(string query)
        {
            
            dt = new DataTable();
            sda = new SqlDataAdapter(query, ConnString);
            sda.Fill(dt);
            return dt;
        }
        public int SetData(string Query)
        {
            int cnt = 0;
            if (Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            cmd.CommandText = Query;
            cnt = cmd.ExecuteNonQuery();
            return cnt; 
        }
    }
}