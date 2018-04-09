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
	public partial class WebForm7 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.DropDownList DropDownList3;
		protected System.Web.UI.WebControls.DropDownList DropDownList4;

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

		//SqlConnection con=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
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
                ddlact.Items.Insert(0, "Select..");
                ddlsection.Items.Insert(0, "Select..");
			}
            Label10.Visible = false;
		}	

		protected void ddlsection_SelectedIndexChanged(object sender, System.EventArgs e)
		{
            if (ddlsection.SelectedIndex == 0)
            { }
            else
            {
                int a = ddlsection.SelectedIndex-1;
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
		}
				
		protected void btnadd_Click(object sender, System.EventArgs e)
		{
            //ddlact.Items.RemoveAt(0);
            //ddlsection.Items.RemoveAt(0);
            if (ddlact.SelectedIndex == 0 || ddlsection.SelectedIndex == 0)
                Label10.Visible = true;
            else
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlDataReader rd;
                SqlCommand cmd = new SqlCommand("insert into temp_acts_sections values('" + txtfirno.Text.Trim() + "','" + lbldisdate.Text + "','" + ddldist.SelectedItem.Text + "','" + ddlps.SelectedItem.Text + "','" + ddlact.SelectedItem.Text + "','" + txtactdesc.Text + "','" + ddlsection.SelectedItem.Text + "','" + txtsectiondesc.Text + "','" + (txtgrave.Text.Trim()) + "','" + (txtpunishable.Text.Trim()) + "') ", con);
                rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                rd.Close();
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlDataAdapter adp = new SqlDataAdapter("select * from temp_acts_sections", con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                DataGrid1.DataSource = ds;
                DataGrid1.DataBind();
                
            }

		}

		protected void btnsave_Click(object sender, System.EventArgs e)
		{

            if (ddlact.SelectedIndex == 0 || ddlsection.SelectedIndex == 0)
                Label10.Visible = true;
            else
            {
                try
                {
                    if (con.State == ConnectionState.Closed)
                        con.Open();
                    SqlCommand cmd = new SqlCommand("insert into act_section select * from temp_acts_sections", con);
                    cmd.ExecuteNonQuery();
                }
                catch (SqlException ex)
                {
                    Response.Write(ex.ToString());
                }
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlDataReader rd1;
                SqlCommand cmd1 = new SqlCommand("delete from temp_acts_sections", con);
                rd1 = cmd1.ExecuteReader(CommandBehavior.CloseConnection);
                rd1.Close();
                Response.Redirect("complainant_details.aspx");
            }
		}

		private void DataGrid1_ItemCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
            if (e.CommandName == "Delete")
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                string secno = e.Item.Cells[2].Text;
                Response.Write(secno.ToString());
                SqlCommand cmd = new SqlCommand("delete from temp_acts_sections where sec='" + secno.Trim() + "'", con);
                cmd.ExecuteNonQuery();

                SqlDataReader rd;
                SqlCommand cmd1 = new SqlCommand("select * from temp_acts_sections", con);
                rd = cmd1.ExecuteReader();
                DataGrid1.DataSource = rd;
                DataGrid1.DataBind();
                con.Close();
            }
		}


        
}
}