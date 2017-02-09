using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace LabAssignment1
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            string connectionstring = WebConfigurationManager.ConnectionStrings["testDb"].ConnectionString;
            //Create SqlConnection object
            SqlConnection connection = new SqlConnection(connectionstring);
            string strquery = "select * from FoodRecipe where [RecipeName] LIKE '%' + @text + '%'";
           
            SqlCommand command = new SqlCommand(strquery, connection);

            command.Parameters.AddWithValue("text", txt_recipeName.Text);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            grdView.DataSource = reader;
            grdView.DataBind();
            reader.Close();
            connection.Close();
        }
    }
}

