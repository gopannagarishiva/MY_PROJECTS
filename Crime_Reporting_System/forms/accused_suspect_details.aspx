<%@ Page language="c#" Inherits="WebApplication4.WebForm11" CodeFile="accused_suspect_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm11</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="gainsboro" background="../Images/7.JPG">
		<form id="Form2" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 100; LEFT: 192px; POSITION: absolute; TOP: 24px" runat="server"
				BackColor="Transparent" BorderWidth="4px" BorderStyle="None" Height="48px" Width="328px"
				Font-Italic="True" ForeColor="Maroon" Font-Size="X-Large">Accused/Suspects details</asp:label>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 101; LEFT: 560px; POSITION: absolute; TOP: 176px"
				runat="server" ErrorMessage="Choose One" ControlToValidate="rbknown"></asp:RequiredFieldValidator><asp:label id="Label23" style="Z-INDEX: 102; LEFT: 56px; POSITION: absolute; TOP: 184px" runat="server"
				Height="8px" Width="240px" ForeColor="Black" Font-Bold="True">Accused Persons Physical Features:</asp:label><asp:textbox id="txtfirno" style="Z-INDEX: 103; LEFT: 144px; POSITION: absolute; TOP: 112px"
				runat="server" Height="26px" Width="96px" ReadOnly="True" BorderStyle="Inset" BackColor="#FFE0C0"></asp:textbox><asp:label id="firno" style="Z-INDEX: 104; LEFT: 56px; POSITION: absolute; TOP: 112px" runat="server"
				Width="56px" Font-Size="Large" Font-Bold="True">Firno</asp:label><asp:radiobuttonlist id="rbknown" style="Z-INDEX: 105; LEFT: 392px; POSITION: absolute; TOP: 144px" runat="server"
				BorderWidth="1px" BorderStyle="Ridge" Width="160px" tabIndex="2" ForeColor="Maroon">
				<asp:ListItem Value="Known Accuced">Known Accuced</asp:ListItem>
				<asp:ListItem Value="Un Known Accused">Un Known Accused</asp:ListItem>
			</asp:radiobuttonlist>
			<TABLE id="Table1" style="Z-INDEX: 143; LEFT: 56px; WIDTH: 656px; POSITION: absolute; TOP: 208px; HEIGHT: 96px"
				cellSpacing="1" cellPadding="1" width="656" border="1">
				<TR>
					<TD style="WIDTH: 154px; HEIGHT: 23px"><asp:label id="Label4" runat="server" Width="128px" ForeColor="Maroon">Approximatly Height</asp:label></TD>
					<TD style="WIDTH: 133px; HEIGHT: 23px"><asp:textbox id="txtht" runat="server" Height="24px" tabIndex="3" ForeColor="Maroon"></asp:textbox></TD>
					<TD style="WIDTH: 179px; HEIGHT: 23px"><asp:label id="Label18" runat="server" Width="48px" ForeColor="Maroon">Colour</asp:label></TD>
					<TD style="HEIGHT: 23px"><asp:textbox id="txtclr" runat="server" Height="23px" tabIndex="4" ForeColor="Maroon"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 154px; HEIGHT: 28px"><asp:label id="Label17" runat="server" Width="128px" ForeColor="Maroon">Body Language</asp:label></TD>
					<TD style="WIDTH: 133px; HEIGHT: 28px"><asp:textbox id="txtbl" runat="server" Height="22px" tabIndex="5" ForeColor="Maroon"></asp:textbox></TD>
					<TD style="WIDTH: 179px; HEIGHT: 28px"><asp:label id="Label21" runat="server" Width="136px" ForeColor="Maroon">Way of Talking</asp:label></TD>
					<TD style="HEIGHT: 28px"><asp:textbox id="txtwtk" runat="server" Height="22px" tabIndex="6" ForeColor="Maroon"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 154px"><asp:label id="Label19" runat="server" Height="16px" Width="136px" ForeColor="Maroon">Language of Criminals</asp:label></TD>
					<TD style="WIDTH: 133px"><asp:textbox id="txtcrl" runat="server" Height="22px" tabIndex="7" ForeColor="Maroon"></asp:textbox></TD>
					<TD style="WIDTH: 179px"><asp:label id="Label22" runat="server" Height="16px" Width="152px" ForeColor="Maroon">Events Used for Crime</asp:label></TD>
					<TD><asp:textbox id="txtevents" runat="server" Height="23px" tabIndex="8" ForeColor="Maroon"></asp:textbox></TD>
				</TR>
			</TABLE>
			<asp:label id="Label20" style="Z-INDEX: 106; LEFT: 48px; POSITION: absolute; TOP: 328px" runat="server"
				Height="8px" Width="224px" ForeColor="Black" Font-Bold="True">Known Accused Persons Details :</asp:label><asp:dropdownlist id="ddlacno" style="Z-INDEX: 107; LEFT: 288px; POSITION: absolute; TOP: 152px" runat="server"
				Width="64px" tabIndex="1" ForeColor="Maroon"></asp:dropdownlist><asp:label id="Label16" style="Z-INDEX: 108; LEFT: 56px; POSITION: absolute; TOP: 152px" runat="server"
				Width="208px" ForeColor="Maroon">No. of Accused/Suspects Persons</asp:label><asp:button id="Button1" style="Z-INDEX: 109; LEFT: 352px; POSITION: absolute; TOP: 584px" runat="server"
				Width="160px" Text="Save &amp; continue" tabIndex="24" BorderStyle="Outset" BorderWidth="3px" BackColor="#E0E0E0" BorderColor="Maroon" onclick="Button1_Click"></asp:button>
            <asp:Label ID="Label24" runat="server" Font-Bold="True" Style="z-index: 144; left: 189px;
                position: absolute; top: 83px" Text="Your details are successfully posted to Investigation Team"
                Visible="False"></asp:Label>
            <asp:textbox id="txtmno" style="Z-INDEX: 111; LEFT: 616px; POSITION: absolute; TOP: 528px" runat="server"
				Width="104px" tabIndex="23" ></asp:textbox><asp:label id="Label15" style="Z-INDEX: 112; LEFT: 536px; POSITION: absolute; TOP: 528px" runat="server"
				Width="32px" ForeColor="Maroon">Mobile</asp:label><asp:textbox id="txtphno" style="Z-INDEX: 113; LEFT: 376px; POSITION: absolute; TOP: 528px" runat="server"
				Width="144px" tabIndex="22" ForeColor="Maroon" ></asp:textbox><asp:label id="Label14" style="Z-INDEX: 114; LEFT: 288px; POSITION: absolute; TOP: 528px" runat="server"
				Width="73px" ForeColor="Maroon">Phone No:</asp:label><asp:textbox id="txtstate" style="Z-INDEX: 115; LEFT: 120px; POSITION: absolute; TOP: 528px"
				runat="server" Width="136px" tabIndex="21" ForeColor="Maroon"></asp:textbox><asp:label id="Label13" style="Z-INDEX: 116; LEFT: 64px; POSITION: absolute; TOP: 528px" runat="server"
				Width="32px" ForeColor="Maroon">State</asp:label><asp:textbox id="txtcity" style="Z-INDEX: 117; LEFT: 616px; POSITION: absolute; TOP: 496px" runat="server"
				Width="104px" tabIndex="20"></asp:textbox><asp:label id="Label12" style="Z-INDEX: 118; LEFT: 536px; POSITION: absolute; TOP: 496px" runat="server"
				Width="32px" ForeColor="Maroon">City/District</asp:label><asp:textbox id="txtstreet" style="Z-INDEX: 119; LEFT: 376px; POSITION: absolute; TOP: 496px"
				runat="server" Width="144px" tabIndex="19" ForeColor="Maroon"></asp:textbox><asp:label id="Label11" style="Z-INDEX: 120; LEFT: 288px; POSITION: absolute; TOP: 496px" runat="server"
				Width="32px" ForeColor="Maroon">Street/Village</asp:label><asp:textbox id="txthno" style="Z-INDEX: 121; LEFT: 120px; POSITION: absolute; TOP: 496px" runat="server"
				Width="136px" tabIndex="18" ForeColor="Maroon"></asp:textbox><asp:label id="Label10" style="Z-INDEX: 122; LEFT: 64px; POSITION: absolute; TOP: 496px" runat="server"
				Width="32px" ForeColor="Maroon">H.No</asp:label><asp:textbox id="txtpno" style="Z-INDEX: 123; LEFT: 376px; POSITION: absolute; TOP: 464px" runat="server"
				Width="144px" tabIndex="17" ForeColor="Maroon"></asp:textbox><asp:label id="Label9" style="Z-INDEX: 124; LEFT: 288px; POSITION: absolute; TOP: 464px" runat="server"
				Width="80px" ForeColor="Maroon">Passport No:</asp:label><asp:textbox id="txtnat" style="Z-INDEX: 125; LEFT: 120px; POSITION: absolute; TOP: 464px" runat="server"
				Width="136px" tabIndex="16" ForeColor="Maroon"></asp:textbox><asp:label id="Label8" style="Z-INDEX: 126; LEFT: 64px; POSITION: absolute; TOP: 464px" runat="server"
				Width="32px" ForeColor="Maroon">Natinality</asp:label><asp:dropdownlist id="ddlgender" style="Z-INDEX: 127; LEFT: 432px; POSITION: absolute; TOP: 432px"
				runat="server" Height="24px" Width="88px" tabIndex="15" ForeColor="Maroon"></asp:dropdownlist><asp:label id="Label7" style="Z-INDEX: 128; LEFT: 376px; POSITION: absolute; TOP: 432px" runat="server"
				Width="32px" ForeColor="Maroon">Gender</asp:label><asp:dropdownlist id="ddlage" style="Z-INDEX: 129; LEFT: 312px; POSITION: absolute; TOP: 432px" runat="server"
				Height="24px" Width="40px" tabIndex="14" ForeColor="Maroon"></asp:dropdownlist><asp:label id="Label6" style="Z-INDEX: 130; LEFT: 280px; POSITION: absolute; TOP: 432px" runat="server"
				Width="32px" ForeColor="Maroon">Age</asp:label><asp:label id="Label5" style="Z-INDEX: 131; LEFT: 64px; POSITION: absolute; TOP: 432px" runat="server"
				Width="32px" ForeColor="Maroon">DOB</asp:label><asp:dropdownlist id="ddldobyear" style="Z-INDEX: 132; LEFT: 200px; POSITION: absolute; TOP: 432px"
				runat="server" Height="24px" Width="56px" tabIndex="13" ForeColor="Maroon"></asp:dropdownlist><asp:dropdownlist id="ddldobday" style="Z-INDEX: 133; LEFT: 160px; POSITION: absolute; TOP: 432px"
				runat="server" Height="24px" Width="40px" tabIndex="12" ForeColor="Maroon"></asp:dropdownlist><asp:dropdownlist id="ddldobmon" style="Z-INDEX: 134; LEFT: 120px; POSITION: absolute; TOP: 432px"
				runat="server" Height="24px" Width="40px" tabIndex="11" ForeColor="Maroon"></asp:dropdownlist><asp:textbox id="txtfhname" style="Z-INDEX: 135; LEFT: 232px; POSITION: absolute; TOP: 392px"
				runat="server" tabIndex="10" ForeColor="Maroon"></asp:textbox><asp:label id="Label3" style="Z-INDEX: 136; LEFT: 64px; POSITION: absolute; TOP: 392px" runat="server"
				Width="153px" ForeColor="Maroon">Father/Husband's Name</asp:label>
			<asp:Label id="Label2" style="Z-INDEX: 137; LEFT: 64px; POSITION: absolute; TOP: 360px" runat="server"
				Width="153px" ForeColor="Maroon">Accused Person Name</asp:Label>
			<asp:TextBox id="txtaccname" style="Z-INDEX: 138; LEFT: 232px; POSITION: absolute; TOP: 360px"
				runat="server" tabIndex="9" ForeColor="Maroon"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmno"
                ErrorMessage="Enter correct mobile number" Style="left: 729px; position: relative;
                top: 515px; z-index: 139;" ValidationExpression="([0-9]{10})"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphno"
                ErrorMessage="Enter correct phone number" Style="left: 167px; position: relative;
                top: 541px; z-index: 140;" ValidationExpression="([0-9]{8,15})"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtaccname"
                ErrorMessage="Accused person name compulsory" Style="z-index: 141; left: 413px;
                position: absolute; top: 366px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpno"
                ErrorMessage="Enter correct Passport number" Style="z-index: 142; left: 533px;
                position: absolute; top: 466px" ValidationExpression="([0-9]{3,10})"></asp:RegularExpressionValidator>
        </form>
	</body>
</HTML>
