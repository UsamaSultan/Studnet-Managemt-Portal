using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;
namespace Naive2
{
    public partial class adminAddField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddFild_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            SqlCommand cm;
            String query;
            SqlDataReader dr;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            cm = new SqlCommand("", con);
            con.Open();
            query = "SELECT * FROM FieldsOfIntrest WHERE Fields = '" + Field.Text + "'";
            cm.CommandText = query;
            dr = cm.ExecuteReader();
            if (dr.HasRows)
            {
                string script = "<script type=\"text/javascript\">alert('Field Already Exist');</script>"; ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
            }
            else
            {
                dr.Close();
                query = "INSERT INTO  FieldsOfIntrest (Fields)  VALUES( '" + Field.Text + "')";
                cm.CommandText = query;
                cm.ExecuteNonQuery();
                string script = "<script type=\"text/javascript\">alert('Added Successfully');</script>"; ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
            }

        }
    }
}