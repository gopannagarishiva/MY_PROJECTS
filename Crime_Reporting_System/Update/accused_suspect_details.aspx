<%@ Page language="c#" Inherits="WebApplication4.WebForm21" CodeFile="accused_suspect_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm21</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#faebd7">
		<form id="Form2" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 100; LEFT: 192px; POSITION: absolute; TOP: 24px" runat="server"
				Font-Size="X-Large" ForeColor="Maroon" Font-Italic="True" Width="328px" Height="48px" BorderStyle="None"
				BorderWidth="4px">Accused/Suspects details</asp:label>
			<asp:Image id="Image1" style="Z-INDEX: 101; LEFT: 664px; POSITION: absolute; TOP: 0px" runat="server"
				ImageUrl="~/Images/d.jpg"></asp:Image>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 102; LEFT: 552px; POSITION: absolute; TOP: 120px"
				runat="server" ErrorMessage="Should Select One" ControlToValidate="rbknown" ForeColor="RoyalBlue"></asp:RequiredFieldValidator><asp:label id="lblno" style="Z-INDEX: 103; LEFT: 344px; POSITION: absolute; TOP: 152px" runat="server"
				Width="24px" Height="16px" ForeColor="#FF8080">Label</asp:label><asp:label id="lblage" style="Z-INDEX: 104; LEFT: 408px; POSITION: absolute; TOP: 432px" runat="server"
				ForeColor="#FF8080">Label</asp:label><asp:label id="lblgender" style="Z-INDEX: 105; LEFT: 600px; POSITION: absolute; TOP: 440px"
				runat="server" ForeColor="#FF8080">Label</asp:label><asp:textbox id="txtdob" style="Z-INDEX: 106; LEFT: 104px; POSITION: absolute; TOP: 432px" runat="server"
				Width="136px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" style="Z-INDEX: 107; LEFT: 392px; POSITION: absolute; TOP: 360px"
				runat="server" ControlToValidate="txtaccname" ErrorMessage="connot be empty"></asp:requiredfieldvalidator><asp:label id="Label23" style="Z-INDEX: 108; LEFT: 8px; POSITION: absolute; TOP: 184px" runat="server"
				ForeColor="Black" Width="240px" Height="8px" Font-Bold="True">Accused Persons Physical Features:</asp:label><asp:textbox id="txtfirno" style="Z-INDEX: 109; LEFT: 129px; POSITION: absolute; TOP: 122px" runat="server"
				Width="96px" Height="26px" ReadOnly="True" BorderStyle="Inset" BackColor="#FFE0C0"></asp:textbox><asp:label id="firno" style="Z-INDEX: 110; LEFT: 57px; POSITION: absolute; TOP: 122px" runat="server"
				Font-Size="Large" Width="56px" Font-Bold="True" BackColor="#E0E0E0">Firno</asp:label><asp:radiobuttonlist id="rbknown" style="Z-INDEX: 111; LEFT: 392px; POSITION: absolute; TOP: 144px" runat="server"
				ForeColor="Maroon" Width="233px" BorderStyle="Ridge" BorderWidth="1px">
				<asp:ListItem Value="Known Accuced">Known Accuced</asp:ListItem>
				<asp:ListItem Value="Un Known Accused">Un Known Accused</asp:ListItem>
			</asp:radiobuttonlist>
			<TABLE id="Table1" style="Z-INDEX: 144; LEFT: 56px; WIDTH: 656px; POSITION: absolute; TOP: 208px; HEIGHT: 96px"
				cellSpacing="1" cellPadding="1" width="656" border="1">
				<TR>
					<TD style="WIDTH: 154px; HEIGHT: 23px"><asp:label id="Label4" runat="server" ForeColor="Maroon" Width="128px">Approximate Height</asp:label></TD>
					<TD style="WIDTH: 133px; HEIGHT: 23px"><asp:textbox id="txtht" runat="server" Height="24px"></asp:textbox></TD>
					<TD style="WIDTH: 179px; HEIGHT: 23px"><asp:label id="Label18" runat="server" ForeColor="Maroon" Width="48px">Colour</asp:label></TD>
					<TD style="HEIGHT: 23px"><asp:textbox id="txtclr" runat="server" Height="23px"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 154px; HEIGHT: 28px"><asp:label id="Label17" runat="server" ForeColor="Maroon" Width="128px">Body Language</asp:label></TD>
					<TD style="WIDTH: 133px; HEIGHT: 28px"><asp:textbox id="txtbl" runat="server" Height="22px"></asp:textbox></TD>
					<TD style="WIDTH: 179px; HEIGHT: 28px"><asp:label id="Label21" runat="server" ForeColor="Maroon" Width="136px">Way of Talking</asp:label></TD>
					<TD style="HEIGHT: 28px"><asp:textbox id="txtwtk" runat="server" Height="22px"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 154px"><asp:label id="Label19" runat="server" ForeColor="Maroon" Width="136px" Height="16px">Language of Criminals</asp:label></TD>
					<TD style="WIDTH: 133px"><asp:textbox id="txtcrl" runat="server" Height="22px"></asp:textbox></TD>
					<TD style="WIDTH: 179px"><asp:label id="Label22" runat="server" ForeColor="Maroon" Width="152px" Height="16px">Events Used for Crime</asp:label></TD>
					<TD><asp:textbox id="txtevents" runat="server" Height="23px"></asp:textbox></TD>
				</TR>
			</TABLE>
			<asp:label id="Label20" style="Z-INDEX: 112; LEFT: 8px; POSITION: absolute; TOP: 328px" runat="server"
				ForeColor="Black" Width="224px" Height="8px" Font-Bold="True">Known Accused Persons Details :</asp:label><asp:dropdownlist id="ddlacno" style="Z-INDEX: 113; LEFT: 288px; POSITION: absolute; TOP: 152px" runat="server"
				Width="48px">
				<asp:ListItem Value="1">1</asp:ListItem>
				<asp:ListItem Value="2">2</asp:ListItem>
				<asp:ListItem Value="3">3</asp:ListItem>
				<asp:ListItem Value="4">4</asp:ListItem>
				<asp:ListItem Value="5">5</asp:ListItem>
				<asp:ListItem Value="6">6</asp:ListItem>
				<asp:ListItem Value="7">7</asp:ListItem>
				<asp:ListItem Value="8">8</asp:ListItem>
				<asp:ListItem Value="9">9</asp:ListItem>
				<asp:ListItem Value="10">10</asp:ListItem>
				<asp:ListItem Value="11">11</asp:ListItem>
				<asp:ListItem Value="12">12</asp:ListItem>
				<asp:ListItem Value="13">13</asp:ListItem>
			</asp:dropdownlist><asp:label id="Label16" style="Z-INDEX: 114; LEFT: 56px; POSITION: absolute; TOP: 152px" runat="server"
				ForeColor="Maroon" Width="208px">No. of Accused/Suspects Persons</asp:label><asp:button id="Button1" style="Z-INDEX: 115; LEFT: 248px; POSITION: absolute; TOP: 584px" runat="server"
				Width="171px" BorderStyle="Outset" BackColor="#E0E0E0" BorderColor="Black" Text="Update &amp; Go Back" BorderWidth="3px" onclick="Button1_Click"></asp:button><asp:textbox id="txtmno" style="Z-INDEX: 116; LEFT: 600px; POSITION: absolute; TOP: 528px" runat="server"
				Width="104px"></asp:textbox><asp:label id="Label15" style="Z-INDEX: 117; LEFT: 520px; POSITION: absolute; TOP: 528px" runat="server"
				ForeColor="Maroon" Width="32px">Mobile</asp:label><asp:textbox id="txtphno" style="Z-INDEX: 118; LEFT: 360px; POSITION: absolute; TOP: 528px" runat="server"
				Width="144px"></asp:textbox><asp:label id="Label14" style="Z-INDEX: 119; LEFT: 272px; POSITION: absolute; TOP: 528px" runat="server"
				ForeColor="Maroon" Width="73px">Phone No:</asp:label><asp:textbox id="txtstate" style="Z-INDEX: 120; LEFT: 104px; POSITION: absolute; TOP: 528px"
				runat="server" Width="136px"></asp:textbox><asp:label id="Label13" style="Z-INDEX: 121; LEFT: 48px; POSITION: absolute; TOP: 528px" runat="server"
				ForeColor="Maroon" Width="32px">State</asp:label><asp:textbox id="txtcity" style="Z-INDEX: 122; LEFT: 600px; POSITION: absolute; TOP: 496px" runat="server"
				Width="104px"></asp:textbox><asp:label id="Label12" style="Z-INDEX: 123; LEFT: 520px; POSITION: absolute; TOP: 496px" runat="server"
				ForeColor="Maroon" Width="32px">City/District</asp:label><asp:textbox id="txtstreet" style="Z-INDEX: 124; LEFT: 360px; POSITION: absolute; TOP: 496px"
				runat="server" Width="144px"></asp:textbox><asp:label id="Label11" style="Z-INDEX: 125; LEFT: 272px; POSITION: absolute; TOP: 496px" runat="server"
				ForeColor="Maroon" Width="32px">Street/Village</asp:label><asp:textbox id="txthno" style="Z-INDEX: 126; LEFT: 104px; POSITION: absolute; TOP: 496px" runat="server"
				Width="136px"></asp:textbox><asp:label id="Label10" style="Z-INDEX: 127; LEFT: 48px; POSITION: absolute; TOP: 496px" runat="server"
				ForeColor="Maroon" Width="32px">H.No</asp:label><asp:textbox id="txtpno" style="Z-INDEX: 128; LEFT: 360px; POSITION: absolute; TOP: 464px" runat="server"
				Width="144px"></asp:textbox><asp:label id="Label9" style="Z-INDEX: 129; LEFT: 272px; POSITION: absolute; TOP: 464px" runat="server"
				ForeColor="Maroon" Width="80px">Passport No:</asp:label><asp:textbox id="txtnat" style="Z-INDEX: 130; LEFT: 104px; POSITION: absolute; TOP: 464px" runat="server"
				Width="136px"></asp:textbox><asp:label id="Label8" style="Z-INDEX: 131; LEFT: 48px; POSITION: absolute; TOP: 464px" runat="server"
				ForeColor="Maroon" Width="32px">Natinality</asp:label><asp:dropdownlist id="ddlgender" style="Z-INDEX: 132; LEFT: 600px; POSITION: absolute; TOP: 464px"
				runat="server" Width="104px" Height="24px">
				<asp:ListItem Value="male">male</asp:ListItem>
				<asp:ListItem Value="female">female</asp:ListItem>
			</asp:dropdownlist><asp:label id="Label7" style="Z-INDEX: 133; LEFT: 520px; POSITION: absolute; TOP: 464px" runat="server"
				ForeColor="Maroon" Width="32px">Gender</asp:label><asp:dropdownlist id="ddlage" style="Z-INDEX: 134; LEFT: 360px; POSITION: absolute; TOP: 432px" runat="server"
				Width="40px" Height="24px"></asp:dropdownlist><asp:label id="Label6" style="Z-INDEX: 135; LEFT: 272px; POSITION: absolute; TOP: 432px" runat="server"
				ForeColor="Maroon" Width="32px">Age</asp:label><asp:label id="Label5" style="Z-INDEX: 136; LEFT: 48px; POSITION: absolute; TOP: 432px" runat="server"
				ForeColor="Maroon" Width="32px">DOB</asp:label><asp:textbox id="txtfhname" style="Z-INDEX: 137; LEFT: 216px; POSITION: absolute; TOP: 392px"
				runat="server"></asp:textbox><asp:label id="Label3" style="Z-INDEX: 138; LEFT: 48px; POSITION: absolute; TOP: 392px" runat="server"
				ForeColor="Maroon" Width="153px">Father/Husband's Name</asp:label><asp:label id="Label2" style="Z-INDEX: 139; LEFT: 48px; POSITION: absolute; TOP: 360px" runat="server"
				ForeColor="Maroon" Width="153px">Accused Person Name</asp:label><asp:textbox id="txtaccname" style="Z-INDEX: 140; LEFT: 216px; POSITION: absolute; TOP: 360px"
				runat="server"></asp:textbox>
			<asp:Label id="lblk" style="Z-INDEX: 141; LEFT: 400px; POSITION: absolute; TOP: 120px" runat="server"
				ForeColor="#FF8080" Width="144px">Label</asp:Label>
            <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="X-Large" Height="18px"
                Style="left: 52px; position: relative; top: 61px; z-index: 142;" Text="No Accused/Suspect  information"
                Visible="False" Width="481px"></asp:Label>
            <asp:Button ID="Button2" runat="server" BackColor="#E0E0E0" BorderColor="#404040"
                BorderStyle="Outset" BorderWidth="5px" Height="32px" OnClick="Button2_Click"
                Style="z-index: 145; left: 472px; position: absolute; top: 581px" TabIndex="9"
                Text="Cancel" Width="128px" />
        </form>
	</body>
</HTML>
