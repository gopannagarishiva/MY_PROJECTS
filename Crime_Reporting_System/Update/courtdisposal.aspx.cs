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
	
	public partial class WebForm25 : System.Web.UI.Page
	{
		
		private void InitializeComponent()
		{    

		}
		
		SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
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
				txtfirno.Text=Session["Firno"].ToString();	
				SqlDataAdapter adp=new SqlDataAdapter("select * from courtdisposal_details where firno='"+txtfirno.Text+"'",con);
				DataSet ds=new DataSet();
				adp.Fill(ds);
			//	DataGrid1.DataSource=ds;
			//	DataGrid1.DataBind();
                if (ds.Tables[0].Rows.Count != 0)
                {
                    txtfirno.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    txtcity.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
                    txtcname.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    txtfhname.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
                    txthno.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
                    txtjmt.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();
                    txtmno.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();
                    txtphno.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
                    txtpname.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
                    txtstate.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
                    txtstr.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
                    txtwname.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();

                    lblgender.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
                    ddlgender.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[7].ToString().Trim()).Selected = true;

                    lbldate.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    char[] delimiterChars = { '/', ' ', ':' };
                    string text = lbldate.Text.ToString();
                    string[] words = text.Split(delimiterChars);
                    ddlmonth.Items.FindByValue(words[0]).Selected = true;
                    ddlday.Items.FindByValue(words[1]).Selected = true;
                    ddlyear.Items.FindByValue(words[2]).Selected = true;

                    lblage.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
                    ddlage.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[6].ToString()).Selected = true;
                }
                else
                    Label23.Visible = true;
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
		
		#endregion
        //SqlConnection con=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
		protected void savebutton_Click(object sender, System.EventArgs e)
		{
				try
		 {
			 if(con.State==ConnectionState.Closed)
				 con.Open();
			 SqlCommand cmd2=new SqlCommand("delete from courtdisposal_details where firno='"+txtfirno.Text+"'",con);
			 cmd2.ExecuteNonQuery();
			 string date=ddlmonth.SelectedItem.Text+"/"+ddlday.SelectedItem.Text+"/"+ddlyear.SelectedItem.Text;
			 string strcmd="insert into courtdisposal_details values('" +txtfirno.Text+ "','"+txtcname.Text+"','" +date+ "','" +txtpname.Text+ "','"+txtwname.Text+ "','" +txtfhname.Text+ "','"+ddlage.SelectedItem.Text+ "','"+ddlgender.SelectedItem.Text+ "','"+txthno.Text+ "','" +txtstr.Text+ "','" +txtcity.Text+ "','" +txtstate.Text+ "','" +txtphno.Text+ "','" +txtmno.Text+ "','" +txtjmt.Text+"')";
			 SqlCommand cmd=new SqlCommand(strcmd,con);
			 cmd.ExecuteNonQuery();
			 Response.Redirect("updating_option.aspx");
		 }
		 catch(Exception  ex)
		 {
			 Response.Write(ex.ToString());
		 }
		
		}
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("updating_option.aspx");
        }
}
}
