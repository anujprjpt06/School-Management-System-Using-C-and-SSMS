using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace StudentManagementSystem.Models
{
    public class CommonFn
    {
        public class Commonfnx
        {
             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["School"].ConnectionString);
            
            // Query method is use to Insert Update Delete In the table  
            public void Query(string query)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(query,con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            // Fetch method is use to Display the all records
            public DataTable Fetch(string query)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(query,con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                sda.Fill(dt);

                return dt;
            }
        }
    }
}