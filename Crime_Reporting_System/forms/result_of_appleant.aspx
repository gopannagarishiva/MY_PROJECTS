<%@ Page language="c#" Inherits="WebApplication4.Result_of_appleant" CodeFile="Result_of_appleant.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Result_of_appleant</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="../Images/8.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 264px; POSITION: absolute; TOP: 16px" runat="server"
				ForeColor="Maroon" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" BorderStyle="None"
				BorderWidth="2px">Result of Appeal</asp:Label>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 101; LEFT: 312px; POSITION: absolute; TOP: 368px"
				runat="server" ErrorMessage="* Select one Option" ControlToValidate="rbb"></asp:RequiredFieldValidator>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 102; LEFT: 160px; POSITION: absolute; TOP: 64px" runat="server"
				ReadOnly="True" BorderStyle="Inset" Width="96px" BackColor="#FFE0C0"></asp:TextBox>
			<asp:Label id="Label22" style="Z-INDEX: 103; LEFT: 56px; POSITION: absolute; TOP: 64px" runat="server"
				Font-Size="Medium">FIRno</asp:Label>
			<asp:Label id="Label4" style="Z-INDEX: 104; LEFT: 320px; POSITION: absolute; TOP: 232px" runat="server"
				ForeColor="Maroon">gender</asp:Label>
			<asp:DropDownList id="ddlgender" style="Z-INDEX: 105; LEFT: 392px; POSITION: absolute; TOP: 232px"
				runat="server" tabIndex="6" ForeColor="Maroon">
				<asp:ListItem Value="MALE">MALE</asp:ListItem>
				<asp:ListItem Value="FEMALE">FEMALE</asp:ListItem>
			</asp:DropDownList>
			<asp:TextBox id="txtinst" style="Z-INDEX: 106; LEFT: 240px; POSITION: absolute; TOP: 504px" runat="server"
				Width="420px" TextMode="MultiLine" Height="56px" tabIndex="20" ForeColor="Maroon"></asp:TextBox>
			<asp:RadioButtonList id="rbb" style="Z-INDEX: 107; LEFT: 232px; POSITION: absolute; TOP: 352px" runat="server"
				Width="76px" BorderStyle="Ridge" BorderWidth="2px" tabIndex="13" ForeColor="Maroon">
				<asp:ListItem Value="YES">YES</asp:ListItem>
				<asp:ListItem Value="NO">NO</asp:ListItem>
			</asp:RadioButtonList>
			<asp:Label id="Label21" style="Z-INDEX: 108; LEFT: 56px; POSITION: absolute; TOP: 368px" runat="server"
				Font-Bold="True" ForeColor="Black">whether bail obtained</asp:Label>
			<asp:TextBox id="txtbcname" style="Z-INDEX: 109; LEFT: 520px; POSITION: absolute; TOP: 440px"
				runat="server" Width="136px" tabIndex="17" ForeColor="Maroon"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcname"
                ErrorMessage="Court name must" Style="left: 659px; position: relative; top: 427px; z-index: 110;"></asp:RequiredFieldValidator>
			<asp:TextBox id="txtpname" style="Z-INDEX: 111; LEFT: 520px; POSITION: absolute; TOP: 472px"
				runat="server" Width="136px" tabIndex="19" ForeColor="Maroon"></asp:TextBox>
			<asp:TextBox id="txtpsname" style="Z-INDEX: 112; LEFT: 192px; POSITION: absolute; TOP: 472px"
				runat="server" Width="136px" tabIndex="18" ForeColor="Maroon"></asp:TextBox>
			<asp:DropDownList id="ddlmonth" style="Z-INDEX: 113; LEFT: 192px; POSITION: absolute; TOP: 440px"
				runat="server" Width="44px" tabIndex="14" ForeColor="Maroon"></asp:DropDownList>
			<asp:DropDownList id="ddlday" style="Z-INDEX: 114; LEFT: 232px; POSITION: absolute; TOP: 440px" runat="server"
				Width="44px" tabIndex="15" ForeColor="Maroon"></asp:DropDownList>
			<asp:DropDownList id="ddlyear" style="Z-INDEX: 115; LEFT: 272px; POSITION: absolute; TOP: 440px" runat="server"
				Width="60px" tabIndex="16" ForeColor="Maroon"></asp:DropDownList>
			<asp:Label id="Label20" style="Z-INDEX: 116; LEFT: 72px; POSITION: absolute; TOP: 440px" runat="server"
				ForeColor="Maroon">Date</asp:Label>
			<asp:Label id="Label19" style="Z-INDEX: 117; LEFT: 368px; POSITION: absolute; TOP: 440px" runat="server"
				ForeColor="Maroon">Bail obtained from court</asp:Label>
			<asp:Label id="Label18" style="Z-INDEX: 118; LEFT: 72px; POSITION: absolute; TOP: 472px" runat="server"
				ForeColor="Maroon">appealed from ps</asp:Label>
			<asp:Label id="Label17" style="Z-INDEX: 119; LEFT: 368px; POSITION: absolute; TOP: 472px" runat="server"
				ForeColor="Maroon">prosecuter name</asp:Label>
			<asp:Label id="Label16" style="Z-INDEX: 120; LEFT: 72px; POSITION: absolute; TOP: 512px" runat="server"
				ForeColor="Maroon">Instructions given on bail</asp:Label>
			<asp:Label id="Label9" style="Z-INDEX: 121; LEFT: 56px; POSITION: absolute; TOP: 408px" runat="server"
				Font-Bold="True" ForeColor="Black">Bail details</asp:Label>
			<asp:TextBox id="txtsname" style="Z-INDEX: 122; LEFT: 160px; POSITION: absolute; TOP: 232px"
				runat="server" Width="136px" tabIndex="5" ForeColor="Maroon"></asp:TextBox>
			<asp:TextBox id="txtmno" style="Z-INDEX: 123; LEFT: 624px; POSITION: absolute; TOP: 304px" runat="server"
				Width="104px" tabIndex="12" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label15" style="Z-INDEX: 124; LEFT: 544px; POSITION: absolute; TOP: 304px" runat="server"
				Width="32px" ForeColor="Maroon">Mobile</asp:Label>
			<asp:TextBox id="txtphno" style="Z-INDEX: 125; LEFT: 392px; POSITION: absolute; TOP: 304px" runat="server"
				Width="144px" tabIndex="11" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label14" style="Z-INDEX: 126; LEFT: 304px; POSITION: absolute; TOP: 304px" runat="server"
				Width="73px" ForeColor="Maroon">Phone No:</asp:Label>
			<asp:TextBox id="txtstate" style="Z-INDEX: 127; LEFT: 160px; POSITION: absolute; TOP: 304px"
				runat="server" Width="136px" tabIndex="10" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label13" style="Z-INDEX: 128; LEFT: 64px; POSITION: absolute; TOP: 304px" runat="server"
				Width="32px" ForeColor="Maroon">State</asp:Label>
			<asp:TextBox id="txtcity" style="Z-INDEX: 129; LEFT: 624px; POSITION: absolute; TOP: 272px" runat="server"
				Width="104px" tabIndex="9" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label12" style="Z-INDEX: 130; LEFT: 544px; POSITION: absolute; TOP: 272px" runat="server"
				Width="32px" ForeColor="Maroon">City/District</asp:Label>
			<asp:TextBox id="txtstr" style="Z-INDEX: 131; LEFT: 392px; POSITION: absolute; TOP: 272px" runat="server"
				Width="144px" tabIndex="8" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label11" style="Z-INDEX: 132; LEFT: 304px; POSITION: absolute; TOP: 272px" runat="server"
				Width="32px" ForeColor="Maroon">Street/Village</asp:Label>
			<asp:TextBox id="txthno" style="Z-INDEX: 133; LEFT: 160px; POSITION: absolute; TOP: 272px" runat="server"
				Width="136px" tabIndex="7" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label10" style="Z-INDEX: 134; LEFT: 64px; POSITION: absolute; TOP: 272px" runat="server"
				Width="32px" ForeColor="Maroon">H.No</asp:Label>
			<asp:Label id="Label8" style="Z-INDEX: 135; LEFT: 64px; POSITION: absolute; TOP: 232px" runat="server"
				ForeColor="Maroon">Surity Name:</asp:Label>
			<asp:Label id="Label7" style="Z-INDEX: 136; LEFT: 56px; POSITION: absolute; TOP: 192px" runat="server"
				ForeColor="Black" Font-Bold="True">Surity Details</asp:Label>
			<asp:TextBox id="txtresult" style="Z-INDEX: 137; LEFT: 392px; POSITION: absolute; TOP: 144px"
				runat="server" TextMode="MultiLine" tabIndex="4" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label6" style="Z-INDEX: 138; LEFT: 288px; POSITION: absolute; TOP: 144px" runat="server"
				ForeColor="Maroon">Result of appeal</asp:Label>
			<asp:Label id="Label5" style="Z-INDEX: 139; LEFT: 56px; POSITION: absolute; TOP: 144px" runat="server"
				ForeColor="Maroon">Court Name</asp:Label>
			<asp:TextBox id="txtcname" style="Z-INDEX: 140; LEFT: 160px; POSITION: absolute; TOP: 144px"
				runat="server" Width="105px" tabIndex="3" ForeColor="Maroon"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcname"
                ErrorMessage="Court name compulsory" Style="z-index: 141; left: 637px; position: absolute;
                top: 149px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtsname"
                ErrorMessage="Surity name compulsory" Style="z-index: 142; left: 163px; position: absolute;
                top: 208px"></asp:RequiredFieldValidator>
			<asp:TextBox id="txtappname" style="Z-INDEX: 143; LEFT: 392px; POSITION: absolute; TOP: 104px"
				runat="server" Width="104px" tabIndex="2" ForeColor="Maroon"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtappname"
                ErrorMessage="Appellant name must" Style="left: 394px; position: relative; top: 88px; z-index: 144;"></asp:RequiredFieldValidator>
			<asp:Label id="Label3" style="Z-INDEX: 145; LEFT: 280px; POSITION: absolute; TOP: 104px" runat="server"
				ForeColor="Maroon">Appellant Name :</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 146; LEFT: 56px; POSITION: absolute; TOP: 104px" runat="server"
				ForeColor="Maroon">Appeal no:</asp:Label>
			<asp:TextBox id="txtappno" style="Z-INDEX: 147; LEFT: 160px; POSITION: absolute; TOP: 104px"
				runat="server" Width="104px" tabIndex="1" ForeColor="Maroon"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 148; LEFT: 352px; POSITION: absolute; TOP: 576px" runat="server"
				Width="133px" Height="36px" Text="SAVE " tabIndex="21" BorderWidth="3px" BorderStyle="Outset"
				BackColor="#E0E0E0" BorderColor="#404040" Font-Bold="True" onclick="Button1_Click"></asp:Button>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpname"
                ErrorMessage="Prosecuter name compulsory" Style="z-index: 149; left: 672px; position: absolute;
                top: 472px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtresult"
                ErrorMessage="Appeal Result compulsory" Style="z-index: 150; left: 636px; position: absolute;
                top: 151px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtmno"
                ErrorMessage="Mobile no. compulsory" Style="z-index: 151; left: 742px; position: absolute;
                top: 304px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmno"
                ErrorMessage="Enter correct mobile number" Style="z-index: 153; left: 626px;
                position: absolute; top: 337px" ValidationExpression="([0-9]{10})"></asp:RegularExpressionValidator>
		</form>
	</body>
</HTML>
