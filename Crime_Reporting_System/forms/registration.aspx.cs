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

public partial class forms_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
    }
    protected void cmdsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.;integrated security=true;database=factfinder");
        con.Open();
        if (con.State==ConnectionState.Open)
        {
            string qry="insert into new_login values('"+txtusername.Text+"','"+txtpassword.Text+"','"+RadioButtonList1.SelectedItem.ToString()+"')";
            SqlCommand cmd = new SqlCommand(qry, con);
            int i = cmd.ExecuteNonQuery();
            if (i == 0)
            {
                Label2.Text = "Your details are in correct,Record is not inserted";
            }
            else
                Response.Redirect("newloginpage.aspx");
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("loginmain.aspx  ");
    }
}
