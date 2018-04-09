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
	public partial class WebForm5 : System.Web.UI.Page
	{
	
		SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, System.EventArgs e)
        {
            string str;
            DataSet ds = new DataSet();
            str = Session["Firno"].ToString().Trim();
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("firinfo_retrival", con);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.Add("@param", SqlDbType.NChar, 20);
            adp.SelectCommand.Parameters["@param"].Value = str;
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Label4.Visible = true;
            }
            else
            {
                txtfirno.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
                txtdate.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                txtdist.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                txtps.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
                txtact.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                txtsec.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
                txtoccfdate.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
                txtocctdate.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
                txtrdate_time.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
                txttype.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
                txtodiste.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
                txtohno.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
                txtostr.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
                txtovil.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();
                txtodist.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();
                txtostate.Text = ds.Tables[0].Rows[0].ItemArray[15].ToString();
                txtcname.Text = ds.Tables[0].Rows[0].ItemArray[16].ToString();
                txtcfname.Text = ds.Tables[0].Rows[0].ItemArray[17].ToString();
                txtcdob.Text = ds.Tables[0].Rows[0].ItemArray[18].ToString();
                txtcage.Text = ds.Tables[0].Rows[0].ItemArray[19].ToString();
                txtcnan.Text = ds.Tables[0].Rows[0].ItemArray[20].ToString();
                txtcpno.Text = ds.Tables[0].Rows[0].ItemArray[21].ToString();
                txtchno.Text = ds.Tables[0].Rows[0].ItemArray[22].ToString();
                txtcstr.Text = ds.Tables[0].Rows[0].ItemArray[23].ToString();
                txtcvil.Text = ds.Tables[0].Rows[0].ItemArray[24].ToString();
                txtccity.Text = ds.Tables[0].Rows[0].ItemArray[25].ToString();
                txtcstate.Text = ds.Tables[0].Rows[0].ItemArray[26].ToString();
                txtcphone.Text = ds.Tables[0].Rows[0].ItemArray[27].ToString();
                txtaname.Text = ds.Tables[0].Rows[0].ItemArray[28].ToString();
                txtafname.Text = ds.Tables[0].Rows[0].ItemArray[29].ToString();
                txtaage.Text = ds.Tables[0].Rows[0].ItemArray[30].ToString();
                txtagender.Text = ds.Tables[0].Rows[0].ItemArray[31].ToString();
                txtanat.Text = ds.Tables[0].Rows[0].ItemArray[32].ToString();
                txtppno.Text = ds.Tables[0].Rows[0].ItemArray[33].ToString();
                txtahno.Text = ds.Tables[0].Rows[0].ItemArray[34].ToString();
                txtastr.Text = ds.Tables[0].Rows[0].ItemArray[35].ToString();
                //DataGrid1.DataBind();
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

		protected void Button2_Click(object sender, System.EventArgs e)
		{
		Response.Redirect("fulldetails.aspx");
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
		Response.Redirect("reports.aspx");
		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
            Response.Redirect("../forms/loginmain.aspx");
            //Server.Transfer("login.aspx");
		}

				
	}
}
