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
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            string queryString = "test.aspx";
            string newWin = "window.open('" + queryString + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "pop", newWin, true);
        

    }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drpdwnMenu.SelectedIndex== drpdwnMenu.Items.Count-1)
            {
              
            }
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {


        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
           
                //Get Connection string
                string connectionstring = WebConfigurationManager.ConnectionStrings["TestDb"].ConnectionString;
                //Create SqlConnection object
                SqlConnection connection = new SqlConnection(connectionstring);

                //Create your query and parameters
                string strquery = "Insert into [FoodRecipe]([RecipeName],[SubmittedBy],[CookingTime],[Cousine],[Private],[Description])values(@RecipeName,@SubmittedBy,@CookingTime,@Cousine,@Private,@Description)";

                SqlCommand command = new SqlCommand(strquery, connection);
                command.Parameters.Add("@RecipeName", System.Data.SqlDbType.VarChar);
                command.Parameters["@RecipeName"].Value = txt_recipeName.Text;

                //Additional parameters
                command.Parameters.Add("@SubmittedBy", System.Data.SqlDbType.NVarChar);
                command.Parameters["@SubmittedBy"].Value = txt_submittedBy.Text;

                command.Parameters.Add("@CookingTime", System.Data.SqlDbType.NVarChar);
                command.Parameters["@CookingTime"].Value = txt_cookTime.Text;

                command.Parameters.Add("@Cousine", System.Data.SqlDbType.NVarChar);
                command.Parameters["@Cousine"].Value = drpdwnMenu.SelectedItem.Text;

                command.Parameters.Add("@Private", System.Data.SqlDbType.NVarChar);
                command.Parameters["@Private"].Value = chkbx.Checked.ToString();

                command.Parameters.Add("@Description", System.Data.SqlDbType.NVarChar);
                command.Parameters["@Description"].Value = txt_description.Text;

                //  command.Parameters.Add("@Photo", System.Data.SqlDbType.Image);
                //  command.Parameters["@Photo"].Value = imageInputFile.;


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