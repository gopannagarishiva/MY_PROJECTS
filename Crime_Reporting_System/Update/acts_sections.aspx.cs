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
	public partial class WebForm27 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.DropDownList DropDownList3;
		protected System.Web.UI.WebControls.DropDownList DropDownList4;
		protected System.Web.UI.WebControls.DataGrid DataGrid2;

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			InitializeComponent();
			base.OnInit(e);
		}		
		
		private void InitializeComponent()
		{ 			
			this.DataGrid1.ItemCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_ItemCommand);

		}	
		#endregion

		SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
		int j=0;
		int cnt=0;
        DataSet ds;
		public string section;
		public string act;
		public string grave;
		public string punishable;
		protected void Page_Load(object sender, System.EventArgs e)
		{			
			if(!IsPostBack)
			{	
				txtfirno.Text=Session["Firno"].ToString().Trim();
				lbldisdate.Text=DateTime.Now.ToString();
				ds=new DataSet();
				SqlDataAdapter adp=new SqlDataAdapter("select * from sections_acts",con);			
				adp.Fill(ds);	
				Session["dss"]=ds;
				cnt=ds.Tables[0].Rows.Count;	
				for(j=0;j<cnt;j++)
				{
					ddlact.Items.Add(ds.Tables[0].Rows[j].ItemArray[1].ToString());
					ddlsection.Items.Add(ds.Tables[0].Rows[j].ItemArray[3].ToString());					
				}
                SqlDataAdapter da = new SqlDataAdapter("select distinct sec,act,actdesc,secdcpt from act_section where firno='" + txtfirno.Text + "'", con);
                DataSet ds2 = new DataSet();
                da.Fill(ds2);
                if (ds2.Tables[0].Rows.Count != 0)
                {
                    ddlact.Items.FindByValue(ds2.Tables[0].Rows[0].ItemArray[1].ToString()).Selected = true;
                    ddlsection.Items.FindByValue(ds2.Tables[0].Rows[0].ItemArray[0].ToString()).Selected = true;
                    txtactdesc.Text = ds2.Tables[0].Rows[0].ItemArray[2].ToString();
                    txtsectiondesc.Text = ds2.Tables[0].Rows[0].ItemArray[3].ToString();
                }

				if(con.State==ConnectionState.Closed)
				{
					con.Open();
				}				
				string str=Session["Firno"].ToString();
				SqlCommand cmd=new SqlCommand("insert into temp_acts_sections select * from act_section where firno='"+str+"'",con);
				cmd.ExecuteNonQuery();
				SqlDataAdapter adp1=new SqlDataAdapter("select * from temp_acts_sections where firno='"+str+"'",con);
                DataSet ds3=new DataSet();
				adp1.Fill(ds3);
                if (ds3.Tables[0].Rows.Count != 0)
                {
                    txtpstation.Text = ds3.Tables[0].Rows[0].ItemArray[3].ToString();
                    txtpstation.ReadOnly = true;
                    DataGrid1.DataSource = ds3;
                    DataGrid1.DataBind();
                }
			}
            //Page.RegisterClientScriptBlock("", "<script>alert(dsaffafdsdaf)</script>");
		}

        protected void ddlsection_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            
                int a=ddlsection.SelectedIndex;
                
                DataSet ds1 = (DataSet)Session["dss"];
                section = ds1.Tables[0].Rows[a].ItemArray[4].ToString();
                txtsectiondesc.Text = section;
                act = ds1.Tables[0].Rows[a].ItemArray[2].ToString();
                txtactdesc.Text = act;
                grave = ds1.Tables[0].Rows[a].ItemArray[5].ToString();
                txtgrave.Text = grave;
                punishable = ds1.Tables[0].Rows[a].ItemArray[6].ToString();
                txtpunishable.Text = punishable;
            
        }
				
		protected void btnadd_Click(object sender, System.EventArgs e)
		{
			if(con.State==ConnectionState.Closed)
				con.Open();
			SqlDataReader rd;
			SqlCommand cmd=new SqlCommand("insert into temp_acts_sections values('"+txtfirno.Text.Trim()+"','"+lbldisdate.Text+"','"+ddldist.SelectedItem.Text+"','"+txtpstation.Text+"','"+ddlact.SelectedItem.Text+"','"+txtactdesc.Text+"','"+ddlsection.SelectedItem.Text+"','"+txtsectiondesc.Text+"','" +(txtgrave.Text.Trim())+ "','" +(txtpunishable.Text.Trim())+"') ",con);
			rd=cmd.ExecuteReader(CommandBehavior.CloseConnection);				
			rd.Close();
			if(con.State==ConnectionState.Closed)
				con.Open();
			SqlDataAdapter adp=new SqlDataAdapter("select * from temp_acts_sections",con);
			DataSet ds=new DataSet();
			adp.Fill(ds);
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
		}

		protected void btnsave_Click(object sender, System.EventArgs e)
		{
			try
			{

				if(con.State==ConnectionState.Closed)
					con.Open();
				string fir=Session["Firno"].ToString();
				SqlCommand cmd2=new SqlCommand("delete from act_section where firno='"+fir+"'",con);
				cmd2.ExecuteNonQuery();
				SqlCommand cmd=new SqlCommand("insert into act_section select * from temp_acts_sections",con);
				cmd.ExecuteNonQuery();
			}
			catch(SqlException ex)
			{
				Response.Write(ex.ToString());
			}
			if(con.State==ConnectionState.Closed)
				con.Open();
			SqlDataReader rd1;
			SqlCommand cmd1=new SqlCommand("delete from temp_acts_sections",con);
			rd1=cmd1.ExecuteReader(CommandBehavior.CloseConnection);
			rd1.Close();
            Response.Redirect("updating_option.aspx");
		}

		private void DataGrid1_ItemCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			if(con.State==ConnectionState.Closed)
			con.Open();			
			string secno=e.Item.Cells[2].Text;
			Response.Write(secno.ToString());
			SqlCommand cmd=new SqlCommand("delete from temp_acts_sections where sec='"+secno.Trim()+"'",con);
            cmd.ExecuteNonQuery();
			
			SqlDataReader rd;
			SqlCommand cmd1=new SqlCommand("select * from temp_acts_sections",con);
			rd=cmd1.ExecuteReader();
            if (rd.Read())
            {
                DataGrid1.DataSource = rd;
                DataGrid1.DataBind();
            }
			con.Close();
		}
        				
	    protected void  Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("updating_option.aspx");

        }
    }
}