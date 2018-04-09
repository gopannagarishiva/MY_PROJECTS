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
	/// Summary description for new_user_option.
	/// </summary>
	public partial class new_user_option : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
            if (!IsPostBack)
            {
                //txtptn.Text = Session["position"].ToString();
                if (Session["ctrllog"].ToString().Equals("police"))
                {
                    txtptn.Text = Session["position"].ToString();
                }
                else
                { }
                
                
                //string s = Session["ctrllog"].ToString();
                if (txtptn.Text == "CONISTABLE")
                {
                    btnenter.Enabled = true;
                    btnview.Enabled = false;
                    btnupdate.Enabled = false;
                }
                else if (txtptn.Text == "SUBINSPECTER")
                {
                    btnenter.Enabled = true;
                    btnview.Enabled = true;
                    btnupdate.Enabled = false;
                }
                else if (txtptn.Text == "CIRCLEINSPECTER")
                {
                    btnenter.Enabled = true;
                    btnview.Enabled = true;
                    btnupdate.Enabled = true;
                }
                else //if (s.Equals("user"))
                {
                    btnenter.Enabled = true;
                    btnview.Enabled = true;
                    btnupdate.Enabled = false;
 
                }
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

		protected void btnenter_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Firno.aspx");
		}

		protected void btnview_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("../Reports/reports.aspx");
		}

		protected void btnupdate_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("../Update/fir_no.aspx");
		}

		protected void Button4_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("newloginpage.aspx");
		}
	}
}
