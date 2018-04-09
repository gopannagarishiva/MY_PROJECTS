using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WebApplication4
{	
	public partial class WebForm224 : System.Web.UI.Page
	{
	
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
        SqlCommand cmd; SqlConnection con = new SqlConnection("server=.;integrated security=true;database=factfinder"); SqlDataReader dr;
        protected void Button1_Click(object sender, System.EventArgs e)
        {
            string s = "select * from fir_information where firno='"+txtfirno.Text+"'" ;
            cmd = new SqlCommand(s, con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            dr=cmd.ExecuteReader();
            if (!dr.Read())
            {
                lbluperror.Visible = true;
            }
            else
            {
                Session["Firno"] = txtfirno.Text;
                Response.Redirect("updating_option.aspx");
            }
        }
	}
}
