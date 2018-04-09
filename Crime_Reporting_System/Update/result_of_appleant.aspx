<%@ Page language="c#" Inherits="WebApplication4.Result_of_appleant2" CodeFile="Result_of_appleant.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Result_of_appleant2</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#faebd7" background="../Images/8.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 264px; POSITION: absolute; TOP: 16px" runat="server"
				ForeColor="Maroon" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" BorderStyle="None"
				BorderWidth="2px">Result of Appeal</asp:Label>
            <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 151;
                left: 270px; position: absolute; top: 63px" Text="This case is Under Investigation"
                Visible="False"></asp:Label>
			<asp:Image id="Image1" style="Z-INDEX: 102; LEFT: 768px; POSITION: absolute; TOP: 20px" runat="server"
				ImageUrl="~/Images/cop1.jpg"></asp:Image>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 103; LEFT: 320px; POSITION: absolute; TOP: 336px"
				runat="server" ErrorMessage="Should Select One" ControlToValidate="rbb" ForeColor="#0000C0"></asp:RequiredFieldValidator>
			<asp:Label id="lblbail" style="Z-INDEX: 104; LEFT: 320px; POSITION: absolute; TOP: 360px" runat="server"
				ForeColor="#FF8080"></asp:Label>
			<asp:Label id="lbldate" style="Z-INDEX: 105; LEFT: 200px; POSITION: absolute; TOP: 400px" runat="server"
				ForeColor="#FF8080" Width="128px"></asp:Label>
			<asp:Label id="lblgender" style="Z-INDEX: 106; LEFT: 488px; POSITION: absolute; TOP: 224px"
				runat="server" ForeColor="#FF8080"></asp:Label>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 107; LEFT: 160px; POSITION: absolute; TOP: 64px" runat="server"
				BorderStyle="Inset" Width="96px" BackColor="#FFE0C0"></asp:TextBox>
			<asp:Label id="Label22" style="Z-INDEX: 108; LEFT: 56px; POSITION: absolute; TOP: 64px" runat="server"
				Font-Size="Medium">FIRNO</asp:Label>
			<asp:Label id="Label4" style="Z-INDEX: 109; LEFT: 312px; POSITION: absolute; TOP: 224px" runat="server"
				ForeColor="Maroon">gender</asp:Label>
			<asp:DropDownList id="ddlgender" style="Z-INDEX: 110; LEFT: 392px; POSITION: absolute; TOP: 224px"
				runat="server">
				<asp:ListItem Value="MALE">MALE</asp:ListItem>
				<asp:ListItem Value="FEMALE">FEMALE</asp:ListItem>
			</asp:DropDownList>
			<asp:TextBox id="txtinst" style="Z-INDEX: 111; LEFT: 240px; POSITION: absolute; TOP: 496px" runat="server"
				Width="420px" TextMode="MultiLine" Height="56px"></asp:TextBox>
			<asp:RadioButtonList id="rbb" style="Z-INDEX: 112; LEFT: 232px; POSITION: absolute; TOP: 328px" runat="server"
				Width="76px" BorderStyle="Ridge" BorderWidth="2px" ForeColor="Maroon">
				<asp:ListItem Value="YES">YES</asp:ListItem>
				<asp:ListItem Value="NO">NO</asp:ListItem>
			</asp:RadioButtonList>
			<asp:Label id="Label21" style="Z-INDEX: 113; LEFT: 56px; POSITION: absolute; TOP: 344px" runat="server"
				Font-Bold="True" ForeColor="Black">whether bail obtained</asp:Label>
			<asp:TextBox id="txtbcname" style="Z-INDEX: 114; LEFT: 520px; POSITION: absolute; TOP: 432px"
				runat="server" Width="136px"></asp:TextBox>
			<asp:TextBox id="txtpname" style="Z-INDEX: 115; LEFT: 520px; POSITION: absolute; TOP: 464px"
				runat="server" Width="136px"></asp:TextBox>
			<asp:TextBox id="txtpsname" style="Z-INDEX: 116; LEFT: 192px; POSITION: absolute; TOP: 464px"
				runat="server" Width="136px"></asp:TextBox>
			<asp:DropDownList id="ddlmonth" style="Z-INDEX: 117; LEFT: 192px; POSITION: absolute; TOP: 432px"
				runat="server" Width="44px"></asp:DropDownList>
			<asp:DropDownList id="ddlday" style="Z-INDEX: 118; LEFT: 232px; POSITION: absolute; TOP: 432px" runat="server"
				Width="44px"></asp:DropDownList>
			<asp:DropDownList id="ddlyear" style="Z-INDEX: 119; LEFT: 272px; POSITION: absolute; TOP: 432px" runat="server"
				Width="60px"></asp:DropDownList>
			<asp:Label id="Label20" style="Z-INDEX: 120; LEFT: 72px; POSITION: absolute; TOP: 432px" runat="server"
				ForeColor="Maroon">Date</asp:Label>
			<asp:Label id="Label19" style="Z-INDEX: 121; LEFT: 368px; POSITION: absolute; TOP: 432px" runat="server"
				ForeColor="Maroon">Bail obtained fron court</asp:Label>
			<asp:Label id="Label18" style="Z-INDEX: 122; LEFT: 72px; POSITION: absolute; TOP: 464px" runat="server"
				ForeColor="Maroon">appealed from ps</asp:Label>
			<asp:Label id="Label17" style="Z-INDEX: 123; LEFT: 368px; POSITION: absolute; TOP: 464px" runat="server"
				ForeColor="Maroon">prosecuter name</asp:Label>
			<asp:Label id="Label16" style="Z-INDEX: 124; LEFT: 72px; POSITION: absolute; TOP: 504px" runat="server"
				ForeColor="Maroon">Instructions given on bail</asp:Label>
			<asp:Label id="Label9" style="Z-INDEX: 125; LEFT: 56px; POSITION: absolute; TOP: 392px" runat="server"
				Font-Bold="True" ForeColor="Black">Bail details</asp:Label>
			<asp:TextBox id="txtsname" style="Z-INDEX: 126; LEFT: 160px; POSITION: absolute; TOP: 224px"
				runat="server" Width="136px"></asp:TextBox>
			<asp:TextBox id="txtmno" style="Z-INDEX: 127; LEFT: 624px; POSITION: absolute; TOP: 296px" runat="server"
				Width="104px"></asp:TextBox>
			<asp:Label id="Label15" style="Z-INDEX: 128; LEFT: 544px; POSITION: absolute; TOP: 296px" runat="server"
				Width="32px" ForeColor="Maroon">Mobile</asp:Label>
			<asp:TextBox id="txtphno" style="Z-INDEX: 129; LEFT: 392px; POSITION: absolute; TOP: 296px" runat="server"
				Width="144px"></asp:TextBox>
			<asp:Label id="Label14" style="Z-INDEX: 130; LEFT: 304px; POSITION: absolute; TOP: 296px" runat="server"
				Width="73px" ForeColor="Maroon">Phone No:</asp:Label>
			<asp:TextBox id="txtstate" style="Z-INDEX: 131; LEFT: 160px; POSITION: absolute; TOP: 296px"
				runat="server" Width="136px"></asp:TextBox>
			<asp:Label id="Label13" style="Z-INDEX: 132; LEFT: 64px; POSITION: absolute; TOP: 296px" runat="server"
				Width="32px" ForeColor="Maroon">State</asp:Label>
			<asp:TextBox id="txtcity" style="Z-INDEX: 133; LEFT: 624px; POSITION: absolute; TOP: 264px" runat="server"
				Width="104px"></asp:TextBox>
			<asp:Label id="Label12" style="Z-INDEX: 134; LEFT: 544px; POSITION: absolute; TOP: 264px" runat="server"
				Width="32px" ForeColor="Maroon">City/District</asp:Label>
			<asp:TextBox id="txtstr" style="Z-INDEX: 135; LEFT: 392px; POSITION: absolute; TOP: 264px" runat="server"
				Width="144px"></asp:TextBox>
			<asp:Label id="Label11" style="Z-INDEX: 136; LEFT: 304px; POSITION: absolute; TOP: 264px" runat="server"
				Width="32px" ForeColor="Maroon">Street/Village</asp:Label>
			<asp:TextBox id="txthno" style="Z-INDEX: 137; LEFT: 160px; POSITION: absolute; TOP: 264px" runat="server"
				Width="136px"></asp:TextBox>
			<asp:Label id="Label10" style="Z-INDEX: 138; LEFT: 64px; POSITION: absolute; TOP: 264px" runat="server"
				Width="32px" ForeColor="Maroon">H.No</asp:Label>
			<asp:Label id="Label8" style="Z-INDEX: 139; LEFT: 64px; POSITION: absolute; TOP: 224px" runat="server"
				ForeColor="Maroon">Surity Name:</asp:Label>
			<asp:Label id="Label7" style="Z-INDEX: 140; LEFT: 56px; POSITION: absolute; TOP: 184px" runat="server"
				ForeColor="Black" Font-Bold="True">Surity Details</asp:Label>
			<asp:TextBox id="txtresult" style="Z-INDEX: 141; LEFT: 392px; POSITION: absolute; TOP: 152px"
				runat="server" TextMode="MultiLine"></asp:TextBox>
			<asp:Label id="Label6" style="Z-INDEX: 142; LEFT: 288px; POSITION: absolute; TOP: 152px" runat="server"
				ForeColor="Maroon">Result of appeal</asp:Label>
			<asp:Label id="Label5" style="Z-INDEX: 143; LEFT: 56px; POSITION: absolute; TOP: 152px" runat="server"
				ForeColor="Maroon">Court Name</asp:Label>
			<asp:TextBox id="txtcname" style="Z-INDEX: 144; LEFT: 160px; POSITION: absolute; TOP: 152px"
				runat="server" Width="96px"></asp:TextBox>
			<asp:TextBox id="txtappname" style="Z-INDEX: 145; LEFT: 392px; POSITION: absolute; TOP: 112px"
				runat="server" Width="104px"></asp:TextBox>
			<asp:Label id="Label3" style="Z-INDEX: 146; LEFT: 288px; POSITION: absolute; TOP: 112px" runat="server"
				ForeColor="Maroon">Appellant Name :</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 147; LEFT: 56px; POSITION: absolute; TOP: 112px" runat="server"
				ForeColor="Maroon">Appeal no:</asp:Label>
			<asp:TextBox id="txtappno" style="Z-INDEX: 148; LEFT: 160px; POSITION: absolute; TOP: 112px"
				runat="server" Width="96px"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 149; LEFT: 221px; POSITION: absolute; TOP: 568px" runat="server"
				Width="181px" Height="36px" Text="Update &amp; Go Back" BorderStyle="Outset" BackColor="#E0E0E0"
				BorderColor="Black" BorderWidth="3px" onclick="Button1_Click"></asp:Button><asp:Button id="cmdcancel" style="Z-INDEX: 150; LEFT: 457px; POSITION: absolute; TOP: 570px" runat="server"
				Width="181px" Height="36px" Text="Cancel" BorderStyle="Outset" BackColor="#E0E0E0"
				BorderColor="Black" BorderWidth="3px" onclick="cmdcancel_Click"></asp:Button>
        </form>
	</body>
</HTML>
