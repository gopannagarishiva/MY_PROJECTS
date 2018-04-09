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
	
	public partial class WebForm11 : System.Web.UI.Page
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
		//SqlConnection con=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
        SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
		
		protected void save_con_Click(object sender, System.EventArgs e)
		{
			try
			{
				if(con.State==ConnectionState.Closed)
				con.Open();
            if (txtpno.Text != "")
                txtpno.Text = " ";
				string dob=ddldobmonth.SelectedItem.Text+"/"+ddldobday.SelectedItem.Text+"/"+ddldobyear.SelectedItem.Text;
                string strcmd = "insert into complainant_details values('" + txtfirno.Text.Trim() + "','" + txtcname.Text + "','" + txtfhname.Text + "','" + txtgname.Text + "','" + dob + "','" + ddlage.SelectedItem.Text + "','" + ddlgender.SelectedItem.Text + "','" + txtnatinality.Text + "','" + txtpno.Text + "','" + txthno.Text + "','" + txtstreet_village.Text + "','" + txtcity.Text + "','" + txtstate.Text + "'," + Convert.ToInt64(txtph.Text) + "," + Convert.ToInt64(txtmb.Text )+ ")";
				SqlCommand cmd=new SqlCommand(strcmd,con);
				int a=cmd.ExecuteNonQuery();
                if (a != 0)
                {
                    Response.Redirect("occuranceofoffence.aspx");
                }
			}
			catch(Exception  ex)
			{
				Response.Write(ex.Message);
			}
		}
	}
}
