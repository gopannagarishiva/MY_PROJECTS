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
	public partial class WebForm22 : System.Web.UI.Page
	{
	
		SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, System.EventArgs e)
        {
            if (!IsPostBack)
            {
                txtfirno.Text = Session["Firno"].ToString();
                for (int i = 1; i <= 31; i++)
                {
                    ddlday.Items.Add(i.ToString());
                }
                for (int j = 1; j <= 12; j++)
                {
                    ddlmonth.Items.Add(j.ToString());
                }
                for (int k = 1950; k <= 2050; k++)
                {
                    ddlyear.Items.Add(k.ToString());
                }
                for (int l = 0; l <= 12; l++)
                {
                    ddlhr.Items.Add(l.ToString());
                }
                for (int m = 0; m <= 60; m++)
                {
                    ddlmin.Items.Add(m.ToString());
                }
                SqlDataAdapter adp = new SqlDataAdapter("select * from property_seezed_details where firno='" + txtfirno.Text + "'", con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    Label5.Visible = true;
                }
                else
                {
                    txtfirno.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    txtcity.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
                    txthno.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                    txtname.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    txtnat.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
                    txtodet.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
                    txtpdet.Text = ds.Tables[0].Rows[0].ItemArray[16].ToString();
                    txtpsname.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    txtstate.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
                    txtstr.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
                    txtwcity.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();
                    txtwhno.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
                    txtwname.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
                    txtwphone.Text = ds.Tables[0].Rows[0].ItemArray[15].ToString();
                    txtwstate.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();
                    txtwstr.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
                    
                    lbldate.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    char[] delimiterChars = { '/', ' ', ':' };
                    string text = lbldate.Text.ToString();
                    string[] words = text.Split(delimiterChars);
                    ddlmonth.Items.FindByText(words[0]).Selected = true;
                    ddlday.Items.FindByText(words[1]).Selected = true;
                    ddlyear.Items.FindByText(words[2]).Selected = true;
                    ddlhr.Items.FindByText(words[3]).Selected = true;
                    //ddlmin.Items.FindByText(words[4]).Selected = true;
                    ddlam_pm.Items.FindByText(words[6]).Selected = true;
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
				SqlCommand cmd2=new SqlCommand("delete from property_seezed_details where firno='"+txtfirno.Text+"'",con);
				cmd2.ExecuteNonQuery();
				string date=ddlmonth.SelectedItem.Text+"/"+ddlday.SelectedItem.Text+"/"+ddlyear.SelectedItem.Text+" "+ddlhr.SelectedItem.Text+":"+ddlmin.SelectedItem.Text+":00"+ddlam_pm.SelectedItem.Text;
				string strcmd="insert into property_seezed_details values('" +txtfirno.Text+"','" +txtpsname.Text+ "','" +Convert.ToDateTime(date)+ "','" +txtnat.Text+"','"+txthno.Text+"','"+txtstr.Text+"','"+txtcity.Text+"','"+txtstate.Text+"','"+txtname.Text+"','"+txtodet.Text+"','"+txtwname.Text+"','"+txtwstr.Text+"','"+txtwhno.Text+"','"+txtwcity.Text+"','"+txtwstate.Text+"','"+txtwphone.Text+"','"+txtpdet.Text+"')";
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
