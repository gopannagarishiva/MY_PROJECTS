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
	public partial class WebForm23 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Label Label11;
	
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
				SqlDataAdapter adp=new SqlDataAdapter("select * from crime_details where firno='"+txtfirno.Text+"'",con);
				DataSet ds=new DataSet();
				adp.Fill(ds);
				txtfirno.Text=ds.Tables[0].Rows[0].ItemArray[0].ToString();
				txtcrimedet.Text=ds.Tables[0].Rows[0].ItemArray[3].ToString();
				txtio.Text=ds.Tables[0].Rows[0].ItemArray[4].ToString();
				txtps.Text=ds.Tables[0].Rows[0].ItemArray[2].ToString();
				txtrank.Text=ds.Tables[0].Rows[0].ItemArray[6].ToString();
				txtreson.Text=ds.Tables[0].Rows[0].ItemArray[8].ToString();
				txtsno.Text=ds.Tables[0].Rows[0].ItemArray[5].ToString();

				lbldate.Text=ds.Tables[0].Rows[0].ItemArray[1].ToString();
                char[] delimiterChars = { '/', ' ', ':' };
                string text = lbldate.Text.ToString();
                string[] words = text.Split(delimiterChars);
                ddlmonth.Items.FindByValue(words[0]).Selected = true;
                ddlday.Items.FindByValue(words[1]).Selected = true;
                ddlyear.Items.FindByValue(words[2]).Selected = true;

				lblrej.Text=ds.Tables[0].Rows[0].ItemArray[7].ToString();
                rbreject.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[7].ToString().Trim()).Selected = true;	
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
		protected void save_con_Click(object sender, System.EventArgs e)
		{
			try
			{
				if(con.State==ConnectionState.Closed)
				con.Open();
				SqlCommand cmd2=new SqlCommand("delete from crime_details where firno='"+txtfirno.Text+"'",con);
				cmd2.ExecuteNonQuery();
				
				string date=ddlmonth.SelectedItem.Text+"/"+ddlday.SelectedItem.Text+"/"+ddlyear.SelectedItem.Text;
				string strcmd="insert into crime_details values('" +txtfirno.Text+ "','" +Convert.ToDateTime(date)+ "','" +txtps.Text+"','"+txtcrimedet.Text+"','"+txtio.Text+"','"+txtsno.Text+"','"+txtrank.Text+"','"+rbreject.SelectedItem.Text+"','"+txtreson.Text+"')";
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
