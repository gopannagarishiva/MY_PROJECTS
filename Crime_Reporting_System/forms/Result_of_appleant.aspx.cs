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
	/// Summary description for Result_of_appleant.
	/// </summary>
	public partial class Result_of_appleant : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.RadioButtonList Rbbail;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{	
				txtfirno.Text=Session["Firno"].ToString();
				
				for(int k=1;k<=12;k++)
				{
					ddlmonth.Items.Add(k.ToString());
				}
				for(int j=1;j<=31;j++)
				{
					ddlday.Items.Add(j.ToString());
				}
				for(int l=1950;l<=2050;l++)
				{
					ddlyear.Items.Add(l.ToString());
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
		SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
		
		protected void Button1_Click(object sender, System.EventArgs e)
		{
			try
			{
				if(con.State==ConnectionState.Closed)
					con.Open();				
				string date=ddlmonth.SelectedItem.Text+"/"+ddlday.SelectedItem.Text+"/"+ddlyear.SelectedItem.Text;
				string strcmd="insert into resultof_appeal values('" +txtfirno.Text.Trim()+ "','"+txtappno.Text+"','"+txtappname.Text+"','"+txtcname.Text+ "','"+txtresult.Text+ "','"+txtsname.Text+"','"+ddlgender.SelectedItem.Text+"','"+txthno.Text+"','"+txtstr.Text+ "','" +txtcity.Text+ "','"  +txtstate.Text+ "','" +txtphno.Text+"','"+txtmno.Text+ "','"+rbb.SelectedItem.Text+"','"+Convert.ToString(date)+"','"+txtbcname.Text+"','"+txtpsname.Text+"','"+txtpname.Text+"','"+txtinst.Text+"')";
				SqlCommand cmd=new SqlCommand(strcmd,con);
				cmd.ExecuteNonQuery();
				Response.Redirect("new_user_option.aspx");
			}
			catch(Exception  ex)
			{
				Response.Write(ex.ToString());
			}
		}
	}
}
