<%@ Page language="c#" Inherits="WebApplication4.forms.newloginpage" CodeFile="newloginpage.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>newloginpage</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="../Images/untitled.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 311px; POSITION: absolute; TOP: 135px" runat="server"
				ForeColor="#804000" Font-Bold="True" Width="64px">UserID</asp:Label>
            &nbsp;
			<asp:Label id="lbl" style="Z-INDEX: 101; LEFT: 327px; POSITION: absolute; TOP: 311px" runat="server"
				ForeColor="Red" Visible="False" Font-Bold="True" Width="208px">*CHECK YOUR USERID & PASSWORD&POSITION*</asp:Label>
			<asp:Button id="Button2" style="Z-INDEX: 102; LEFT: 447px; POSITION: absolute; TOP: 271px" tabIndex="5"
				runat="server" Text="EXIT" Width="120px" BackColor="#E0E0E0" BorderColor="Maroon" BorderStyle="Outset"
				BorderWidth="3px" onclick="Button2_Click" CausesValidation="False"></asp:Button>
			<asp:DropDownList id="ddlpos" style="Z-INDEX: 103; LEFT: 399px; POSITION: absolute; TOP: 215px" tabIndex="3"
				runat="server" Width="161">
				<asp:ListItem Value="CIRCLEINSPECTER">CIRCLEINSPECTER</asp:ListItem>
				<asp:ListItem Value="SUBINSPECTER">SUBINSPECTER</asp:ListItem>
				<asp:ListItem Value="CONISTABLE">CONISTABLE</asp:ListItem>
			</asp:DropDownList>
			<asp:Button id="Button1" style="Z-INDEX: 104; LEFT: 303px; POSITION: absolute; TOP: 271px" tabIndex="4"
				runat="server" Text="SUBMIT" Width="120px" BackColor="#E0E0E0" BorderColor="Maroon" BorderStyle="Outset"
				BorderWidth="3px" onclick="Button1_Click"></asp:Button>
			<asp:TextBox id="txtpass" style="Z-INDEX: 105; LEFT: 399px; POSITION: absolute; TOP: 175px" tabIndex="2"
				runat="server" Width="161px" TextMode="Password"></asp:TextBox>
			<asp:TextBox id="txtuid" style="Z-INDEX: 106; LEFT: 399px; POSITION: absolute; TOP: 135px" tabIndex="1"
				runat="server" Width="161px"></asp:TextBox>
			<asp:Label id="Label3" style="Z-INDEX: 107; LEFT: 311px; POSITION: absolute; TOP: 215px" runat="server"
				ForeColor="#804000" Font-Bold="True" Width="64px">Position</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 108; LEFT: 311px; POSITION: absolute; TOP: 175px" runat="server"
				ForeColor="#804000" Font-Bold="True" Width="64px">Password</asp:Label>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 109;
                left: 382px; position: absolute; top: 54px" Text="Police Login"></asp:Label>
            <asp:Button ID="Button3" runat="server" BackColor="#E0E0E0" BorderColor="Maroon"
                BorderStyle="Outset" BorderWidth="3px" OnClick="Button3_Click" Style="z-index: 110;
                left: 384px; position: absolute; top: 377px" TabIndex="4" Text="Signup" Width="120px" CausesValidation="False" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuid"
                ErrorMessage="Enter User Id" Style="z-index: 111; left: 572px; position: absolute;
                top: 136px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass"
                ErrorMessage="Enter Password" Style="z-index: 113; left: 573px; position: absolute;
                top: 176px"></asp:RequiredFieldValidator>
		</form>
	</body>
</HTML>
