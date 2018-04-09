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
	/// Summary description for WebForm10.
	/// </summary>
	public partial class WebForm10 : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{	
				txtfirno.Text=Session["Firno"].ToString();
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
        SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
		protected void buts_v_Click(object sender, System.EventArgs e)
		{
			if(con.State==ConnectionState.Closed)
				con.Open();
			string strcmd="insert into property_details values('" +txtfirno.Text.Trim()+ "','" +txtpd.Text+ "','" +txtpv.Text+"')";
			SqlCommand cmd=new SqlCommand(strcmd,con);
			cmd.ExecuteNonQuery();
			Response.Redirect("accused_suspect_details.aspx");
		}
	}
}
