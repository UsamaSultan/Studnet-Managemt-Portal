using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace Naive2
{
    public partial class adminViewAllAdmins : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
                string query;
                query = "Select ID, FirstName, LastName ,PicUrl   FROM Admin ";
                da = new SqlDataAdapter(query, con);

                da.Fill(dt);
                adminRepeater.DataSource = dt;
                adminRepeater.DataBind();
                con.Close();
            }
        }

        protected void adminRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}