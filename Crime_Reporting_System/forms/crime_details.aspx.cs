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
	public partial class WebForm13 : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{	
				txtfirno.Text=Session["Firno"].ToString();

				for(int i=1;i<=31;i++)
				{
					ddlday.Items.Add(i.ToString());
				}
				for(int j=1;j<=12;j++)
				{
					ddlmonth.Items.Add(j.ToString());
				}
				for(int k=1950;k<=2050;k++)
				{
					ddlyear.Items.Add(k.ToString());
				}
			}// Put user code to initialize the page here
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
		protected void save_con_Click(object sender, System.EventArgs e)
		{
			try
			{
				if(con.State==ConnectionState.Closed)
				con.Open();
				
				string date=ddlmonth.SelectedItem.Text+"/"+ddlday.SelectedItem.Text+"/"+ddlyear.SelectedItem.Text;
				string strcmd="insert into crime_details values('" +txtfirno.Text.Trim()+ "','" +Convert.ToDateTime(date)+ "','" +txtps.Text+"','"+txtcrimedet.Text+"','"+txtio.Text+"','"+txtsno.Text+"','"+txtrank.Text+"','"+rbreject.SelectedItem.Text+"','"+txtreson.Text+"')";
				SqlCommand cmd=new SqlCommand(strcmd,con);
				cmd.ExecuteNonQuery();
				Response.Redirect("property_details.aspx");
			}
			catch(Exception  ex)
			{
				Response.Write(ex.ToString());
			}
		}

		
	}
}
