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
	/// <summary>
	/// Summary description for WebForm10.
	/// </summary>
	public partial class WebForm20 : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{	
				txtfirno.Text=Session["Firno"].ToString();
				SqlDataAdapter adp=new SqlDataAdapter("select * from property_details where firno='"+txtfirno.Text+"'",con);
				DataSet ds=new DataSet();
				adp.Fill(ds);
				txtfirno.Text=ds.Tables[0].Rows[0].ItemArray[0].ToString();
				txtpd.Text=ds.Tables[0].Rows[0].ItemArray[1].ToString();
				txtpv.Text=ds.Tables[0].Rows[0].ItemArray[2].ToString();
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
		protected void buts_v_Click(object sender, System.EventArgs e)
		{
			if(con.State==ConnectionState.Closed)
				con.Open();
			SqlCommand cmd2=new SqlCommand("delete from property_details where firno='"+txtfirno.Text+"'",con);
			cmd2.ExecuteNonQuery();
			string strcmd="insert into property_details values('" +txtfirno.Text+ "','" +txtpd.Text+ "','" +txtpv.Text+"')";
			SqlCommand cmd=new SqlCommand(strcmd,con);
			cmd.ExecuteNonQuery();
			Response.Redirect("updating_option.aspx");
		}
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("updating_option.aspx");
        }
}
}
