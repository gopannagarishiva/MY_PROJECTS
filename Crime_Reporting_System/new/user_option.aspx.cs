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

namespace WebApplication4
{	
	public partial class WebForm3 : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
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
		
		protected void btnview_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("../Reports/reports.aspx");		
		}

		protected void btnnew_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("../forms/firno.aspx");			
		}

		
		protected void btnlogoff_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("login.aspx");
		}
	}
}