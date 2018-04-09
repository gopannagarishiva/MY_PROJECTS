<%@ Page language="c#" Inherits="WebApplication4.WebForm23" CodeFile="crime_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm23</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#faebd7">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 100; LEFT: 197px; POSITION: absolute; TOP: 16px" runat="server"
				Width="264px" Height="32px" Font-Size="X-Large" ForeColor="Maroon">CRIME DETAILS</asp:Label>
			<asp:Image id="Image1" style="Z-INDEX: 101; LEFT: 664px; POSITION: absolute; TOP: 0px" runat="server"
				ImageUrl="~/Images/d.jpg"></asp:Image>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 102; LEFT: 560px; POSITION: absolute; TOP: 312px"
				runat="server" ErrorMessage="Should Select One" ControlToValidate="rbreject" ForeColor="#0000C0"></asp:RequiredFieldValidator>
			<asp:Label id="lblrej" style="Z-INDEX: 103; LEFT: 432px; POSITION: absolute; TOP: 360px" runat="server"
				Width="56px">Label</asp:Label>
			<asp:Label id="lbldate" style="Z-INDEX: 104; LEFT: 112px; POSITION: absolute; TOP: 128px" runat="server"
				Width="176px">Label</asp:Label>
			<asp:TextBox id="txtfirno" style="Z-INDEX: 105; LEFT: 168px; POSITION: absolute; TOP: 64px" runat="server"
				Width="112px" ReadOnly="True"></asp:TextBox>
			<asp:Label id="Label10" style="Z-INDEX: 106; LEFT: 64px; POSITION: absolute; TOP: 64px" runat="server"
				Height="16px" Width="88px" BorderStyle="None">Firno</asp:Label>
			<asp:radiobuttonlist id="rbreject" style="Z-INDEX: 107; LEFT: 432px; POSITION: absolute; TOP: 304px"
				runat="server" Width="120px" BorderStyle="Ridge" BorderWidth="1px" ForeColor="Maroon">
				<asp:ListItem Value="Yes">Yes</asp:ListItem>
				<asp:ListItem Value="No">No</asp:ListItem>
			</asp:radiobuttonlist>
			<asp:TextBox id="txtrank" style="Z-INDEX: 108; LEFT: 224px; POSITION: absolute; TOP: 344px" runat="server"
				Width="130px"></asp:TextBox>
			<asp:Label id="Label7" style="Z-INDEX: 109; LEFT: 72px; POSITION: absolute; TOP: 344px" runat="server"
				Width="123" Height="24px" ForeColor="Maroon">Rank</asp:Label>
			<asp:Label id="Label6" style="Z-INDEX: 110; LEFT: 72px; POSITION: absolute; TOP: 304px" runat="server"
				Width="123px" Height="24px" ForeColor="Maroon">Service number</asp:Label>
			<asp:Label id="Label3" style="Z-INDEX: 111; LEFT: 307px; POSITION: absolute; TOP: 64px" runat="server"
				Width="88px" Height="16px" ForeColor="Maroon">Police station</asp:Label>
			<asp:DropDownList id="ddlyear" style="Z-INDEX: 112; LEFT: 184px; POSITION: absolute; TOP: 104px" runat="server"
				Width="56px"></asp:DropDownList>
			<asp:DropDownList id="ddlday" style="Z-INDEX: 113; LEFT: 152px; POSITION: absolute; TOP: 104px" runat="server"
				Width="40px"></asp:DropDownList>
			<asp:DropDownList id="ddlmonth" style="Z-INDEX: 114; LEFT: 112px; POSITION: absolute; TOP: 104px"
				runat="server" Width="40px"></asp:DropDownList>
			<asp:Label id="Label2" style="Z-INDEX: 115; LEFT: 64px; POSITION: absolute; TOP: 104px" runat="server"
				Width="32px" Height="24px" ForeColor="Maroon">Date </asp:Label>
			<asp:TextBox id="txtps" style="Z-INDEX: 116; LEFT: 426px; POSITION: absolute; TOP: 65px" runat="server"
				Width="112px"></asp:TextBox>
			<asp:Label id="Label4" style="Z-INDEX: 117; LEFT: 64px; POSITION: absolute; TOP: 152px" runat="server"
				Width="106px" Height="24px" Font-Size="Medium" ForeColor="Maroon">Crime details</asp:Label>
			<asp:TextBox id="txtcrimedet" style="Z-INDEX: 118; LEFT: 64px; POSITION: absolute; TOP: 176px"
				runat="server" Width="496px" Height="66px" TextMode="MultiLine"></asp:TextBox>
			<asp:Label id="Label5" style="Z-INDEX: 119; LEFT: 72px; POSITION: absolute; TOP: 264px" runat="server"
				Width="123px" Height="24px" ForeColor="Maroon">Investigation Officer</asp:Label>
			<asp:TextBox id="txtio" style="Z-INDEX: 120; LEFT: 224px; POSITION: absolute; TOP: 264px" runat="server"
				Width="128px"></asp:TextBox>
			<asp:TextBox id="txtsno" style="Z-INDEX: 121; LEFT: 224px; POSITION: absolute; TOP: 304px" runat="server"
				Width="130px"></asp:TextBox>
			<asp:Label id="Label8" style="Z-INDEX: 122; LEFT: 368px; POSITION: absolute; TOP: 264px" runat="server"
				Width="362px" Height="24px" Font-Size="Medium" ForeColor="Maroon">Whether investigation officer is regejting the case?</asp:Label>
			<asp:Label id="Label9" style="Z-INDEX: 123; LEFT: 376px; POSITION: absolute; TOP: 384px" runat="server"
				Width="130px" Height="21px" Font-Size="Medium" ForeColor="Maroon">If yes reasons:</asp:Label>
			<asp:Button id="save_con" style="Z-INDEX: 124; LEFT: 237px; POSITION: absolute; TOP: 514px"
				runat="server" Width="120px" Height="32px" Text="Update &amp; Go Back" BackColor="#E0E0E0"
				BorderStyle="Outset" BorderColor="Black" BorderWidth="3px" onclick="save_con_Click"></asp:Button>
			<asp:TextBox id="txtreson" style="Z-INDEX: 125; LEFT: 56px; POSITION: absolute; TOP: 416px" runat="server"
				Width="673px" Height="68px" TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" BackColor="#E0E0E0" BorderColor="#404040"
                BorderStyle="Outset" BorderWidth="5px" Height="32px" OnClick="Button2_Click"
                Style="z-index: 127; left: 419px; position: absolute; top: 512px" TabIndex="9"
                Text="Cancel" Width="128px" />
		</form>
	</body>
</HTML>
