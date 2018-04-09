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
	
	public partial class WebForm21 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.CheckBox CheckBox1;
		protected System.Web.UI.WebControls.CheckBox CheckBox2;
		protected System.Web.UI.WebControls.Label Label16;
		protected System.Web.UI.WebControls.DropDownList DropDownList6;
		protected System.Web.UI.WebControls.Label Label17;
		protected System.Web.UI.WebControls.TextBox TextBox12;
		protected System.Web.UI.WebControls.TextBox TextBox13;
		protected System.Web.UI.WebControls.Label Label18;
		protected System.Web.UI.WebControls.Label Label19;
		protected System.Web.UI.WebControls.TextBox TextBox14;
		protected System.Web.UI.WebControls.Label Label20;
		protected System.Web.UI.WebControls.Label Label21;
		protected System.Web.UI.WebControls.Label Label22;
		protected System.Web.UI.WebControls.TextBox TextBox15;
		protected System.Web.UI.WebControls.TextBox TextBox16;
		protected System.Web.UI.WebControls.Label Label23;
		protected System.Web.UI.WebControls.TextBox TextBox17;
		protected System.Web.UI.WebControls.TextBox TextBox18;
		protected System.Web.UI.WebControls.Label Label24;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{	
				txtfirno.Text=Session["Firno"].ToString();	
				for(int i=1;i<=12;i++)
				{
					ddldobmonth.Items.Add(i.ToString());
				}
				for(int j=1;j<=31;j++)
				{
					ddldobday.Items.Add(j.ToString());
				}
				for(int k=1950;k<=2050;k++)
				{
					ddldobyear.Items.Add(k.ToString());
				}
				for(int l=1;l<=100;l++)
				{
					ddlage.Items.Add(l.ToString());
				}
				ddlgender.Items.Add("MALE");
				ddlgender.Items.Add("FEMALE");
			
				SqlDataAdapter adp=new SqlDataAdapter("select * from complainant_details where firno='"+txtfirno.Text+"'",con);
				DataSet ds=new DataSet();
				adp.Fill(ds);
				txtcity.Text=ds.Tables[0].Rows[0].ItemArray[11].ToString();
				txtcname.Text=ds.Tables[0].Rows[0].ItemArray[1].ToString();
				txtfhname.Text=ds.Tables[0].Rows[0].ItemArray[2].ToString();				
				txtfirno.Text=ds.Tables[0].Rows[0].ItemArray[0].ToString();
				txtgname.Text=ds.Tables[0].Rows[0].ItemArray[3].ToString();
				txthno.Text=ds.Tables[0].Rows[0].ItemArray[9].ToString();
				txtmb.Text=ds.Tables[0].Rows[0].ItemArray[14].ToString();
				txtnatinality.Text=ds.Tables[0].Rows[0].ItemArray[7].ToString();
				txtph.Text=ds.Tables[0].Rows[0].ItemArray[13].ToString();
				txtpno.Text=ds.Tables[0].Rows[0].ItemArray[8].ToString();
				txtstate.Text=ds.Tables[0].Rows[0].ItemArray[12].ToString();
				txtstreet_village.Text=ds.Tables[0].Rows[0].ItemArray[10].ToString();
				
                lblage.Text=ds.Tables[0].Rows[0].ItemArray[5].ToString();
                ddlage.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[5].ToString()).Selected = true;
                
                lblgender.Text=ds.Tables[0].Rows[0].ItemArray[6].ToString();
                ddlgender.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[6].ToString().Trim()).Selected = true;
                
                lbldob.Text=ds.Tables[0].Rows[0].ItemArray[4].ToString();
                char[] delimiterChars = { '/', ' ', ':' };
                string text = lbldob.Text.ToString();
                string[] words = text.Split(delimiterChars);
                ddldobmonth.Items.FindByValue(words[0]).Selected = true;
                ddldobday.Items.FindByValue(words[1]).Selected = true;
                ddldobyear.Items.FindByValue(words[2]).Selected = true;
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
				SqlCommand cmd2=new SqlCommand("delete from complainant_details where firno='"+txtfirno.Text+"'",con);
				cmd2.ExecuteNonQuery();
				string dob=ddldobmonth.SelectedItem.Text+"/"+ddldobday.SelectedItem.Text+"/"+ddldobyear.SelectedItem.Text;
				string strcmd="insert into complainant_details values('" +txtfirno.Text+ "','" +txtcname.Text+ "','" +txtfhname.Text+"','"+txtgname.Text+"','"+dob+"','"+ddlage.SelectedItem.Text+"','"+ddlgender.SelectedItem.Text+"','"+txtnatinality.Text+"','"+txtpno.Text+"','"+txthno.Text+"','"+txtstreet_village.Text+"','"+txtcity.Text+"','"+txtstate.Text+"','"+txtph.Text+"','"+txtmb.Text+"')";
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
