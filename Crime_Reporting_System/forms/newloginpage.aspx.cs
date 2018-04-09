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

namespace WebApplication4.forms
{
	/// <summary>
	/// Summary description for newloginpage.
	/// </summary>
	public partial class newloginpage : System.Web.UI.Page
	{
		
		protected void Page_Load(object sender, System.EventArgs e)
		{   
		  if(!Page.IsPostBack)
          {
              if (Session["ctrllog"].ToString().Equals("police"))
              {
                  Session["position"] = ddlpos.SelectedItem.Text;
              }
              else
              { }

		   }
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
        SqlConnection con = new SqlConnection("server=.;integrated security=true;database=factfinder");	
		protected void Button1_Click(object sender, System.EventArgs e)
		{   
			con.Open();
			SqlDataReader rd;			
			string cmdl="select * from new_login where userid='" + txtuid.Text.Trim() + "' and password='" +txtpass.Text.Trim()+ "'and user_position='" +ddlpos.SelectedItem.Text.Trim()+ "'";
			SqlCommand cmd=new SqlCommand(cmdl,con);
			rd=cmd.ExecuteReader();
			if(rd.Read())
			{
				Response.Redirect("new_user_option.aspx");
			}
			else
			{
				lbl.Visible=true;
			}
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("loginmain.aspx");
		}
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }
}
}
