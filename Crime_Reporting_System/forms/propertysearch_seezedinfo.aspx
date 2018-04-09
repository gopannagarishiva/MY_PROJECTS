<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm12" CodeFile="propertysearch_seezedinfo.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm12</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="lightgrey" background="file:///C:\Inetpub\wwwroot\WebApplication4\8.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:DropDownList id="ddlam_pm" style="Z-INDEX: 146; LEFT: 536px; POSITION: absolute; TOP: 136px"
				runat="server" Width="64px" tabIndex="7">
				<asp:ListItem Value="AM">AM</asp:ListItem>
				<asp:ListItem Value="PM">PM</asp:ListItem>
			</asp:DropDownList>
			<TABLE id="Table1" style="Z-INDEX: 156; LEFT: 72px; WIDTH: 552px; POSITION: absolute; TOP: 448px; HEIGHT: 90px"
				cellSpacing="1" cellPadding="1" width="552" border="1">
				<TR>
					<TD>
						<asp:Label id="Label19" runat="server" Width="105px" Height="14px" ForeColor="Maroon">Name</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtwname" runat="server" Width="136px" Height="22px" tabIndex="15" ForeColor="Maroon"></asp:TextBox></TD>
					<TD>
						<asp:Label id="Label25" runat="server" Width="105px" Height="22px" ForeColor="Maroon">Street/Village</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtwstr" runat="server" Width="136px" Height="22px" tabIndex="17"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label20" runat="server" Width="105px" Height="14px" ForeColor="Maroon">Hno/Place</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtwhno" runat="server" Width="135px" Height="22px" tabIndex="16" ForeColor="Maroon"></asp:TextBox></TD>
					<TD>
						<asp:Label id="Label24" runat="server" Width="105px" Height="14px" ForeColor="Maroon">City/Dist</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtwcity" runat="server" Width="134px" Height="22px" tabIndex="18" ForeColor="Maroon"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label23" runat="server" Width="105px" Height="14px" ForeColor="Maroon">State</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtwstate" runat="server" Width="135px" Height="22px" tabIndex="19" ForeColor="Maroon"></asp:TextBox></TD>
					<TD>
						<asp:Label id="Label18" runat="server" Height="14px" Width="105px" ForeColor="Maroon">Phone</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtwphone" runat="server" Height="22px" Width="134px" tabIndex="20" ForeColor="Maroon"></asp:TextBox></TD>
				</TR>
			</TABLE>
			<asp:RequiredFieldValidator id="RequiredFieldValidator7" style="Z-INDEX: 154; LEFT: 404px; POSITION: absolute; TOP: 193px"
				runat="server" ErrorMessage="Specify Nature of property Seized" ControlToValidate="txtnat"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator6" style="Z-INDEX: 153; LEFT: 261px; POSITION: absolute; TOP: 270px"
				runat="server" ErrorMessage="Enter address" ControlToValidate="txthno"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator5" style="Z-INDEX: 152; LEFT: 264px; POSITION: absolute; TOP: 384px"
				runat="server" ErrorMessage="Name is must" ControlToValidate="txtname"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator4" style="Z-INDEX: 151; LEFT: 590px; POSITION: absolute; TOP: 267px"
				runat="server" ErrorMessage="Enter village" ControlToValidate="txtstr"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator3" style="Z-INDEX: 150; LEFT: 591px; POSITION: absolute; TOP: 297px"
				runat="server" ErrorMessage="Enter State" ControlToValidate="txtstate"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 149; LEFT: 260px; POSITION: absolute; TOP: 299px"
				runat="server" ErrorMessage="Enter City/dist" ControlToValidate="txtcity"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 148; LEFT: 577px; POSITION: absolute; TOP: 92px"
				runat="server" ErrorMessage="Enter police station compulsory" ControlToValidate="txtpsname"></asp:RequiredFieldValidator>
			<asp:Label id="Label22" style="Z-INDEX: 133; LEFT: 72px; POSITION: absolute; TOP: 600px" runat="server"
				Width="120px" Height="22px" ForeColor="Maroon">Details of property</asp:Label>
			<asp:Label id="Label21" style="Z-INDEX: 132; LEFT: 40px; POSITION: absolute; TOP: 552px" runat="server"
				Width="136px" Height="22px" Font-Size="Medium" ForeColor="Black">Property Details</asp:Label>
			<asp:TextBox id="txtname" style="Z-INDEX: 129; LEFT: 120px; POSITION: absolute; TOP: 376px" runat="server"
				Width="144px" Height="24px" tabIndex="13" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label17" style="Z-INDEX: 127; LEFT: 40px; POSITION: absolute; TOP: 416px" runat="server"
				Width="128px" Height="22px" Font-Size="Medium" ForeColor="Black">Wittness Details:</asp:Label>
			<asp:Label id="Label16" style="Z-INDEX: 126; LEFT: 48px; POSITION: absolute; TOP: 376px" runat="server"
				Width="48px" Height="24px" ForeColor="Maroon">Name</asp:Label>
			<asp:Label id="Label12" style="Z-INDEX: 125; LEFT: 360px; POSITION: absolute; TOP: 384px" runat="server"
				Width="88px" Height="32px" ForeColor="Maroon">Other Details</asp:Label>
			<asp:Label id="Label15" style="Z-INDEX: 124; LEFT: 40px; POSITION: absolute; TOP: 336px" runat="server"
				Width="112px" Height="23px" Font-Size="Medium" ForeColor="Black">Person Details</asp:Label>
			<asp:TextBox id="txtstate" style="Z-INDEX: 123; LEFT: 448px; POSITION: absolute; TOP: 296px"
				runat="server" Width="136px" tabIndex="12" ForeColor="Maroon"></asp:TextBox>
			<asp:TextBox id="txtcity" style="Z-INDEX: 122; LEFT: 120px; POSITION: absolute; TOP: 296px" runat="server"
				Width="136px" tabIndex="11" ForeColor="Maroon"></asp:TextBox>
			<asp:TextBox id="txtstr" style="Z-INDEX: 121; LEFT: 448px; POSITION: absolute; TOP: 264px" runat="server"
				Width="136px" tabIndex="10" ForeColor="Maroon"></asp:TextBox>
			<asp:TextBox id="txthno" style="Z-INDEX: 120; LEFT: 120px; POSITION: absolute; TOP: 264px" runat="server"
				Width="136px" tabIndex="9" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label13" style="Z-INDEX: 119; LEFT: 360px; POSITION: absolute; TOP: 296px" runat="server"
				Width="64px" Height="24px" ForeColor="Maroon">State</asp:Label>
			<asp:Label id="Label11" style="Z-INDEX: 118; LEFT: 40px; POSITION: absolute; TOP: 296px" runat="server"
				Width="64px" Height="24px" ForeColor="Maroon">City/Dist</asp:Label>
			<asp:Label id="Label10" style="Z-INDEX: 117; LEFT: 360px; POSITION: absolute; TOP: 264px" runat="server"
				Width="64px" Height="24px" ForeColor="Maroon">Street/Village</asp:Label>
			<asp:Label id="Label9" style="Z-INDEX: 116; LEFT: 40px; POSITION: absolute; TOP: 264px" runat="server"
				Width="64px" Height="24px" ForeColor="Maroon">Hno/Place</asp:Label>
			<asp:Label id="Label8" style="Z-INDEX: 115; LEFT: 488px; POSITION: absolute; TOP: 136px" runat="server"
				Width="8px" Height="24px">:</asp:Label>
			<asp:DropDownList id="ddlmin" style="Z-INDEX: 114; LEFT: 496px; POSITION: absolute; TOP: 136px" runat="server"
				Width="40px" tabIndex="6"></asp:DropDownList>
			<asp:DropDownList id="ddlhr" style="Z-INDEX: 113; LEFT: 448px; POSITION: absolute; TOP: 136px" runat="server"
				Width="40px" tabIndex="5"></asp:DropDownList>
			<asp:DropDownList id="ddlyear" style="Z-INDEX: 112; LEFT: 176px; POSITION: absolute; TOP: 136px" runat="server"
				Width="72px" tabIndex="4"></asp:DropDownList>
			<asp:DropDownList id="ddlday" style="Z-INDEX: 111; LEFT: 136px; POSITION: absolute; TOP: 136px" runat="server"
				Width="40px" tabIndex="3"></asp:DropDownList>
			<asp:DropDownList id="ddlmonth" style="Z-INDEX: 110; LEFT: 96px; POSITION: absolute; TOP: 136px" runat="server"
				Width="40px" tabIndex="2"></asp:DropDownList>
			<asp:TextBox id="txtpsname" style="Z-INDEX: 109; LEFT: 456px; POSITION: absolute; TOP: 88px"
				runat="server" Width="112px" tabIndex="1"></asp:TextBox>
			<asp:TextBox id="txtnat" style="Z-INDEX: 108; LEFT: 256px; POSITION: absolute; TOP: 192px" runat="server"
				Width="136px" tabIndex="8"></asp:TextBox>
			<asp:Label id="Label7" style="Z-INDEX: 107; LEFT: 40px; POSITION: absolute; TOP: 232px" runat="server"
				Width="192px" Height="24px" Font-Size="Medium" ForeColor="Black">Address(property Seized):</asp:Label>
			<asp:Label id="Label6" style="Z-INDEX: 106; LEFT: 40px; POSITION: absolute; TOP: 192px" runat="server"
				Width="200px" Height="24px" Font-Size="Medium">Nature of property Seized</asp:Label>
			<asp:Label id="Label5" style="Z-INDEX: 105; LEFT: 368px; POSITION: absolute; TOP: 136px" runat="server"
				Width="56px" Height="32px" ForeColor="Maroon">Time</asp:Label>
			<asp:Label id="Label4" style="Z-INDEX: 104; LEFT: 40px; POSITION: absolute; TOP: 136px" runat="server"
				Width="40px" Height="32px" ForeColor="Maroon">Date</asp:Label>
			<asp:Label id="Label3" style="Z-INDEX: 103; LEFT: 368px; POSITION: absolute; TOP: 88px" runat="server"
				Width="80px" Height="32px" Font-Size="Medium" ForeColor="Maroon">PS NAME</asp:Label>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 102; LEFT: 112px; POSITION: absolute; TOP: 88px" runat="server"
				Width="56px" ReadOnly="True" BorderStyle="Inset" BackColor="#FFE0C0"></asp:TextBox>
			<asp:Label id="Label2" style="Z-INDEX: 101; LEFT: 40px; POSITION: absolute; TOP: 88px" runat="server"
				Width="56px" Height="32px" Font-Size="Medium"> Firno</asp:Label>
			<asp:TextBox id="txtodet" style="Z-INDEX: 128; LEFT: 448px; POSITION: absolute; TOP: 376px" runat="server"
				Width="184px" Height="40px" TextMode="MultiLine" tabIndex="14" ForeColor="Maroon"></asp:TextBox>
			<asp:TextBox id="txtpdet" style="Z-INDEX: 134; LEFT: 192px; POSITION: absolute; TOP: 584px" runat="server"
				Width="474px" Height="62px" TextMode="MultiLine" tabIndex="21" ForeColor="Maroon"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 137; LEFT: 296px; POSITION: absolute; TOP: 672px" runat="server"
				Width="168px" Text="Save&amp;continue" tabIndex="22" BorderStyle="Outset" BorderColor="#404040"
				BorderWidth="3px" BackColor="#E0E0E0" onclick="Button1_Click"></asp:Button>
			<asp:Label id="Label1" style="Z-INDEX: 147; LEFT: 56px; POSITION: absolute; TOP: 8px" runat="server"
				Font-Bold="True" Font-Italic="True" Font-Size="X-Large" BorderStyle="None" ForeColor="Maroon"
				Height="40px" Width="584px">PROPERTY  SEARCH & SEIZED FORM</asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtwphone"
                ErrorMessage="Enter correct phone number" Style="left: 632px; position: relative;
                top: 502px" ValidationExpression="([0-9]{8,15})"></asp:RegularExpressionValidator>
		</form>
	</body>
</HTML>
