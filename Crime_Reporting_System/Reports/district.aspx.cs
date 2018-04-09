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

namespace WebApplication4.Reports
{
	public partial class district : System.Web.UI.Page
	{
	
		SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{	
				for(int i=1;i<=31;i++)
				{
					ddlfday.Items.Add(i.ToString());
				}
				for(int j=1;j<=12;j++)
				{
					ddlfmonth.Items.Add(j.ToString());
				}
				for(int k=1950;k<=2050;k++)
				{
					ddlfyear.Items.Add(k.ToString());
				}
				for(int l=1;l<=31;l++)
				{
					ddltday.Items.Add(l.ToString());
				}
				for(int m=1;m<=12;m++)
				{
					ddltmonth.Items.Add(m.ToString());
				}
				for(int n=1950;n<=2050;n++)
				{
					ddltyear.Items.Add(n.ToString());
				}
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

		protected void Button1_Click(object sender, System.EventArgs e)
		{
            if (ddldist.SelectedIndex == 0)
            { }
            else
            {
                string str1 = ddldist.SelectedItem.Text;
                string str2 = ddlfmonth.SelectedItem.Text + "/" + ddlfday.SelectedItem.Text + "/" + ddlfyear.SelectedItem.Text;
                string str3 = ddltmonth.SelectedItem.Text + "/" + ddltday.SelectedItem.Text + "/" + ddltyear.SelectedItem.Text;
                
                //adp.SelectCommand.Connection=;
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlDataAdapter adp = new SqlDataAdapter("districtreprt", con);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                adp.SelectCommand.Parameters.Add("@param1", SqlDbType.VarChar, 20);
                adp.SelectCommand.Parameters["@param1"].Value = str1;
                adp.SelectCommand.Parameters.Add("@param2", SqlDbType.VarChar, 20);
                adp.SelectCommand.Parameters["@param2"].Value = str2.Trim();
                adp.SelectCommand.Parameters.Add("@param3", SqlDbType.VarChar, 20);
                adp.SelectCommand.Parameters["@param3"].Value = str3.Trim();
                DataSet ds = new DataSet();
                adp.Fill(ds);

                if (ds.Tables[0].Rows.Count != 0)
                {
                    DataGrid1.DataSource = ds;
                    Label1.Visible = false;
                    DataGrid1.Visible = true;
                    DataGrid1.DataBind();
                }
                else
                {
                    Label1.Visible = true;
                    DataGrid1.Visible = false;
                }
            }
            con.Close();
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("reports.aspx");
		}
	}
}
