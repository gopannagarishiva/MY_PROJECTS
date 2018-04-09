using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication4
{	
	public partial class WebForm2 : System.Web.UI.Page
	{

        //SqlConnection con = new SqlConnection("server=.;integrated security=true;database=factfinder");
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
		protected void Page_Load(object sender, System.EventArgs e)
		{
			
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		protected void btnmainfrm_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("../forms/loginmain.aspx");
		}

		protected void btnlogin_Click(object sender, System.EventArgs e)
		{
			con.Open();
			SqlDataReader rd;			
			string cmdl="select * from login where userid='" + txtuid.Text.Trim() + "' and password='" +txtpass.Text.Trim()+ "'";
			SqlCommand cmd=new SqlCommand(cmdl,con);
			rd=cmd.ExecuteReader();
			if(rd.Read())
			{
                Session["viewer"] = "user";

				Response.Redirect("~/new/user_option.aspx");
			}
			else
			{
				lbldisplay.Visible=true;
			}
		}
        protected void cmdsignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/new/registration.aspx");
        }
}
}
