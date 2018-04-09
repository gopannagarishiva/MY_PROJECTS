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
	public partial class fulldetails : System.Web.UI.Page
	{

		SqlConnection con = new SqlConnection(" Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\crpt_Data.mdf;Integrated Security=True;User Instance=True");
		string fir;
		SqlDataAdapter adp;
		DataSet ds=new DataSet();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			fir=Session["Firno"].ToString();
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

		protected void lbaccusedperson_Click(object sender, System.EventArgs e)
		{
			lbldis.Text="";
			ds.Reset();
			if(con.State==ConnectionState.Closed)
				con.Open();
            adp = new SqlDataAdapter("select FirNo,Known_Unknown,no_accused_persons as Noofaccusedpersons,Accused_name,DOB,Age,Gender from accused_details where firno='" + fir + "'", con);
			adp.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				lbldis.Text="No Records Found";
				DataGrid1.Visible=false;
			}
			else
			{
				DataGrid1.Visible=true;
				DataGrid1.DataSource=ds;
				DataGrid1.DataBind();
			}
			ds.Reset();
		}

		protected void lbact_sec_Click(object sender, System.EventArgs e)
		{
			lbldis.Text="";
			ds.Reset();
			if(con.State==ConnectionState.Closed)
				con.Open();
            adp = new SqlDataAdapter("select FirNo,fir_date as FirDate,Policestation,sec as Section,secdcpt as SectionDesc,Grave,Punishable from act_section where firno='" + fir + "'", con);
			adp.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				lbldis.Text="No Records Found";
				DataGrid1.Visible=false;
			}
			else
			{
				DataGrid1.Visible=true;
				DataGrid1.DataSource=ds;
				DataGrid1.DataBind();
			}
			ds.Reset();
		}

		protected void lbarr_suren_Click(object sender, System.EventArgs e)
		{			
			lbldis.Text="";
			ds.Reset();
			if(con.State==ConnectionState.Closed)
				con.Open();
            adp = new SqlDataAdapter("select Firno,Policestation,date_time as DateTime,Place,Arrest_district,accused_no,accused_name,accused_age,accused_id_marks from arrest_surrendered_details where firno='" + fir + "'", con);
			adp.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				lbldis.Text="No Records Found";
				DataGrid1.Visible=false;
			}
			else
			{
				DataGrid1.Visible=true;
				DataGrid1.DataSource=ds;
				DataGrid1.DataBind();
			}
			ds.Reset();
		}

		protected void lbcompdet_Click(object sender, System.EventArgs e)
		{
			lbldis.Text="";
			ds.Reset();
			if(con.State==ConnectionState.Closed)
				con.Open();
            adp = new SqlDataAdapter("select Firno,Complainantname,father_husband_name as Father,Age,Gender,Street_village,Phone from complainant_details where firno='" + fir + "'", con);
			adp.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				lbldis.Text="No Records Found";
				DataGrid1.Visible=false;
			}
			else
			{
				DataGrid1.Visible=true;
				DataGrid1.DataSource=ds;
				DataGrid1.DataBind();
			}			
			ds.Reset();
		}

		protected void lbcrtdis_Click(object sender, System.EventArgs e)
		{
			lbldis.Text="";
			ds.Reset();
			if(con.State==ConnectionState.Closed)
				con.Open();
            adp = new SqlDataAdapter("select Firno,court_name as CourtName,dateof_judgement as DOJJdgment,prosecuter_name as Prosecuter,wittness_name as WitnessName,Judgement from courtdisposal_details where firno='" + fir + "'", con);
			adp.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				lbldis.Text="No Records Found";
				DataGrid1.Visible=false;
			}
			else
			{
				DataGrid1.Visible=true;
				DataGrid1.DataSource=ds;
				DataGrid1.DataBind();
			}
			ds.Reset();
		}

		protected void lbcrimedet_Click(object sender, System.EventArgs e)
		{
			lbldis.Text="";
			ds.Reset();
			if(con.State==ConnectionState.Closed)
				con.Open();
            adp = new SqlDataAdapter("select Firno,Policestation,crimedetails,Investigator_name as InvestigationOfficer from crime_details where firno='" + fir + "'", con);
			adp.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				lbldis.Text="No Records Found";
				DataGrid1.Visible=false;
			}
			else
			{
				DataGrid1.Visible=true;
				DataGrid1.DataSource=ds;
				DataGrid1.DataBind();
			}	
			ds.Reset();
		}

		protected void lboofoffence_Click(object sender, System.EventArgs e)
		{
			lbldis.Text="";
			ds.Reset();
			if(con.State==ConnectionState.Closed)
				con.Open();
            adp = new SqlDataAdapter("select Firno,Fromdate,Todate,Reporteddatetime,Typeofinfo,Distfromstation,street_village as Address from occurancedetails where firno='" + fir + "'", con);
			adp.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				lbldis.Text="No Records Found";
				DataGrid1.Visible=false;
			}
			else
			{
				DataGrid1.Visible=true;
				DataGrid1.DataSource=ds;
				DataGrid1.DataBind();
			}	
			ds.Reset();
		}

		protected void lbproperty_Click(object sender, System.EventArgs e)
		{
			lbldis.Text="";
			ds.Reset();
			if(con.State==ConnectionState.Closed)
				con.Open();
            adp = new SqlDataAdapter("select Firno,Fromdate,Todate,Reporteddatetime,Typeofinfo,Distfromstation,street_village as Address from occurancedetails where firno='" + fir + "'", con);
			adp.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				lbldis.Text="No Records Found";
				DataGrid1.Visible=false;
			}
			else
			{
				DataGrid1.Visible=true;
				DataGrid1.DataSource=ds;
				DataGrid1.DataBind();
			}
			ds.Reset();
		}

		protected void lbpropsiezed_Click(object sender, System.EventArgs e)
		{
			lbldis.Text="";
			ds.Reset();
			if(con.State==ConnectionState.Closed)
				con.Open();
            adp = new SqlDataAdapter("select Firno,psname as PoliceStaion,date_seezed as DateSeezed,nature_of_seezed,person_name,property_seezed_details as PropertySeezedDetails from property_seezed_details where firno='" + fir + "'", con);
			adp.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				lbldis.Text="No Records Found";
				DataGrid1.Visible=false;
			}
			else
			{
				DataGrid1.Visible=true;
				DataGrid1.DataSource=ds;
				DataGrid1.DataBind();
			}
			ds.Reset();
		}

		
		
		protected void lbrofappeal_Click(object sender, System.EventArgs e)
		{
			lbldis.Text="";
			ds.Reset();
			if(con.State==ConnectionState.Closed)
				con.Open();
            adp = new SqlDataAdapter("select Firno,appealno as AppealNo,Appealname,courtname,result_of_appeal as ResultofAppeal,surity_name as SurityName,phone_no as PhoneNo,obtained_bail as BailObtained,date_bail as BailDate,prosecutername from resultof_appeal where firno='" + fir + "'", con);
			adp.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				lbldis.Text="No Records Found";
				DataGrid1.Visible=false;
			}
			else
			{
				DataGrid1.Visible=true;
				DataGrid1.DataSource=ds;
				DataGrid1.DataBind();
			}	
			ds.Reset();
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("reports.aspx");
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
            if (Session["ctrluser"].ToString().Equals("user"))
            {
                Response.Redirect("../new/user_option.aspx");
            }
            Response.Redirect("../forms/new_user_option.aspx");
		}

		protected void lbfir_Click(object sender, System.EventArgs e)
		{
			lbldis.Text="";
			ds.Reset();
			if(con.State==ConnectionState.Closed)
				con.Open();
			adp=new SqlDataAdapter("select * from fir_information where firno='" +fir+"'",con);
			adp.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				lbldis.Text="No Records Found";
				DataGrid1.Visible=false;
			}
			else
			{
				DataGrid1.Visible=true;
				DataGrid1.DataSource=ds;
				DataGrid1.DataBind();
			}
			ds.Reset();
		}
	}
}
