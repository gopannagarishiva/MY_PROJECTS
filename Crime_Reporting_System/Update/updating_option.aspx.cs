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

namespace WebApplication4.Tables
{
	/// <summary>
	/// Summary description for tables.
	/// </summary>
	public partial class tables : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
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

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			if(Session["ctrllog"].ToString().Equals("police"))
            {
              Response.Redirect("../forms/new_user_option.aspx");
            }
            else
            {
                Response.Redirect("../new/user_option.aspx");
            }

		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("../forms/newloginpage.aspx");
		}
	}
}
