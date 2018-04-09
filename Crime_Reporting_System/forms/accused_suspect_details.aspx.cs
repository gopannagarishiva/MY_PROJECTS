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
	public partial class WebForm11 : System.Web.UI.Page
	{
		//protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{	
				txtfirno.Text=Session["Firno"].ToString();
				for(int i=1;i<=100;i++)
				{
					ddlage.Items.Add(i.ToString());
				}
				for(int k=1;k<=12;k++)
				{
					ddldobmon.Items.Add(k.ToString());
				}
				for(int j=1;j<=31;j++)
				{
					ddldobday.Items.Add(j.ToString());
				}
				for(int l=1950;l<=2050;l++)
				{
					ddldobyear.Items.Add(l.ToString());
				}
				for(int m=1;m<=30;m++)
				{
					ddlacno.Items.Add(m.ToString());
				}
				ddlgender.Items.Add("MALE");
				ddlgender.Items.Add("FEMALE");
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
		//SqlConnection con=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
		
		protected void Button1_Click(object sender, System.EventArgs e)
		{
            
			try
			{
				if(con.State==ConnectionState.Closed)
				con.Open();				
				string dob=ddldobmon.SelectedItem.Text+"/"+ddldobday.SelectedItem.Text+"/"+ddldobyear.SelectedItem.Text;
				string strcmd="insert into accused_details values('"+txtfirno.Text.Trim()+"','"+rbknown.SelectedItem.Text+"','" +ddlacno.SelectedItem.Text+ "','" +txtht.Text+ "','" +txtclr.Text+ "','" +txtbl.Text+ "','"+txtwtk.Text+ "','"+txtcrl.Text+ "','"+txtevents.Text+ "','" +txtaccname.Text+ "','" +txtfhname.Text+ "','" +Convert.ToDateTime(dob)+ "','" +ddlage.SelectedItem.Text+ "','" +ddlgender.SelectedItem.Text+ "','" +txtnat.Text+ "','" +txtpno.Text+ "','" +txthno.Text+ "','" +txtstreet.Text+ "','" +txtcity.Text+ "','" +txtstate.Text+ "','"+txtmno.Text+ "','" +txtpno.Text+"')";
				SqlCommand cmd=new SqlCommand(strcmd,con);
				cmd.ExecuteNonQuery();
                if (Session["ctrllog"].ToString().Equals("police"))
                {
                    Response.Redirect("arrest_surrender_form.aspx");
                }
                else
                {
                    Label24.Visible = true;
                    RegisterClientScriptBlock("a1", "<script>alert('Thank U for your complaint')</script>");
                    Response.Redirect("../new/user_option.aspx");
                }
			}
			catch(Exception  ex)
			{
				Response.Write(ex.ToString());
			}
		}

				
	}
}
