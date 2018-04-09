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
	public partial class Result_of_appleant2 : System.Web.UI.Page
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
			
				SqlDataAdapter adp=new SqlDataAdapter("select * from resultof_appeal where firno='"+txtfirno.Text+"'",con);
				DataSet ds=new DataSet();
				adp.Fill(ds);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    txtfirno.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    txtappname.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    txtappno.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    txtbcname.Text = ds.Tables[0].Rows[0].ItemArray[15].ToString();
                    txtcity.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
                    txtcname.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
                    txthno.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
                    txtinst.Text = ds.Tables[0].Rows[0].ItemArray[18].ToString();
                    txtmno.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
                    txtphno.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
                    txtpname.Text = ds.Tables[0].Rows[0].ItemArray[17].ToString();
                    txtpsname.Text = ds.Tables[0].Rows[0].ItemArray[16].ToString();
                    txtresult.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                    txtsname.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
                    txtstate.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
                    txtstr.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();

                    lblbail.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();
                    rbb.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[13].ToString().Trim()).Selected = true;

                    lbldate.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();
                    char[] delimiterChars = { '/', ' ', ':' };
                    string text = lbldate.Text.ToString();
                    string[] words = text.Split(delimiterChars);
                    ddlmonth.Items.FindByText(words[0]).Selected = true;
                    ddlday.Items.FindByText(words[1]).Selected = true;
                    ddlyear.Items.FindByText(words[2]).Selected = true;

                    lblgender.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
                    ddlgender.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[6].ToString().Trim()).Selected = true;
                }
                else
                {
                    Label23.Visible = true;
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
				
				SqlCommand cmd2=new SqlCommand("delete from resultof_appeal where firno='"+txtfirno.Text+"'",con);
				cmd2.ExecuteNonQuery();
				
				string strcmd="insert into resultof_appeal values('" +txtfirno.Text+ "','"+txtappno.Text+"','"+txtappname.Text+"','"+txtcname.Text+ "','"+txtresult.Text+ "','"+txtsname.Text+"','"+ddlgender.SelectedItem.Text+"','"+txthno.Text+"','"+txtstr.Text+ "','" +txtcity.Text+ "','"  +txtstate.Text+ "','" +txtphno.Text+"','"+txtmno.Text+ "','"+rbb.SelectedItem.Text+"','"+Convert.ToString(date)+"','"+txtbcname.Text+"','"+txtpsname.Text+"','"+txtpname.Text+"','"+txtinst.Text+"')";
				SqlCommand cmd=new SqlCommand(strcmd,con);
				cmd.ExecuteNonQuery();
				Response.Redirect("updating_option.aspx");
			}
			catch(Exception  ex)
			{
				Response.Write(ex.ToString());
			}
		}
        
        protected void cmdcancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("updating_option.aspx");
        }
}
}
