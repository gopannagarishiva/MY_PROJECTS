<%@ Page language="c#" Inherits="WebApplication4.WebForm5" CodeFile="fir_info.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm5</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="../Images/8.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 208px; POSITION: absolute; TOP: 16px" runat="server"
				Width="328px" Height="14px" Font-Size="X-Large" Font-Underline="True" Font-Bold="True"
				ForeColor="Maroon">General Details of Case</asp:Label>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Height="18px"
                Style="left: 36px; position: relative; top: 39px" Text="This case is Under Investigation"
                Visible="False" Width="485px"></asp:Label>
			<TABLE id="Table3" style="Z-INDEX: 169; LEFT: 96px; WIDTH: 568px; POSITION: absolute; TOP: 784px; HEIGHT: 152px"
				cellSpacing="1" cellPadding="1" width="568" border="1">
				<TR>
					<TD>
						<asp:Label id="Label63" runat="server" ForeColor="#804000">Name</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtcstate" runat="server" Width="105" ReadOnly="True" Height="24px"></asp:TextBox></TD>
					<TD>
						<asp:Label id="Label64" runat="server" ForeColor="#804000">Father's Name</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtcphone" runat="server" Width="109" ReadOnly="True"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label69" runat="server" ForeColor="#804000">Gender</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtafname" runat="server" Height="24px" Width="105px" ReadOnly="True"></asp:TextBox></TD>
					<TD>
						<asp:Label id="Label70" runat="server" ForeColor="#804000">Age</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtaname" runat="server" Width="109" ReadOnly="True"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label72" runat="server" ForeColor="#804000">H.No</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtanat" runat="server" Height="24px" Width="105px" ReadOnly="True"></asp:TextBox></TD>
					<TD>
						<asp:Label id="Label73" runat="server" ForeColor="#804000">Village</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtppno" runat="server" Width="109px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label30" runat="server" ForeColor="#804000">City/District</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtahno" runat="server" Height="24px" Width="105px" ReadOnly="True"></asp:TextBox></TD>
					<TD>
						<asp:Label id="Label77" runat="server" ForeColor="#804000">Passport</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtagender" runat="server" Width="109" ReadOnly="True"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label71" runat="server" ForeColor="#804000">nationality</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtaage" runat="server" Width="108px" ReadOnly="True"></asp:TextBox></TD>
					<TD>
						<asp:Label id="Label74" runat="server" ForeColor="#804000">Phone</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtastr" runat="server" Width="108px" ReadOnly="True"></asp:TextBox></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 163; LEFT: 96px; WIDTH: 504px; POSITION: absolute; TOP: 424px; HEIGHT: 90px"
				cellSpacing="1" cellPadding="1" width="504" border="1">
				<TR>
					<TD style="WIDTH: 69px">
						<asp:Label id="Label76" runat="server" Width="48px" ForeColor="Maroon">H.No</asp:Label></TD>
					<TD style="WIDTH: 141px">
						<asp:TextBox id="txtohno" runat="server" Width="152px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
					<TD>
						<asp:Label id="Label37" runat="server" Width="57px" ForeColor="Maroon">Distance</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtodiste" runat="server" Width="179px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 69px; HEIGHT: 28px">
						<asp:Label id="Label40" runat="server" Width="48px" ForeColor="Maroon">Street</asp:Label></TD>
					<TD style="WIDTH: 141px; HEIGHT: 28px">
						<asp:TextBox id="txtostr" runat="server" Width="152px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
					<TD style="HEIGHT: 28px">
						<asp:Label id="Label15" runat="server" Width="57" ForeColor="Maroon">City</asp:Label></TD>
					<TD style="HEIGHT: 28px">
						<asp:TextBox id="txtovil" runat="server" Width="180px" ForeColor="Maroon"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 69px">
						<asp:Label id="Label44" runat="server" Width="48px" ForeColor="Maroon">State</asp:Label></TD>
					<TD style="WIDTH: 141px">
						<asp:TextBox id="txtodist" runat="server" Width="152px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
					<TD></TD>
					<TD></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 162; LEFT: 96px; WIDTH: 504px; POSITION: absolute; TOP: 560px; HEIGHT: 163px"
				cellSpacing="1" cellPadding="1" width="504" border="1">
				<TR>
					<TD style="WIDTH: 87px">
						<asp:Label id="Label36" runat="server" Width="81" ForeColor="Maroon">Name</asp:Label></TD>
					<TD style="WIDTH: 191px">
						<asp:TextBox id="txtostate" runat="server" Width="179px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label48" runat="server" Height="10px" Width="81px" ForeColor="Maroon">Father's</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtcname" runat="server" Width="184px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 87px">
						<asp:Label id="Label49" runat="server" Width="81" ForeColor="Maroon">DOB</asp:Label></TD>
					<TD style="WIDTH: 191px">
						<asp:TextBox id="txtcfname" runat="server" Width="180px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label50" runat="server" Width="81px" ForeColor="Maroon">Age</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtcdob" runat="server" Width="184px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 87px">
						<asp:Label id="Label52" runat="server" Width="81" ForeColor="Maroon">Passport No:</asp:Label></TD>
					<TD style="WIDTH: 191px">
						<asp:TextBox id="txtcnan" runat="server" Width="180px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label51" runat="server" Width="81px" ForeColor="Maroon">Nationality</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtcage" runat="server" Width="184px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 87px">
						<asp:Label id="Label56" runat="server" Width="81" ForeColor="Maroon">H.No:</asp:Label></TD>
					<TD style="WIDTH: 191px">
						<asp:TextBox id="txtcpno" runat="server" Width="176px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label57" runat="server" Width="81px" ForeColor="Maroon">Village</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtchno" runat="server" Width="184px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 87px">
						<asp:Label id="Label59" runat="server" Width="81" ForeColor="Maroon">City/Dist</asp:Label></TD>
					<TD style="WIDTH: 191px">
						<asp:TextBox id="txtcstr" runat="server" Width="180px" ForeColor="Maroon"></asp:TextBox></TD>
					<TD style="WIDTH: 102px">
						<asp:Label id="Label60" runat="server" Width="81px" ForeColor="Maroon">State</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtcvil" runat="server" Width="184px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 87px">
						<asp:Label id="Label58" runat="server" Width="81" ForeColor="#804000">Phone</asp:Label></TD>
					<TD style="WIDTH: 191px">
						<asp:TextBox id="txtccity" runat="server" Width="176px" ReadOnly="True"></asp:TextBox></TD>
					<TD style="WIDTH: 102px"></TD>
					<TD></TD>
				</TR>
			</TABLE>
			<asp:Button id="Button3" style="Z-INDEX: 160; LEFT: 512px; POSITION: absolute; TOP: 976px" runat="server"
				Width="160px" Text="Logoff" BackColor="#E0E0E0" BorderColor="#804000" BorderWidth="3px"
				BorderStyle="Outset" onclick="Button3_Click"></asp:Button>
			<asp:TextBox id="txtdate" style="Z-INDEX: 159; LEFT: 392px; POSITION: absolute; TOP: 98px" runat="server"
				Width="152px" ReadOnly="True" Height="24" ForeColor="Maroon"></asp:TextBox>
			<asp:TextBox id="txtrdate_time" style="Z-INDEX: 158; LEFT: 240px; POSITION: absolute; TOP: 304px"
				runat="server" Height="24px" Width="152px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label79" style="Z-INDEX: 157; LEFT: 112px; POSITION: absolute; TOP: 304px" runat="server"
				ForeColor="Maroon">DATE & TIME</asp:Label>
			<asp:Button id="Button2" style="Z-INDEX: 154; LEFT: 296px; POSITION: absolute; TOP: 976px" runat="server"
				Width="160px" Text="Full Details of Case" BackColor="#E0E0E0" BorderColor="#804000" BorderWidth="3px"
				BorderStyle="Outset" onclick="Button2_Click"></asp:Button>
			<asp:Button id="Button1" style="Z-INDEX: 153; LEFT: 72px; POSITION: absolute; TOP: 976px" runat="server"
				Text="Another FIR Details" BackColor="#E0E0E0" BorderColor="#804000" BorderWidth="3px" BorderStyle="Outset" onclick="Button1_Click"></asp:Button>
			<asp:Label id="Label33" style="Z-INDEX: 140; LEFT: 32px; POSITION: absolute; TOP: 752px" runat="server"
				ForeColor="#404040" Font-Bold="True">Accused Person Details :</asp:Label>
			<asp:Label id="Label46" style="Z-INDEX: 137; LEFT: 32px; POSITION: absolute; TOP: 528px" runat="server"
				ForeColor="#404040" Font-Bold="True">Complainant/Information :</asp:Label>
			<asp:Label id="Label34" style="Z-INDEX: 135; LEFT: 32px; POSITION: absolute; TOP: 392px" runat="server"
				Font-Bold="True" ForeColor="#404040">Place of Occurence :</asp:Label>
			<asp:TextBox id="txttype" style="Z-INDEX: 134; LEFT: 240px; POSITION: absolute; TOP: 352px" runat="server"
				ReadOnly="True"></asp:TextBox>
			<asp:Label id="Label31" style="Z-INDEX: 132; LEFT: 32px; POSITION: absolute; TOP: 352px" runat="server"
				Font-Bold="True" ForeColor="#404040">Type of information :</asp:Label>
			<asp:Label id="Label28" style="Z-INDEX: 131; LEFT: 32px; POSITION: absolute; TOP: 272px" runat="server"
				Font-Bold="True" ForeColor="#404040">Information Recived at the  Police Station :</asp:Label>
			<asp:Label id="Label23" style="Z-INDEX: 118; LEFT: 384px; POSITION: absolute; TOP: 232px" runat="server"
				Width="31px" ForeColor="Maroon">To</asp:Label>
			<asp:Label id="Label22" style="Z-INDEX: 117; LEFT: 200px; POSITION: absolute; TOP: 232px" runat="server"
				Width="36px" ForeColor="Maroon">From</asp:Label>
			<asp:Label id="Label18" style="Z-INDEX: 116; LEFT: 72px; POSITION: absolute; TOP: 232px" runat="server"
				ForeColor="Maroon">DATE & TIME</asp:Label>
			<asp:TextBox id="txtoccfdate" style="Z-INDEX: 128; LEFT: 240px; POSITION: absolute; TOP: 232px"
				runat="server" Width="136px" ReadOnly="True" Height="20px" ForeColor="Maroon"></asp:TextBox>
			<asp:TextBox id="txtocctdate" style="Z-INDEX: 129; LEFT: 424px; POSITION: absolute; TOP: 232px"
				runat="server" Width="136px" ReadOnly="True" Height="20px" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label11" style="Z-INDEX: 115; LEFT: 32px; POSITION: absolute; TOP: 192px" runat="server"
				Font-Bold="True" ForeColor="#404040">Occurence of offence :</asp:Label>
			<asp:TextBox id="txtsec" style="Z-INDEX: 112; LEFT: 392px; POSITION: absolute; TOP: 160px" runat="server"
				Width="152px" ReadOnly="True" Height="24" ForeColor="Maroon"></asp:TextBox>
			<asp:TextBox id="txtact" style="Z-INDEX: 111; LEFT: 136px; POSITION: absolute; TOP: 160px" runat="server"
				Width="128px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label8" style="Z-INDEX: 110; LEFT: 296px; POSITION: absolute; TOP: 160px" runat="server"
				Width="80px" ForeColor="Maroon">Section</asp:Label>
			<asp:Label id="Label7" style="Z-INDEX: 109; LEFT: 64px; POSITION: absolute; TOP: 160px" runat="server"
				Width="54px" Height="16px" ForeColor="Maroon">Act</asp:Label>
			<asp:TextBox id="txtdist" style="Z-INDEX: 108; LEFT: 136px; POSITION: absolute; TOP: 128px" runat="server"
				ReadOnly="True" Width="128px" ForeColor="Maroon"></asp:TextBox>
			<asp:TextBox id="txtps" style="Z-INDEX: 107; LEFT: 392px; POSITION: absolute; TOP: 128px" runat="server"
				ReadOnly="True" Height="24" ForeColor="Maroon" Width="152px"></asp:TextBox>
			<asp:Label id="Label6" style="Z-INDEX: 106; LEFT: 296px; POSITION: absolute; TOP: 128px" runat="server"
				ForeColor="Maroon"> Police Station</asp:Label>
			<asp:Label id="Label5" style="Z-INDEX: 105; LEFT: 64px; POSITION: absolute; TOP: 128px" runat="server"
				Height="16px" Width="56px" ForeColor="Maroon"> Dist</asp:Label>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 104; LEFT: 136px; POSITION: absolute; TOP: 98px" runat="server"
				Width="72px" ReadOnly="True" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label3" style="Z-INDEX: 103; LEFT: 296px; POSITION: absolute; TOP: 98px" runat="server"
				Font-Bold="True" ForeColor="Maroon">Date&Time</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 102; LEFT: 64px; POSITION: absolute; TOP: 98px" runat="server"
				Font-Bold="True" ForeColor="Maroon">FIRNO</asp:Label>
		</form>
	</body>
</HTML>
