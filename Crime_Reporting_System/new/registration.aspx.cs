using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

public partial class new_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
    }
    protected void cmdsubmit_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection("server=BHANU-PC/SQLEXPRESS;integrated security=true;database=factfinder");
        SqlConnection con=new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        if (con.State == ConnectionState.Open)
        {
            SqlCommand cmd1 = new SqlCommand("select count(*) from login where userid='" + txtusername.Text + "'", con);
            int count = Convert.ToInt32(cmd1.ExecuteScalar());
            if (count > 0)
            {
                Label1.Text = "User name is already exists";
            }
            else
            {
                string qry = "insert into login values('" + txtusername.Text + "','" + txtpassword.Text + "')";
                SqlCommand cmd = new SqlCommand(qry, con);
                int i = cmd.ExecuteNonQuery();
                if (i == 0)
                {
                    Label1.Text = "Your details are in correct,Record is not inserted";
                }
                else
                {
                    Page.RegisterClientScriptBlock("select", "<script>alert('Your request is submitted')</script>");
                }
                Response.Redirect("login.aspx");
            }
        }
        con.Close();
    }
}
