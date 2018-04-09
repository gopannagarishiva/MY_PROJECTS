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
		WebForm28 : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
            if (!IsPostBack)
            {
                txtfirno.Text = Session["Firno"].ToString();
                for (int i = 1; i <= 31; i++)
                {
                    ddlfday.Items.Add(i.ToString());
                    ddltday.Items.Add(i.ToString());
                    ddlrday.Items.Add(i.ToString());
                }
                for (int j = 1; j <= 12; j++)
                {
                    ddlfmonth.Items.Add(j.ToString());
                    ddltmonth.Items.Add(j.ToString());
                    ddlrmonth.Items.Add(j.ToString());
                }

                for (int k = 1950; k <= 2050; k++)
                {
                    ddlfyear.Items.Add(k.ToString());
                    ddltyear.Items.Add(k.ToString());
                    ddlryear.Items.Add(k.ToString());
                }
                for (int l = 0; l <= 12; l++)
                {
                    ddlftimehr.Items.Add(l.ToString());
                    ddlttimehr.Items.Add(l.ToString());
                    ddlrtimehr.Items.Add(l.ToString());
                }
                for (int m = 0; m <= 60; m++)
                {
                    ddlftimemin.Items.Add(m.ToString());
                    ddlttimemin.Items.Add(m.ToString());
                    ddlrtimemin.Items.Add(m.ToString());
                }
                for (int n = 0; n <= 20; n++)
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
                

                txtfirno.Text = Session["Firno"].ToString();
                SqlDataAdapter adp = new SqlDataAdapter("select * from occurancedetails where firno='" + txtfirno.Text + "'", con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    txtfirno.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    txtdist.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
                    txthno.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
                    txtphone.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
                    txtpin.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
                    txtstate.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
                    txtvillage.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
                    
                    lbldist.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
                    ddldist.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[5].ToString()).Selected = true;

                    lbldir.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
                    ddldir.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[6].ToString()).Selected = true;

                    lblfromdate.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    char[] delimiterChars = { '/', ' ', ':' };
                    string text = lblfromdate.Text.ToString();
                    string[] words = text.Split(delimiterChars);
                    ddlfmonth.Items.FindByText(words[0]).Selected = true;
                    ddlfday.Items.FindByText(words[1]).Selected = true;
                    ddlfyear.Items.FindByText(words[2]).Selected = true;
                    ddlftimehr.Items.FindByText(words[3]).Selected = true;
                    //ddlftimemin.Items.FindByText(words[4]).Selected = true;
                    ddlfam_pm.Items.FindByText(words[6]).Selected = true;

                    lblrdate.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
                    char[] delimiterChars1 = { '/', ' ', ':' };
                    string text1 = lblrdate.Text.ToString();
                    string[] words1 = text1.Split(delimiterChars);
                    ddlrday.Items.FindByText(words1[0]).Selected = true;
                    ddlrmonth.Items.FindByText(words1[1]).Selected = true;
                    ddlryear.Items.FindByText(words1[2]).Selected = true;
                    ddlrtimehr.Items.FindByText(words1[3]).Selected = true;
                    //ddlrtimemin.Items.FindByText(words1[4]).Selected = true;
                    ddlram_pm.Items.FindByText(words1[6]).Selected = true;

                    lbltodate.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    char[] delimiterChars2 = { '/', ' ', ':' };
                    string text2 = lbltodate.Text.ToString();
                    string[] words2 = text2.Split(delimiterChars);
                    ddltmonth.Items.FindByText(words2[0]).Selected = true;
                    ddltday.Items.FindByText(words2[1]).Selected = true;
                    ddltyear.Items.FindByText(words2[2]).Selected = true;
                    ddlttimehr.Items.FindByText(words2[3]).Selected = true;
                    //ddlttimemin.Items.FindByText(words2[4]).Selected = true;
                    ddltam_pm.Items.FindByText(words2[6]).Selected = true;

                    lbltoi.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                    rblinfo.Items.FindByText(ds.Tables[0].Rows[0].ItemArray[4].ToString()).Selected = true;
                }
                else
                    Label5.Text = "No such Occurence of Offence Found";
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
				
				SqlCommand cmd2=new SqlCommand("delete from occurancedetails where firno='"+txtfirno.Text+"'",con);
				cmd2.ExecuteNonQuery();
				string strcmd="insert into occurancedetails values('" +txtfirno.Text+ "','" +fromdate+ "','" +todate+"','"+rdate+"','"+info+"','"+ddldist.SelectedItem.Text+"','"+ddldir.SelectedItem.Text+"','"+txthno.Text+"','"+txtvillage.Text+"','"+txtdist.Text+"','"+txtstate.Text+"','"+txtpin.Text+"','"+txtphone.Text+"')";
				SqlCommand cmd=new SqlCommand(strcmd,con);
				cmd.ExecuteNonQuery();
				Response.Redirect("updating_option.aspx");
			}
			catch(Exception  ex)
			{
				Response.Write(ex.ToString());
			}
		}


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("updating_option.aspx");
        }
}
}
