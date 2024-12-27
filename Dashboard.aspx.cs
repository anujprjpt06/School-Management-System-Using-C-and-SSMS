using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;

namespace StudentManagementSystem
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindChart();
            }
        }

        private void BindChart()
        {
            // Replace with your actual connection string
            string connectionString = "Data Source =ANUJ\\SQLEXPRESS;Initial Catalog=SchoolSysDb;Integrated Security=True;Encrypt=False;";

            // Query to get the number of students per class
            string query = @"SELECT C.ClassName, COUNT(S.StudentId) AS StudentCount FROM Class C 
                            INNER JOIN Student S ON C.ClassId = S.ClassId 
                            GROUP BY C.ClassName";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    // Initialize the Chart Series
                    Series series = StudentChart.Series["ClassCountSeries"];
                    series.XValueMember = "ClassName";
                    series.YValueMembers = "StudentCount";

                    // Load the data into the chart
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    StudentChart.DataSource = dt;
                    StudentChart.DataBind();
                }
            }

            // Customize the chart appearance (optional)
            StudentChart.ChartAreas["ChartArea1"].AxisX.Title = "Class Name";
            StudentChart.ChartAreas["ChartArea1"].AxisY.Title = "Number of Students";
            StudentChart.Titles.Add("Student Count per Class");
        }
    }
}
