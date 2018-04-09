<%@ Page language="c#" Inherits="WebApplication4.forms.WebForm15" CodeFile="courtdisposal.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm15</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#cccccc" background="../8.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 100; LEFT: 64px; POSITION: absolute; TOP: 80px" runat="server">FIR No:</asp:label><asp:dropdownlist id="ddlday" style="Z-INDEX: 101; LEFT: 192px; POSITION: absolute; TOP: 120px" runat="server"
				Width="40px" tabIndex="3" ForeColor="Maroon"></asp:dropdownlist><asp:dropdownlist id="ddlyear" style="Z-INDEX: 102; LEFT: 232px; POSITION: absolute; TOP: 120px" runat="server"
				Width="56px" tabIndex="4" ForeColor="Maroon"></asp:dropdownlist><asp:dropdownlist id="ddlmonth" style="Z-INDEX: 103; LEFT: 152px; POSITION: absolute; TOP: 120px"
				runat="server" Width="40px" tabIndex="2" ForeColor="Maroon"></asp:dropdownlist><asp:textbox id="txtjmt" style="Z-INDEX: 104; LEFT: 280px; POSITION: absolute; TOP: 400px" runat="server"
				Width="336px" TextMode="MultiLine" Height="52px" tabIndex="16" ForeColor="Maroon"></asp:textbox><asp:label id="Label18" style="Z-INDEX: 105; LEFT: 80px; POSITION: absolute; TOP: 408px" runat="server"
				Width="192px" ForeColor="Maroon">Judgement Given by The Court</asp:label><asp:label id="Label17" style="Z-INDEX: 106; LEFT: 56px; POSITION: absolute; TOP: 368px" runat="server"
				Width="120px" ForeColor="Black" Font-Bold="True">Result of Appeal</asp:label><asp:label id="Label16" style="Z-INDEX: 107; LEFT: 232px; POSITION: absolute; TOP: 16px" runat="server"
				Width="218px" ForeColor="Maroon" Font-Bold="True" Font-Size="X-Large" Font-Italic="True">Court Disposal</asp:label><asp:button id="savebutton" style="Z-INDEX: 108; LEFT: 312px; POSITION: absolute; TOP: 472px"
				runat="server" Text="save and continue" tabIndex="17" BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Outset" BorderWidth="3px" onclick="savebutton_Click"></asp:button><asp:label id="Label9" style="Z-INDEX: 109; LEFT: 56px; POSITION: absolute; TOP: 160px" runat="server"
				Width="120px" ForeColor="Black" Font-Bold="True">Witnees Details :</asp:label><asp:textbox id="txtmno" style="Z-INDEX: 110; LEFT: 624px; POSITION: absolute; TOP: 320px" runat="server"
				Width="104px" tabIndex="15" ForeColor="Maroon"></asp:textbox><asp:label id="Label15" style="Z-INDEX: 111; LEFT: 544px; POSITION: absolute; TOP: 320px" runat="server"
				Width="32px" ForeColor="Maroon">Mobile</asp:label><asp:textbox id="txtphno" style="Z-INDEX: 112; LEFT: 384px; POSITION: absolute; TOP: 320px" runat="server"
				Width="144px" tabIndex="14" ForeColor="Maroon"></asp:textbox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphno"
                ErrorMessage="Enter correct phone number" Style="left: 371px; position: relative;
                top: 341px; z-index: 113;" ValidationExpression="([0-9]{8,15})"></asp:RegularExpressionValidator><asp:RegularExpressionValidator
                    ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmno" ErrorMessage="Enter correct mobile number"
                    Style="left: 448px; position: relative; top: 335px; z-index: 114;" ValidationExpression="([0-9]{10})"></asp:RegularExpressionValidator><asp:label id="Label14" style="Z-INDEX: 115; LEFT: 296px; POSITION: absolute; TOP: 320px" runat="server"
				Width="73px" ForeColor="Maroon">Phone No:</asp:label><asp:textbox id="txtstate" style="Z-INDEX: 116; LEFT: 128px; POSITION: absolute; TOP: 320px"
				runat="server" Width="136px" tabIndex="13" ForeColor="Maroon"></asp:textbox><asp:label id="Label13" style="Z-INDEX: 117; LEFT: 72px; POSITION: absolute; TOP: 320px" runat="server"
				Width="32px" ForeColor="Maroon">State</asp:label><asp:textbox id="txtcity" style="Z-INDEX: 118; LEFT: 624px; POSITION: absolute; TOP: 288px" runat="server"
				Width="104px" tabIndex="12" ForeColor="Maroon"></asp:textbox><asp:label id="Label12" style="Z-INDEX: 119; LEFT: 544px; POSITION: absolute; TOP: 288px" runat="server"
				Width="32px" ForeColor="Maroon">City/District</asp:label><asp:textbox id="txtstr" style="Z-INDEX: 120; LEFT: 384px; POSITION: absolute; TOP: 288px" runat="server"
				Width="144px" tabIndex="11" ForeColor="Maroon"></asp:textbox><asp:label id="Label11" style="Z-INDEX: 121; LEFT: 296px; POSITION: absolute; TOP: 288px" runat="server"
				Width="32px" ForeColor="Maroon">Street/Village</asp:label><asp:textbox id="txthno" style="Z-INDEX: 122; LEFT: 128px; POSITION: absolute; TOP: 288px" runat="server"
				Width="136px" tabIndex="10" ForeColor="Maroon"></asp:textbox><asp:label id="Label10" style="Z-INDEX: 123; LEFT: 72px; POSITION: absolute; TOP: 288px" runat="server"
				Width="32px" ForeColor="Maroon">H.No</asp:label><asp:label id="Label8" style="Z-INDEX: 124; LEFT: 72px; POSITION: absolute; TOP: 192px" runat="server"
				Width="153px" ForeColor="Maroon">Witnees Name</asp:label><asp:textbox id="txtwname" style="Z-INDEX: 125; LEFT: 240px; POSITION: absolute; TOP: 192px"
				runat="server" tabIndex="6" ForeColor="Maroon"></asp:textbox><asp:label id="Label5" style="Z-INDEX: 126; LEFT: 72px; POSITION: absolute; TOP: 224px" runat="server"
				Width="153px" ForeColor="Maroon">Father/Husband's Name</asp:label><asp:textbox id="txtfhname" style="Z-INDEX: 127; LEFT: 240px; POSITION: absolute; TOP: 224px"
				runat="server" tabIndex="7" ForeColor="Maroon"></asp:textbox><asp:label id="Label6" style="Z-INDEX: 128; LEFT: 72px; POSITION: absolute; TOP: 256px" runat="server"
				Width="32px" ForeColor="Maroon">Age</asp:label><asp:dropdownlist id="ddlage" style="Z-INDEX: 129; LEFT: 128px; POSITION: absolute; TOP: 256px" runat="server"
				Width="40px" Height="24px" tabIndex="8" ForeColor="Maroon"></asp:dropdownlist><asp:label id="Label7" style="Z-INDEX: 130; LEFT: 296px; POSITION: absolute; TOP: 256px" runat="server"
				Width="32px" ForeColor="Maroon">Gender</asp:label><asp:dropdownlist id="ddlgender" style="Z-INDEX: 131; LEFT: 384px; POSITION: absolute; TOP: 256px"
				runat="server" Width="88px" Height="24px" tabIndex="9" ForeColor="Maroon">
				<asp:ListItem Value="MALE">MALE</asp:ListItem>
				<asp:ListItem Value="FEMALE">FEMALE</asp:ListItem>
			</asp:dropdownlist><asp:textbox id="txtpname" style="Z-INDEX: 132; LEFT: 472px; POSITION: absolute; TOP: 120px"
				runat="server" tabIndex="5" ForeColor="Maroon"></asp:textbox><asp:label id="Label4" style="Z-INDEX: 133; LEFT: 336px; POSITION: absolute; TOP: 128px" runat="server"
				ForeColor="Maroon">Prosecuter Name</asp:label><asp:textbox id="txtcname" style="Z-INDEX: 134; LEFT: 472px; POSITION: absolute; TOP: 80px" runat="server"
				tabIndex="1" ForeColor="Maroon"></asp:textbox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter court name"
                Style="left: 293px; position: relative; top: 66px; z-index: 135;" ControlToValidate="txtcname"></asp:RequiredFieldValidator>
            <asp:label id="Label3" style="Z-INDEX: 136; LEFT: 336px; POSITION: absolute; TOP: 80px" runat="server"
				ForeColor="Maroon">Court Name</asp:label><asp:label id="Label2" style="Z-INDEX: 137; LEFT: 64px; POSITION: absolute; TOP: 120px" runat="server"
				ForeColor="Maroon">Date</asp:label><asp:textbox id="txtfirno" style="Z-INDEX: 138; LEFT: 152px; POSITION: absolute; TOP: 80px" runat="server"
				ReadOnly="True" Width="72px" BackColor="#FFE0C0" BorderStyle="Inset"></asp:textbox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtwname"
                ErrorMessage="Witness  name compulsory" Style="z-index: 139; left: 413px; position: absolute;
                top: 196px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtjmt"
                ErrorMessage="Result of Appeal compulsory" Style="z-index: 140; left: 632px;
                position: absolute; top: 415px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpname"
                ErrorMessage="Enter Prosecuter name" Style="z-index: 142; left: 649px; position: absolute;
                top: 120px"></asp:RequiredFieldValidator>
        </form>
	</body>
</HTML>
