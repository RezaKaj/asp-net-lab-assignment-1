using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace LabAssignment1
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Get Connection string
            string connectionstring = WebConfigurationManager.ConnectionStrings["TestDb"].ConnectionString;
            //Create SqlConnection object
            SqlConnection connection = new SqlConnection(connectionstring);

            //Create your query and parameters
            string strquery = "Insert into dummy(DummyText)values(@dummytext)";
            SqlCommand command = new SqlCommand(strquery, connection);
            command.Parameters.Add("@dummytext", System.Data.SqlDbType.NVarChar);
            command.Parameters["@dummytext"].Value = TextBox1.Text;
            //Open the connection
            connection.Open();

            //execute the query and fetch results
            command.ExecuteNonQuery();

            //Show your results


            //Close reader and connection
            connection.Close();
        }
    }
}