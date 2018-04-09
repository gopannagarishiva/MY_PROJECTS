<%@ Page language="c#" Inherits="WebApplication4.WebForm13" CodeFile="crime_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm13</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="lightgrey" background="file:///C:\Inetpub\wwwroot\WebApplication4\7.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 197px; POSITION: absolute; TOP: 16px" runat="server"
				Width="264px" Height="32px" Font-Size="X-Large">CRIME DETAILS</asp:Label>
			<asp:RequiredFieldValidator id="RequiredFieldValidator6" style="Z-INDEX: 128; LEFT: 232px; POSITION: absolute; TOP: 152px"
				runat="server" Height="20px" Width="128px" ErrorMessage="information is must" ControlToValidate="txtcrimedet"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator5" style="Z-INDEX: 127; LEFT: 616px; POSITION: absolute; TOP: 344px"
				runat="server" ErrorMessage="Select One" ControlToValidate="rbreject"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator4" style="Z-INDEX: 126; LEFT: 376px; POSITION: absolute; TOP: 400px"
				runat="server" ErrorMessage="Specify Position" ControlToValidate="txtrank"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator3" style="Z-INDEX: 125; LEFT: 376px; POSITION: absolute; TOP: 352px"
				runat="server" ErrorMessage="Sno Required" ControlToValidate="txtsno"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 124; LEFT: 376px; POSITION: absolute; TOP: 312px"
				runat="server" ErrorMessage="Enter Name" ControlToValidate="txtio"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 123; LEFT: 400px; POSITION: absolute; TOP: 128px"
				runat="server" ErrorMessage="Enter police station Name" ControlToValidate="txtps"></asp:RequiredFieldValidator>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 121; LEFT: 168px; POSITION: absolute; TOP: 64px" runat="server"
				Width="112px" BackColor="#FFE0C0" BorderStyle="Inset"></asp:TextBox>
			<asp:Label id="Label10" style="Z-INDEX: 120; LEFT: 64px; POSITION: absolute; TOP: 64px" runat="server"
				Height="16px" Width="88px">Fir No</asp:Label>
			<asp:radiobuttonlist id="rbreject" style="Z-INDEX: 119; LEFT: 480px; POSITION: absolute; TOP: 320px"
				runat="server" Width="120px" BorderStyle="Ridge" BorderWidth="1px" tabIndex="9" ForeColor="Maroon">
				<asp:ListItem Value="Yes">Yes</asp:ListItem>
				<asp:ListItem Value="No">No</asp:ListItem>
			</asp:radiobuttonlist>
			<asp:TextBox id="txtrank" style="Z-INDEX: 114; LEFT: 224px; POSITION: absolute; TOP: 392px" runat="server"
				Width="130px" tabIndex="8"></asp:TextBox>
			<asp:Label id="Label7" style="Z-INDEX: 113; LEFT: 72px; POSITION: absolute; TOP: 392px" runat="server"
				Width="122px" Height="24px" ForeColor="Maroon">Position(rank)</asp:Label>
			<asp:Label id="Label6" style="Z-INDEX: 111; LEFT: 72px; POSITION: absolute; TOP: 352px" runat="server"
				Width="128px" Height="24px" ForeColor="Maroon">Service number</asp:Label>
			<asp:Label id="Label3" style="Z-INDEX: 105; LEFT: 304px; POSITION: absolute; TOP: 96px" runat="server"
				Width="88px" Height="24px" ForeColor="Maroon">Police station</asp:Label>
			<asp:DropDownList id="ddlyear" style="Z-INDEX: 104; LEFT: 184px; POSITION: absolute; TOP: 104px" runat="server"
				Width="56px" tabIndex="3" ForeColor="Maroon"></asp:DropDownList>
			<asp:DropDownList id="ddlday" style="Z-INDEX: 103; LEFT: 152px; POSITION: absolute; TOP: 104px" runat="server"
				Width="40px" tabIndex="2" ForeColor="Maroon"></asp:DropDownList>
			<asp:DropDownList id="ddlmonth" style="Z-INDEX: 102; LEFT: 112px; POSITION: absolute; TOP: 104px"
				runat="server" Width="40px" tabIndex="1" ForeColor="Maroon"></asp:DropDownList>
			<asp:Label id="Label2" style="Z-INDEX: 101; LEFT: 64px; POSITION: absolute; TOP: 104px" runat="server"
				Width="32px" Height="24px" ForeColor="Maroon">Date </asp:Label>
			<asp:TextBox id="txtps" style="Z-INDEX: 106; LEFT: 400px; POSITION: absolute; TOP: 96px" runat="server"
				Width="112px" tabIndex="4" ForeColor="Maroon"></asp:TextBox>
			<asp:Label id="Label4" style="Z-INDEX: 107; LEFT: 64px; POSITION: absolute; TOP: 152px" runat="server"
				Width="106px" Height="24px" Font-Size="Medium">Crime details</asp:Label>
			<asp:TextBox id="txtcrimedet" style="Z-INDEX: 108; LEFT: 64px; POSITION: absolute; TOP: 176px"
				runat="server" Width="632px" Height="104px" tabIndex="5" ForeColor="Maroon" TextMode="MultiLine"></asp:TextBox>
			<asp:Label id="Label5" style="Z-INDEX: 109; LEFT: 72px; POSITION: absolute; TOP: 312px" runat="server"
				Width="128px" Height="24px" ForeColor="Maroon">Investigation Officer</asp:Label>
			<asp:TextBox id="txtio" style="Z-INDEX: 110; LEFT: 224px; POSITION: absolute; TOP: 312px" runat="server"
				Width="128px" tabIndex="6"></asp:TextBox>
			<asp:TextBox id="txtsno" style="Z-INDEX: 112; LEFT: 224px; POSITION: absolute; TOP: 352px" runat="server"
				Width="130px" tabIndex="7"></asp:TextBox>
			<asp:Label id="Label8" style="Z-INDEX: 115; LEFT: 360px; POSITION: absolute; TOP: 288px" runat="server"
				Width="362px" Height="24px" Font-Size="Medium" ForeColor="Maroon">Whether investigation officer is rejected the case?</asp:Label>
			<asp:Label id="Label9" style="Z-INDEX: 116; LEFT: 496px; POSITION: absolute; TOP: 400px" runat="server"
				Width="130px" Height="21px" Font-Size="Medium" ForeColor="Black">If yes reasons:</asp:Label>
			<asp:Button id="save_con" style="Z-INDEX: 117; LEFT: 360px; POSITION: absolute; TOP: 544px"
				runat="server" Width="120px" Height="32px" Text="save&amp;continue" tabIndex="11" BackColor="#E0E0E0"
				BorderWidth="3px" BorderStyle="Outset" BorderColor="Maroon" onclick="save_con_Click"></asp:Button>
			<asp:TextBox id="txtreson" style="Z-INDEX: 118; LEFT: 72px; POSITION: absolute; TOP: 432px" runat="server"
				Width="632px" Height="92px" tabIndex="10" TextMode="MultiLine"></asp:TextBox>
		</form>
	</body>
</HTML>
