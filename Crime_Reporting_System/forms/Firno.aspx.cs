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
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication4
{	
	public partial class Firno : System.Web.UI.Page
	{
		protected void Page_Load(object sender, System.EventArgs e)
		{
			fir();
		}


		SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
		void fir()
		{
			if(con.State==ConnectionState.Closed)
			{
				con.Open();
			}
			string str;						
			SqlCommand com=new SqlCommand("select max(firno) from fir_information",con);
			SqlDataReader rd;
			rd=com.ExecuteReader();
			if(rd.Read()==true)
			{									
				if(rd.IsDBNull(0))					
				{
					str="F0000";
				}
				else
				{
					str = rd.GetString(0);
				}
				int s,j,n;
				string cont;
				cont=str.Substring(1,4);
				s=Convert.ToInt32(cont);
				s=s+1;
				str="For i = 0 To i = 4 - Len(CStr(cont)) - 1";
				string st;
				st="";
				n=(4 - (s.ToString()).Length)-1;
				for(j=0;j<=n;j++)
				{
					st =st + 0;
				}
				st="F"+st+s;
				this.txtfirno.Text=st;
				this.txtfirno.ReadOnly=true;				
				Session["Firno"]=st.Trim();
			}	
			con.Close();
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
		protected void btnnxt_Click(object sender, System.EventArgs e)
		{

			if(con.State==ConnectionState.Closed)
				con.Open();
			string strcmd="insert into fir_information values('" +txtfirno.Text.Trim()+"','"+txtfirinfo.Text+"')";
			SqlCommand cmd=new SqlCommand(strcmd,con);
			cmd.ExecuteNonQuery();
			Response.Redirect("acts_sections.aspx");
		}
	}
}
