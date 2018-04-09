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
	public partial class WebForm12 : System.Web.UI.Page
	{
	
		SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
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
				for(int l=0;l<=12;l++)
				{
					ddlhr.Items.Add(l.ToString());
				}
				for(int m=0;m<=60;m++)
				{
					ddlmin.Items.Add(m.ToString());
				}
			}
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

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			try
			{
				if(con.State==ConnectionState.Closed)
				con.Open();				
				string date=ddlmonth.SelectedItem.Text+"/"+ddlday.SelectedItem.Text+"/"+ddlyear.SelectedItem.Text+" "+ddlhr.SelectedItem.Text+":"+ddlmin.SelectedItem.Text+":00"+ddlam_pm.SelectedItem.Text;
				string strcmd="insert into property_seezed_details values('" +txtfirno.Text.Trim()+"','" +txtpsname.Text+ "','" +Convert.ToDateTime(date)+ "','" +txtnat.Text+"','"+txthno.Text+"','"+txtstr.Text+"','"+txtcity.Text+"','"+txtstate.Text+"','"+txtname.Text+"','"+txtodet.Text+"','"+txtwname.Text+"','"+txtwstr.Text+"','"+txtwhno.Text+"','"+txtwcity.Text+"','"+txtwstate.Text+"','"+txtwphone.Text+"','"+txtpdet.Text+"')";
				SqlCommand cmd=new SqlCommand(strcmd,con);
				cmd.ExecuteNonQuery();
				Response.Redirect("courtdisposal.aspx");
			}
			catch(Exception  ex)
			{
				Response.Write(ex.ToString());
			}
		}

		
	}
}
