using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;


namespace LabAssignment1
{
    public partial class recipeView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      /*  protected void testBtn_Click()
        {
            //Get Connection string
            string connectionstring = WebConfigurationManager.ConnectionStrings["testDb"].ConnectionString;
            //Create SqlConnection object
            SqlConnection connection = new SqlConnection(connectionstring);
            string strquery = "select * from TestDb";
            SqlCommand command = new SqlCommand(strquery, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            EmployeeRepeater.DataSource = reader;
            EmployeeRepeater.DataBind();
            reader.Close();
            connection.Close();
        } */ 

        protected void testBtn_Click(object sender, EventArgs e)
        {
            //Get Connection string
            string connectionstring = WebConfigurationManager.ConnectionStrings["testDb"].ConnectionString;
            //Create SqlConnection object
            SqlConnection connection = new SqlConnection(connectionstring);
            string strquery = "select * from FoodRecipe";
            SqlCommand command = new SqlCommand(strquery, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            EmployeeRepeater.DataSource = reader;
            EmployeeRepeater.DataBind();
            reader.Close();
            connection.Close();
            
        }
    }
}