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
	public partial class WebForm4 : System.Web.UI.Page
	{

        protected void Page_Load(object sender, System.EventArgs e)
        {
            
            if (Session["ctrllog"].ToString().Equals("user"))
            {
                
                    //Button1.Enabled = false;
                    Button1.Visible = false;
                    btnlogoff.Visible = false;
                
            }
            else
            {
                Button1.Visible = true;
                btnlogoff.Visible = true;
            }
            
            // Put user code to initialize the page here
            
        }

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			InitializeComponent();
			base.OnInit(e);
		}
		
		private void InitializeComponent()
		{    

		}
		#endregion		
        //SqlConnection con = new SqlConnection("server=.;integrated security=true;database=factfinder");
        SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
		protected void btnsubmit_Click(object sender, System.EventArgs e)
		{
			con.Open();
			SqlDataReader rd;			
			string cmdl="select * from complainant_details where firno='" + txtfirno.Text.Trim()+ "'";
			SqlCommand cmd=new SqlCommand(cmdl,con);
			rd=cmd.ExecuteReader();
			if(rd.Read())
			{
				Session["Firno"]=txtfirno.Text.Trim();
				Response.Redirect("access_option.aspx");
			}
			else
			{
				lbl.Visible=true;
			}
			
		}

		protected void btnexit_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("../forms/loginmain.aspx");		
		}

		protected void btnlogoff_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("../forms/newloginpage.aspx");
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
            
			Response.Redirect("../forms/new_user_option.aspx");
		}	
	}
}
