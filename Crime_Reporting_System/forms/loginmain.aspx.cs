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
	/// <summary>
	/// Summary description for WebForm1.
	/// </summary>
	public partial class WebForm1 : System.Web.UI.Page
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
        SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
        //protected void Button1_Click(object sender, System.EventArgs e)
        //{			
			
        //    if(txtname.Text =="police")
        //    {
        //        Session["ctrllog"] = "police";
        //        Response.Redirect("newloginpage.aspx");
        //    }
        //    else if (txtname.Text == "user")
        //    {
        //        Session["ctrllog"] = "user";
        //        Response.Redirect("../new/login.aspx");
        //    }
        //    else
        //    {
        //        Label.Visible = true;
        //    }
        //}
        protected void btpolice_Click(object sender, EventArgs e)
        {
            Session["ctrllog"] = "police";
            Response.Redirect("newloginpage.aspx");

        }
        protected void btuser_Click(object sender, EventArgs e)
        {
            Session["ctrllog"] = "user";
            Response.Redirect("../new/login.aspx");
        }
}
}
