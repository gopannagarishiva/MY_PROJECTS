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
	public partial class WebForm21 : System.Web.UI.Page
	{
		
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
        protected void Page_Load(object sender, System.EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 1; i <= 100; i++)
                {
                    ddlage.Items.Add(i.ToString());
                }
                txtfirno.Text = Session["Firno"].ToString();
                SqlDataAdapter adp = new SqlDataAdapter("select * from accused_details where firno='" + txtfirno.Text + "'", con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    Label24.Visible = true;
                }
                else
                {
                    txtfirno.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    txtaccname.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
                    txtbl.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
                    txtcity.Text = ds.Tables[0].Rows[0].ItemArray[18].ToString();
                    txtclr.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                    txtcrl.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
                    txtdob.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
                    txtevents.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
                    txtfhname.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
                    txthno.Text = ds.Tables[0].Rows[0].ItemArray[16].ToString();
                    txtht.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
                    txtmno.Text = ds.Tables[0].Rows[0].ItemArray[21].ToString();
                    txtnat.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();
                    txtphno.Text = ds.Tables[0].Rows[0].ItemArray[20].ToString();
                    txtpno.Text = ds.Tables[0].Rows[0].ItemArray[15].ToString();
                    txtstate.Text = ds.Tables[0].Rows[0].ItemArray[19].ToString();
                    txtstreet.Text = ds.Tables[0].Rows[0].ItemArray[17].ToString();
                    txtwtk.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
                    
                    lblno.Text = "*" + ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    ddlacno.SelectedItem.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    
                    lblage.Text = "*" + ds.Tables[0].Rows[0].ItemArray[12].ToString();
                    ddlage.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[12].ToString()).Selected = true;
                    
                    lblgender.Text = "*" + ds.Tables[0].Rows[0].ItemArray[13].ToString();
                    ddlgender.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[13].ToString().ToLower()).Selected = true;
                    
                    lblk.Text = "*" + ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rbknown.Items.FindByValue(ds.Tables[0].Rows[0].ItemArray[1].ToString()).Selected = true;
                    //			ddlacno.SelectedItem.Text=ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    //			ddlage.SelectedItem.Text=ds.Tables[0].Rows[0].ItemArray[12].ToString();
                    //			ddlgender.SelectedItem.Text=ds.Tables[0].Rows[0].ItemArray[13].ToString();		
                    //			rbknown.SelectedItem.Text=ds.Tables[0].Rows[0].ItemArray[1].ToString();		


                }
            }
        }

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			try
			{
				if(con.State==ConnectionState.Closed)
				con.Open();
				SqlCommand cmd2=new SqlCommand("delete from accused_details where firno='"+txtfirno.Text+"'",con);
				cmd2.ExecuteNonQuery();
				string strcmd="insert into accused_details values('" +txtfirno.Text+ "','"+rbknown.SelectedItem.Text+"','" +ddlacno.SelectedItem.Text+ "','" +txtht.Text+ "','" +txtclr.Text+ "','" +txtbl.Text+ "','"+txtwtk.Text+ "','"+txtcrl.Text+ "','"+txtevents.Text+ "','" +txtaccname.Text+ "','" +txtfhname.Text+ "','" +txtdob.Text+ "','" +ddlage.SelectedItem.Text+ "','" +ddlgender.SelectedItem.Text+ "','" +txtnat.Text+ "','" +txtpno.Text+ "','" +txthno.Text+ "','" +txtstreet.Text+ "','" +txtcity.Text+ "','" +txtstate.Text+ "','"+txtmno.Text+ "','" +txtphno.Text+"')";
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
