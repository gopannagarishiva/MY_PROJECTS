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
	public partial class WebForm24 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Label Label4;
		protected System.Web.UI.WebControls.DropDownList DropDownList6;
		protected System.Web.UI.WebControls.DropDownList DropDownList7;
		protected System.Web.UI.WebControls.DropDownList ddlmin;
		protected System.Web.UI.WebControls.DropDownList ddlam_pm;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
		protected System.Web.UI.WebControls.RangeValidator RangeValidator1;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator3;

        protected void Page_Load(object sender, System.EventArgs e)
        {
            if (!IsPostBack)
            {
                txtfirno.Text = Session["Firno"].ToString();
                for (int i = 1; i <= 31; i++)
                {
                    ddld.Items.Add(i.ToString());
                }
                for (int j = 1; j <= 12; j++)
                {
                    ddlmth.Items.Add(j.ToString());
                }
                for (int k = 1950; k <= 2050; k++)
                {
                    ddly.Items.Add(k.ToString());
                }
                for (int l = 0; l <= 12; l++)
                {
                    ddlh.Items.Add(l.ToString());
                }
                for (int m = 0; m <= 60; m++)
                {
                    ddlmi.Items.Add(m.ToString());
                }
                SqlDataAdapter adp = new SqlDataAdapter("select * from arrest_surrendered_details where firno='" + txtfirno.Text + "'", con);
                DataSet sd = new DataSet();
                adp.Fill(sd);
                if (sd.Tables[0].Rows.Count == 0)
                {
                    lnoinfo.Visible = true;
                }
                else
                {
                    txtaage.Text = sd.Tables[0].Rows[0].ItemArray[22].ToString();
                    txtaarea.Text = sd.Tables[0].Rows[0].ItemArray[26].ToString();
                    txtabl.Text = sd.Tables[0].Rows[0].ItemArray[32].ToString();
                    txtacaste.Text = sd.Tables[0].Rows[0].ItemArray[19].ToString();
                    txtacat.Text = sd.Tables[0].Rows[0].ItemArray[20].ToString();
                    txtacity.Text = sd.Tables[0].Rows[0].ItemArray[27].ToString();
                    txtacol.Text = sd.Tables[0].Rows[0].ItemArray[31].ToString();
                    txtafname.Text = sd.Tables[0].Rows[0].ItemArray[17].ToString();
                    txtagender.Text = sd.Tables[0].Rows[0].ItemArray[21].ToString();
                    txtaht.Text = sd.Tables[0].Rows[0].ItemArray[30].ToString();
                    txtaid.Text = sd.Tables[0].Rows[0].ItemArray[35].ToString();
                    txtalan.Text = sd.Tables[0].Rows[0].ItemArray[34].ToString();
                    txtaname.Text = sd.Tables[0].Rows[0].ItemArray[16].ToString();
                    txtanat.Text = sd.Tables[0].Rows[0].ItemArray[32].ToString();
                    txtano.Text = sd.Tables[0].Rows[0].ItemArray[15].ToString();
                    txtaocc.Text = sd.Tables[0].Rows[0].ItemArray[18].ToString();
                    txtaphno.Text = sd.Tables[0].Rows[0].ItemArray[29].ToString();
                    txtastate.Text = sd.Tables[0].Rows[0].ItemArray[28].ToString();
                    txtastr.Text = sd.Tables[0].Rows[0].ItemArray[25].ToString();
                    txtawt.Text = sd.Tables[0].Rows[0].ItemArray[33].ToString();
                    txtcarea.Text = sd.Tables[0].Rows[0].ItemArray[11].ToString();
                    txtccity.Text = sd.Tables[0].Rows[0].ItemArray[13].ToString();
                    txtcname.Text = sd.Tables[0].Rows[0].ItemArray[10].ToString();
                    txtcvil.Text = sd.Tables[0].Rows[0].ItemArray[12].ToString();
                    txtcstate.Text = sd.Tables[0].Rows[0].ItemArray[14].ToString();
                    txtdis.Text = sd.Tables[0].Rows[0].ItemArray[2].ToString();
                    txtdst.Text = sd.Tables[0].Rows[0].ItemArray[8].ToString();
                    txthno.Text = sd.Tables[0].Rows[0].ItemArray[24].ToString();
                    txtmon.Text = sd.Tables[0].Rows[0].ItemArray[7].ToString();
                    txtplace.Text = sd.Tables[0].Rows[0].ItemArray[4].ToString();
                    txtps.Text = sd.Tables[0].Rows[0].ItemArray[1].ToString();
                    txtstate.Text = sd.Tables[0].Rows[0].ItemArray[9].ToString();
                    txtstr.Text = sd.Tables[0].Rows[0].ItemArray[5].ToString();
                    txtvil.Text = sd.Tables[0].Rows[0].ItemArray[6].ToString();

                    lbldate.Text = sd.Tables[0].Rows[0].ItemArray[3].ToString();
                    char[] delimiterChars = { '/',' ',':' };
                    string text = lbldate.Text.ToString();
                    string[] words = text.Split(delimiterChars);

                    ddlmth.Items.FindByText(words[0]).Selected = true;
                    ddld.Items.FindByValue(words[1]).Selected = true;
                    ddly.Items.FindByValue(words[2]).Selected = true;
                    ddlh.Items.FindByValue(words[3]).Selected = true;
                    //ddlmi.Items.FindByValue(words[4]).Selected = true;
                    ddlap.Items.FindByValue(words[6]).Selected = true;

                    
                    
                    lblfingprev.Text = "Previously :" + sd.Tables[0].Rows[0].ItemArray[36].ToString();
                    rb1.Items.FindByValue(sd.Tables[0].Rows[0].ItemArray[36].ToString().Trim()).Selected = true;

                    lblcurrenpos.Text = "Previously :" + sd.Tables[0].Rows[0].ItemArray[37].ToString();
                    rb2.Items.FindByValue(sd.Tables[0].Rows[0].ItemArray[37].ToString()).Selected = true;
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
		SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			try
			{
				if(con.State==ConnectionState.Closed)
					con.Open();
				
				string date=ddlmth.SelectedItem.Text+"/"+ddld.SelectedItem.Text+"/"+ddly.SelectedItem.Text+" "+ddlh.SelectedItem.Text+":"+ddlmi.SelectedItem.Text+":00"+ddlap.SelectedItem.Text;
				SqlCommand cmd2=new SqlCommand("delete from arrest_surrendered_details where firno='"+txtfirno.Text+"'",con);
				cmd2.ExecuteNonQuery();
				
				string strcmd="insert into arrest_surrendered_details values('"+txtfirno.Text.Trim()+"','" +txtps.Text+ "','" +txtdst.Text+ "','" +Convert.ToDateTime(date)+ "','" +txtplace.Text+"','"+txtstr.Text+"','"+txtvil.Text+"','"+txtmon.Text+"','"+txtdst.Text+"','"+txtstate.Text+"','"+txtcname.Text+"','"+txtcvil.Text+"','"+txtcarea.Text+"','"+txtccity.Text+"','"+txtcstate.Text+"','"+txtano.Text+"','"+txtaname.Text+"','"+txtafname.Text+"','"+txtaocc.Text+"','"+txtacaste.Text+"','"+txtacat.Text+"','"+txtagender.Text+"','"+txtaage.Text+"','"+txtanat.Text+"','"+txthno.Text+"','"+txtastr.Text+"','"+txtaarea.Text+"','"+txtacity.Text+"','"+txtastate.Text+"','"+Convert.ToInt64(txtaphno.Text)+"','"+txtaht.Text+"','"+txtacol.Text+"','"+txtabl.Text+"','"+txtawt.Text+"','"+txtalan.Text+"','"+txtaid.Text+"','"+rb1.SelectedItem.Text+"','"+rb2.SelectedItem.Text+"')";
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
