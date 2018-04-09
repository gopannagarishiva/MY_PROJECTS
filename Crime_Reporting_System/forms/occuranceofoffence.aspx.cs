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
	public partial class 
		WebForm8 : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{	
				txtfirno.Text=Session["Firno"].ToString();
				for(int i=1;i<=31;i++)
				{
					ddlfday.Items.Add(i.ToString());
					ddltday.Items.Add(i.ToString());
					ddlrday.Items.Add(i.ToString());
				}
				for(int j=1;j<=12;j++)
				{
					ddlfmonth.Items.Add(j.ToString());
					ddltmonth.Items.Add(j.ToString());
					ddlrmonth.Items.Add(j.ToString());
				}

				for(int k=1950;k<=2050;k++)
				{
					ddlfyear.Items.Add(k.ToString());
					ddltyear.Items.Add(k.ToString());
					ddlryear.Items.Add(k.ToString());
				}
				for(int l=0;l<=12;l++)
				{
					ddlftimehr.Items.Add(l.ToString());
					ddlttimehr.Items.Add(l.ToString());
					ddlrtimehr.Items.Add(l.ToString());
				}
				for(int m=0;m<=60;m++)
				{
					ddlftimemin.Items.Add(m.ToString());
					ddlttimemin.Items.Add(m.ToString());
					ddlrtimemin.Items.Add(m.ToString());
				}
				for(int n=0;n<=20;n++)
				{
					ddldist.Items.Add(n.ToString());					
				}
			
				ddlfam_pm.Items.Add("AM");
				ddlfam_pm.Items.Add("PM");
				ddltam_pm.Items.Add("AM");
				ddltam_pm.Items.Add("PM");
				ddlram_pm.Items.Add("AM");
				ddlram_pm.Items.Add("PM");
				
				ddldir.Items.Add("East");
				ddldir.Items.Add("West");
				ddldir.Items.Add("North");
				ddldir.Items.Add("South");				
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

		SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
		protected void btnnext_add_Click(object sender, System.EventArgs e)
		{
			try
			{
				if(con.State==ConnectionState.Closed)
				con.Open();
				string info=rblinfo.SelectedItem.Text;
				string fromdate=ddlfmonth.SelectedItem.Text+"/"+ddlfday.SelectedItem.Text+"/"+ddlfyear.SelectedItem.Text+" "+ddlftimehr.SelectedItem.Text+":"+ddlftimemin.SelectedItem.Text+":"+"00"+" "+ddlfam_pm.SelectedItem.Text;
				string todate=ddltmonth.SelectedItem.Text+"/"+ddltday.SelectedItem.Text+"/"+ddltyear.SelectedItem.Text+" "+ddlttimehr.SelectedItem.Text+":"+ddlttimemin.SelectedItem.Text+":"+"00"+" "+ddltam_pm.SelectedItem.Text;
				string rdate=ddlrmonth.SelectedItem.Text+"/"+ddlrday.SelectedItem.Text+"/"+ddlryear.SelectedItem.Text+" "+ddlrtimehr.SelectedItem.Text+":"+ddlrtimemin.SelectedItem.Text+":"+"00"+" "+ddlram_pm.SelectedItem.Text;
				string strcmd="insert into occurancedetails values('"+txtfirno.Text.Trim()+"','" +Convert.ToDateTime(fromdate)+ "','" +Convert.ToDateTime(todate)+"','"+Convert.ToDateTime(rdate)+"','"+info+"','"+ddldist.SelectedItem.Text+"','"+ddldir.SelectedItem.Text+"','"+txthno.Text+"','"+txtvillage.Text+"','"+txtdist.Text+"','"+txtstate.Text+"','"+txtphone.Text+"','"+txtpin.Text+"')";
				SqlCommand cmd=new SqlCommand(strcmd,con);
				int i=cmd.ExecuteNonQuery();
                if (i != 0)
                {
                    if (Session["ctrllog"].ToString().Equals("police"))
                    {
                        Response.Redirect("crime_details.aspx");
                    }
                    else
                    {
                        Response.Redirect("property_details.aspx");
                    }
                }

			}
			catch(Exception  ex)
			{
				Response.Write(ex.ToString());
			}
		}

	
	}
}
