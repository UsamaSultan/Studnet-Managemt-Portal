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
    public partial class adminAddHOD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con;
                SqlCommand cm;
                String query;
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
                cm = new SqlCommand("", con);
                con.Open();
                query = "select Id, Fields FROM FieldsOfIntrest ";
                cm.CommandText = query;
                SqlDataReader reader = cm.ExecuteReader();

                String id, field;
                int i = 0;
                while (reader.Read())
                {
                    id = reader.GetInt32(0).ToString();
                    field = reader.GetString(1);
                    ddlFieldh.Items.Insert(i++, new ListItem(field, id));
                }

                reader.Dispose();
                con.Close();
            }
        }

        protected void btnAddHod_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            SqlCommand cm;
            String query;
            SqlDataReader dr;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            cm = new SqlCommand("", con);
            con.Open();
            query = "Select count(*) FROM HOD";
            cm.CommandText = query;
            int hodCount = Convert.ToInt32(cm.ExecuteScalar().ToString());
            if (hodCount < 1)
            {
                query = "SELECT * FROM Login WHERE UserName = '" + txtUserNameh.Text + "'";
                cm.CommandText = query;
                dr = cm.ExecuteReader();
                if (dr.HasRows)
                {
                    lblsaWarning.Text = "Username Already Exists ";
                }
                else
                {
                    String filename = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//IMG//" + filename);
                    String picurl = "~//IMG//" + filename.ToString();

                    String typ = "HO";

                    byte[] inputArray = UTF8Encoding.UTF8.GetBytes(txtPasswordh.Text);
                    TripleDESCryptoServiceProvider tripleDES = new TripleDESCryptoServiceProvider();
                    tripleDES.Key = UTF8Encoding.UTF8.GetBytes("sblw-3hn8-sqoy19");
                    tripleDES.Mode = CipherMode.ECB;
                    tripleDES.Padding = PaddingMode.PKCS7;
                    ICryptoTransform cTransform = tripleDES.CreateEncryptor();
                    byte[] resultArray = cTransform.TransformFinalBlock(inputArray, 0, inputArray.Length);
                    tripleDES.Clear();


                    dr.Dispose();
                    lblsaWarning.Text = "";
                    query = "INSERT INTO Login ([UserName],[Password],[Type]) VALUES('" + txtUserNameh.Text + "','" + Convert.ToBase64String(resultArray, 0, resultArray.Length) + "','" + typ + "') ";
                    cm.CommandText = query;
                    cm.ExecuteNonQuery();

                    int id;
                    query = "Select Id FROM Login WHERE UserName = '" + txtUserNameh.Text + "'";
                    cm.CommandText = query;
                    id = Convert.ToInt32(cm.ExecuteScalar().ToString());

                    query = "INSERT INTO HOD ([Id],[FirstName],[LastName],[DOB],[CNIC],[Email],[Phone],[Field],[PicUrl]) VALUES('" + id + "','" + txtFNameh.Text + "','" + txtLNameh.Text + "','" + txtDobh.Text + "','" + txtCnich.Text + "','" + txtEmailh.Text + "','" + txtPhoneh.Text + "',' " + ddlFieldh.SelectedValue + "','" + picurl + "')";
                    cm.CommandText = query;
                    cm.ExecuteNonQuery();

                    query = "INSERT INTO Supervisor ([Id],[FirstName],[LastName],[DOB],[CNIC],[Email],[PhoneNo],[Field],[PicUrl]) VALUES('" + id + "','" + txtFNameh.Text + "','" + txtLNameh.Text + "','" + txtDobh.Text + "','" + txtCnich.Text + "','" + txtEmailh.Text + "','" + txtPhoneh.Text + "',' " + ddlFieldh.SelectedValue + "','" + picurl + "')";
                    cm.CommandText = query;
                    cm.ExecuteNonQuery();

                    lblsaWarning.Text = "Added Successfully ";
                }
                dr.Close();

            }
            else
            {
                lblsaWarning.Text = "HOD already Exist ";

            }
            con.Close();
        }
    }
}