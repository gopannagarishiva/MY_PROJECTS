<%@ Page language="c#" Inherits="WebApplication4.WebForm2" CodeFile="login.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm2</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="../Images/bagroundimg.bmp" bgcolor="#999999">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 224px; POSITION: absolute; TOP: 176px" runat="server"
				Width="61px">User Id</asp:Label>
			<asp:Label id="Label3" style="Z-INDEX: 101; LEFT: 280px; POSITION: absolute; TOP: 40px" runat="server"
				Width="184px" ForeColor="#0000C0" Font-Bold="True" Font-Italic="True" Font-Size="X-Large">User Login</asp:Label>
			<asp:Label id="lbldisplay" style="Z-INDEX: 102; LEFT: 224px; POSITION: absolute; TOP: 296px"
				runat="server" Width="336px" Font-Bold="True" Font-Names="Garamond" ForeColor="Red" Visible="False">Ur not Authorized check Ur UserId/Password</asp:Label>
			<asp:Button id="btnmainfrm" style="Z-INDEX: 103; LEFT: 370px; POSITION: absolute; TOP: 268px"
				runat="server" Text="Exit" Width="56px" tabIndex="4" onclick="btnmainfrm_Click" CausesValidation="False"></asp:Button>
			<asp:Button id="btnlogin" style="Z-INDEX: 104; LEFT: 245px; POSITION: absolute; TOP: 268px"
				runat="server" Text="Log In" Width="88px" tabIndex="3" onclick="btnlogin_Click"></asp:Button>
			<asp:TextBox id="txtpass" style="Z-INDEX: 105; LEFT: 304px; POSITION: absolute; TOP: 216px" runat="server"
				TextMode="Password" Width="155px" tabIndex="2"></asp:TextBox>
			<asp:TextBox id="txtuid" style="Z-INDEX: 106; LEFT: 304px; POSITION: absolute; TOP: 176px" runat="server"
				tabIndex="1"></asp:TextBox>
			<asp:Label id="Label2" style="Z-INDEX: 107; LEFT: 224px; POSITION: absolute; TOP: 216px" runat="server"
				Width="61">Password</asp:Label>
            <asp:Button ID="cmdsignup" runat="server" OnClick="cmdsignup_Click" Style="left: 308px;
                position: relative; top: 332px; z-index: 108;" Text="Signup" CausesValidation="False" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuid"
                ErrorMessage="Enter User Id" Style="z-index: 109; left: 475px; position: absolute;
                top: 180px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass"
                ErrorMessage="Enter Password" Style="z-index: 111; left: 475px; position: absolute;
                top: 218px"></asp:RequiredFieldValidator>
		</form>
	</body>
</HTML>
