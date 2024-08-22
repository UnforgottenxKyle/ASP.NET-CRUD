using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Reflection.Emit;
using System.Xml.Linq;

namespace Final_Proj
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (con.State == ConnectionState.Open )
            {
                con.Close();
            }
            con.Open();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("insert into Final60 values ('" + txtid.Text + "', '" + txtname.Text + "', '" + txtsid.Text + "', '" + txtco.Text + "', '" + txtsec.Text + "', '" + txtsub.Text + "')", con);
            cmd.ExecuteNonQuery();
            
            Label1.Text = "WAG KANANG MA WA LAAA";
            GridView1.DataBind();
            txtid.Text = "";
            txtname.Text = "";
            txtsid.Text = "";
            txtco.Text = "";
            txtsec.Text = "";
            txtsub.Text = "";
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}