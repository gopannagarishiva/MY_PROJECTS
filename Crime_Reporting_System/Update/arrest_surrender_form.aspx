<%@ Page language="c#" Inherits="WebApplication4.WebForm24" CodeFile="arrest_surrender_form.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm24</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="antiquewhite">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 100; LEFT: 168px; POSITION: absolute; TOP: 16px" runat="server"
				ForeColor="Maroon" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Height="16px"
				Width="312px"> Arrest/Surrenderd form</asp:label>
			<asp:Image id="Image1" style="Z-INDEX: 101; LEFT: 664px; POSITION: absolute; TOP: 0px" runat="server"
				ImageUrl="~/Images/d.jpg"></asp:Image>
			<asp:RequiredFieldValidator id="RequiredFieldValidator5" style="Z-INDEX: 102; LEFT: 232px; POSITION: absolute; TOP: 968px"
				runat="server" ErrorMessage="should select one" ControlToValidate="rb2" ForeColor="#0000C0"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator4" style="Z-INDEX: 103; LEFT: 232px; POSITION: absolute; TOP: 888px"
				runat="server" ErrorMessage="Should select One" ControlToValidate="rb1" ForeColor="#0000C0"></asp:RequiredFieldValidator>
			<asp:Label id="lbldate" style="Z-INDEX: 104; LEFT: 224px; POSITION: absolute; TOP: 200px" runat="server">Label</asp:Label>
			<asp:DropDownList id="ddlap" style="Z-INDEX: 105; LEFT: 472px; POSITION: absolute; TOP: 224px" runat="server"
				Width="66px">
				<asp:ListItem Value="AM">AM</asp:ListItem>
				<asp:ListItem Value="PM">PM</asp:ListItem>
			</asp:DropDownList>
			<asp:DropDownList id="ddlmi" style="Z-INDEX: 106; LEFT: 424px; POSITION: absolute; TOP: 224px" runat="server"
				Width="50px"></asp:DropDownList>
			<asp:DropDownList id="ddlh" style="Z-INDEX: 107; LEFT: 376px; POSITION: absolute; TOP: 224px" runat="server"
				Width="50px"></asp:DropDownList>
			<asp:DropDownList id="ddly" style="Z-INDEX: 108; LEFT: 312px; POSITION: absolute; TOP: 224px" runat="server"
				Width="66px"></asp:DropDownList>
			<asp:DropDownList id="ddld" style="Z-INDEX: 109; LEFT: 264px; POSITION: absolute; TOP: 224px" runat="server"
				Width="50px"></asp:DropDownList>
			<asp:DropDownList id="ddlmth" style="Z-INDEX: 110; LEFT: 216px; POSITION: absolute; TOP: 224px" runat="server"
				Width="50px"></asp:DropDownList>
			<TABLE id="Table1" style="Z-INDEX: 182; LEFT: 72px; WIDTH: 496px; POSITION: absolute; TOP: 696px; HEIGHT: 75px"
				cellSpacing="1" cellPadding="1" width="496" border="1" borderColorDark="#663300">
				<TR>
					<TD style="WIDTH: 127px"><asp:label id="Label2" runat="server" Width="128px" ForeColor="Maroon">Approximatly Height</asp:label></TD>
					<TD style="WIDTH: 153px"><asp:textbox id="txtaht" runat="server" ForeColor="Maroon"></asp:textbox></TD>
					<TD style="WIDTH: 9px"><asp:label id="Label13" runat="server" Width="48px" ForeColor="Maroon">Colour</asp:label></TD>
					<TD><asp:textbox id="txtacol" runat="server" ForeColor="Maroon"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 127px"><asp:label id="Label17" runat="server" Width="128px" ForeColor="Maroon">Body Language</asp:label></TD>
					<TD style="WIDTH: 153px"><asp:textbox id="txtabl" runat="server" ForeColor="Maroon"></asp:textbox></TD>
					<TD style="WIDTH: 9px"><asp:label id="Label14" runat="server" Width="136px" ForeColor="Maroon">Way of Talking</asp:label></TD>
					<TD><asp:textbox id="txtawt" runat="server" ForeColor="Maroon"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 127px"><asp:label id="Label19" runat="server" Width="136px" ForeColor="Maroon">Language of Criminals</asp:label></TD>
					<TD style="WIDTH: 153px"><asp:textbox id="txtalan" runat="server"></asp:textbox></TD>
					<TD style="WIDTH: 9px"><asp:label id="Label10" runat="server" Width="136px" ForeColor="Maroon">Identification Marks</asp:label></TD>
					<TD><asp:textbox id="txtaid" runat="server" ForeColor="Maroon"></asp:textbox></TD>
				</TR>
			</TABLE>
			<asp:radiobuttonlist id="rb2" style="Z-INDEX: 111; LEFT: 376px; POSITION: absolute; TOP: 864px" runat="server"
				Height="108px" Width="344px" ForeColor="Maroon" BorderStyle="Ridge" BorderWidth="2px">
				<asp:ListItem Value="Arrested &amp; Farwarded">Arrested &amp; Farwarded</asp:ListItem>
				<asp:ListItem Value="Arrested &amp; Relesed on Bail">Arrested &amp; Relesed on Bail</asp:ListItem>
				<asp:ListItem Value="Arrested &amp; Relesed on Anticipatory Bail">Arrested &amp; Relesed on Anticipatory Bail</asp:ListItem>
				<asp:ListItem Value="Arrested &amp;Remanded to police custody">Arrested &amp;Remanded to police custody</asp:ListItem>
				<asp:ListItem Value="Surrendered in Court and Bailed out">Surrendered in Court and Bailed out</asp:ListItem>
				<asp:ListItem Value="Surrendered in Court and Sent to Judicial Custody">Surrendered in Court and Sent to Judicial Custody</asp:ListItem>
			</asp:radiobuttonlist><asp:radiobuttonlist id="rb1" style="Z-INDEX: 112; LEFT: 64px; POSITION: absolute; TOP: 880px" runat="server"
				Width="168px" ForeColor="Maroon" BorderStyle="Ridge" BorderWidth="3px">
				<asp:ListItem Value="Yes">Yes</asp:ListItem>
				<asp:ListItem Value="No">No</asp:ListItem>
			</asp:radiobuttonlist><asp:textbox id="txtfirno" style="Z-INDEX: 113; LEFT: 160px; POSITION: absolute; TOP: 98px" runat="server"
				ReadOnly="True" Width="96px" BorderStyle="Inset" BackColor="#FFE0C0"></asp:textbox><asp:label id="lable1" style="Z-INDEX: 114; LEFT: 64px; POSITION: absolute; TOP: 98px" runat="server"
				Font-Bold="True" Width="72px" Font-Size="Medium" BorderStyle="Ridge" BorderWidth="2px">Firno</asp:label><asp:label id="Label20" style="Z-INDEX: 115; LEFT: 368px; POSITION: absolute; TOP: 832px" runat="server"
				ForeColor="Black" Font-Bold="True">Accused Person's Current Position:</asp:label><asp:label id="Label9" style="Z-INDEX: 116; LEFT: 16px; POSITION: absolute; TOP: 832px" runat="server"
				ForeColor="Black" Font-Bold="True">Whether Accused Person's Finger Prints Taken  :</asp:label><asp:label id="Label16" style="Z-INDEX: 117; LEFT: 24px; POSITION: absolute; TOP: 664px" runat="server"
				ForeColor="Black" Font-Bold="True">Physical  Appearence of Accused Person  :</asp:label><asp:textbox id="txtaphno" style="Z-INDEX: 118; LEFT: 592px; POSITION: absolute; TOP: 624px"
				runat="server" Width="108px" ForeColor="Maroon"></asp:textbox><asp:label id="Label78" style="Z-INDEX: 119; LEFT: 496px; POSITION: absolute; TOP: 624px" runat="server"
				ForeColor="Maroon">PHONE No</asp:label><asp:textbox id="txtastate" style="Z-INDEX: 120; LEFT: 384px; POSITION: absolute; TOP: 624px"
				runat="server" Width="108px" ForeColor="Maroon"></asp:textbox><asp:label id="Label77" style="Z-INDEX: 121; LEFT: 288px; POSITION: absolute; TOP: 624px" runat="server"
				ForeColor="Maroon">State</asp:label><asp:textbox id="txtacity" style="Z-INDEX: 122; LEFT: 152px; POSITION: absolute; TOP: 624px"
				runat="server" Width="108px" ForeColor="Maroon"></asp:textbox><asp:label id="Label30" style="Z-INDEX: 123; LEFT: 72px; POSITION: absolute; TOP: 624px" runat="server"
				ForeColor="Maroon">City/District</asp:label><asp:textbox id="txtaarea" style="Z-INDEX: 124; LEFT: 592px; POSITION: absolute; TOP: 592px"
				runat="server" Width="108px" ForeColor="Maroon"></asp:textbox><asp:button id="Button2" style="Z-INDEX: 125; LEFT: 21px; POSITION: absolute; TOP: 1008px" runat="server"
				Width="160px" Text="Update &amp; Go back" BorderStyle="Outset" BackColor="#E0E0E0" BorderColor="Black" BorderWidth="5px" onclick="Button2_Click"></asp:button><asp:textbox id="txtanat" style="Z-INDEX: 126; LEFT: 592px; POSITION: absolute; TOP: 560px" runat="server"
				Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtastr" style="Z-INDEX: 127; LEFT: 384px; POSITION: absolute; TOP: 592px" runat="server"
				Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txthno" style="Z-INDEX: 128; LEFT: 152px; POSITION: absolute; TOP: 592px" runat="server"
				Width="108px" ForeColor="Maroon"></asp:textbox><asp:label id="Label74" style="Z-INDEX: 129; LEFT: 496px; POSITION: absolute; TOP: 592px" runat="server"
				ForeColor="Maroon">Area/Mondal</asp:label><asp:label id="Label73" style="Z-INDEX: 130; LEFT: 288px; POSITION: absolute; TOP: 592px" runat="server"
				ForeColor="Maroon">Street/Village</asp:label><asp:label id="Label72" style="Z-INDEX: 131; LEFT: 72px; POSITION: absolute; TOP: 592px" runat="server"
				ForeColor="Maroon">H.No</asp:label><asp:textbox id="txtacat" style="Z-INDEX: 132; LEFT: 592px; POSITION: absolute; TOP: 528px" runat="server"
				Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtaage" style="Z-INDEX: 133; LEFT: 384px; POSITION: absolute; TOP: 560px" runat="server"
				Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtagender" style="Z-INDEX: 134; LEFT: 152px; POSITION: absolute; TOP: 560px"
				runat="server" Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtafname" style="Z-INDEX: 135; LEFT: 592px; POSITION: absolute; TOP: 496px"
				runat="server" Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtacaste" style="Z-INDEX: 136; LEFT: 384px; POSITION: absolute; TOP: 528px"
				runat="server" Width="108px" ForeColor="Maroon"></asp:textbox><asp:label id="Label71" style="Z-INDEX: 137; LEFT: 496px; POSITION: absolute; TOP: 560px" runat="server"
				ForeColor="Maroon">nationality</asp:label><asp:label id="Label70" style="Z-INDEX: 138; LEFT: 288px; POSITION: absolute; TOP: 560px" runat="server"
				ForeColor="Maroon">Age</asp:label><asp:label id="Label69" style="Z-INDEX: 139; LEFT: 72px; POSITION: absolute; TOP: 560px" runat="server"
				ForeColor="Maroon">Gendor</asp:label><asp:label id="Label68" style="Z-INDEX: 140; LEFT: 496px; POSITION: absolute; TOP: 528px" runat="server"
				ForeColor="Maroon">Category</asp:label><asp:label id="Label67" style="Z-INDEX: 141; LEFT: 288px; POSITION: absolute; TOP: 528px" runat="server"
				ForeColor="Maroon">Caste</asp:label><asp:textbox id="txtaocc" style="Z-INDEX: 142; LEFT: 152px; POSITION: absolute; TOP: 528px" runat="server"
				Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtaname" style="Z-INDEX: 143; LEFT: 384px; POSITION: absolute; TOP: 496px"
				runat="server" Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtano" style="Z-INDEX: 144; LEFT: 152px; POSITION: absolute; TOP: 496px" runat="server"
				Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtcstate" style="Z-INDEX: 145; LEFT: 504px; POSITION: absolute; TOP: 408px"
				runat="server" Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtccity" style="Z-INDEX: 146; LEFT: 280px; POSITION: absolute; TOP: 408px"
				runat="server" Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtcarea" style="Z-INDEX: 147; LEFT: 504px; POSITION: absolute; TOP: 376px"
				runat="server" Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtcvil" style="Z-INDEX: 148; LEFT: 280px; POSITION: absolute; TOP: 376px" runat="server"
				Width="108px" ForeColor="Maroon"></asp:textbox><asp:label id="Label33" style="Z-INDEX: 149; LEFT: 64px; POSITION: absolute; TOP: 448px" runat="server"
				ForeColor="Black" Font-Bold="True">Accused Person Details :</asp:label><asp:label id="Label65" style="Z-INDEX: 150; LEFT: 72px; POSITION: absolute; TOP: 528px" runat="server"
				ForeColor="Maroon">Occupation</asp:label><asp:label id="Label64" style="Z-INDEX: 151; LEFT: 496px; POSITION: absolute; TOP: 496px" runat="server"
				ForeColor="Maroon">Father's Name</asp:label><asp:label id="Label63" style="Z-INDEX: 152; LEFT: 288px; POSITION: absolute; TOP: 496px" runat="server"
				ForeColor="Maroon">Name</asp:label><asp:label id="Label62" style="Z-INDEX: 153; LEFT: 72px; POSITION: absolute; TOP: 496px" runat="server"
				ForeColor="Maroon">Serial No:</asp:label><asp:label id="Label60" style="Z-INDEX: 154; LEFT: 408px; POSITION: absolute; TOP: 408px" runat="server"
				ForeColor="Maroon">State</asp:label><asp:label id="Label59" style="Z-INDEX: 155; LEFT: 192px; POSITION: absolute; TOP: 408px" runat="server"
				ForeColor="Maroon">City/Dist</asp:label><asp:label id="Label58" style="Z-INDEX: 156; LEFT: 408px; POSITION: absolute; TOP: 376px" runat="server"
				ForeColor="Maroon">Area/Mondal</asp:label><asp:label id="Label57" style="Z-INDEX: 157; LEFT: 192px; POSITION: absolute; TOP: 376px" runat="server"
				ForeColor="Maroon">Street/Village</asp:label><asp:textbox id="txtstate" style="Z-INDEX: 158; LEFT: 496px; POSITION: absolute; TOP: 296px"
				runat="server" Width="109" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtdis" style="Z-INDEX: 159; LEFT: 312px; POSITION: absolute; TOP: 296px" runat="server"
				Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtmon" style="Z-INDEX: 160; LEFT: 128px; POSITION: absolute; TOP: 288px" runat="server"
				Width="109" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtvil" style="Z-INDEX: 161; LEFT: 496px; POSITION: absolute; TOP: 264px" runat="server"
				Width="109" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtstr" style="Z-INDEX: 162; LEFT: 312px; POSITION: absolute; TOP: 264px" runat="server"
				Width="108px" ForeColor="Maroon"></asp:textbox><asp:textbox id="txtplace" style="Z-INDEX: 163; LEFT: 128px; POSITION: absolute; TOP: 264px"
				runat="server" Width="109" ForeColor="Maroon"></asp:textbox><asp:label id="Label44" style="Z-INDEX: 164; LEFT: 424px; POSITION: absolute; TOP: 296px" runat="server"
				Width="56px" ForeColor="Maroon">State</asp:label><asp:label id="Label43" style="Z-INDEX: 165; LEFT: 240px; POSITION: absolute; TOP: 296px" runat="server"
				Width="56px" ForeColor="Maroon">Distrct</asp:label><asp:label id="Label42" style="Z-INDEX: 166; LEFT: 64px; POSITION: absolute; TOP: 288px" runat="server"
				Width="48" ForeColor="Maroon">Mandal</asp:label><asp:label id="Label41" style="Z-INDEX: 167; LEFT: 424px; POSITION: absolute; TOP: 264px" runat="server"
				Width="56px" ForeColor="Maroon">Village</asp:label><asp:label id="Label40" style="Z-INDEX: 168; LEFT: 240px; POSITION: absolute; TOP: 264px" runat="server"
				Width="56px" ForeColor="Maroon">Street</asp:label><asp:label id="Label39" style="Z-INDEX: 169; LEFT: 64px; POSITION: absolute; TOP: 264px" runat="server"
				Width="48px" ForeColor="Maroon">Place</asp:label><asp:textbox id="txtcname" style="Z-INDEX: 170; LEFT: 280px; POSITION: absolute; TOP: 336px"
				runat="server" Width="176px" ForeColor="Maroon"></asp:textbox><asp:label id="Label31" style="Z-INDEX: 171; LEFT: 64px; POSITION: absolute; TOP: 336px" runat="server"
				ForeColor="Maroon">Name of The Court if Surrendered</asp:label><asp:label id="Label11" style="Z-INDEX: 172; LEFT: 64px; POSITION: absolute; TOP: 176px" runat="server"
				ForeColor="Black" Font-Bold="True">Place, date&Time of arrest/surrenderd to Court</asp:label><asp:textbox id="txtdst" style="Z-INDEX: 173; LEFT: 376px; POSITION: absolute; TOP: 128px" runat="server"
				Width="152px"></asp:textbox><asp:textbox id="txtps" style="Z-INDEX: 174; LEFT: 160px; POSITION: absolute; TOP: 128px" runat="server"></asp:textbox><asp:label id="Label6" style="Z-INDEX: 175; LEFT: 64px; POSITION: absolute; TOP: 128px" runat="server"
				ForeColor="Maroon"> Police Station</asp:label><asp:label id="Label5" style="Z-INDEX: 176; LEFT: 336px; POSITION: absolute; TOP: 128px" runat="server"
				Height="16px" Width="32px" ForeColor="Maroon"> Dist</asp:label><asp:label id="Label3" style="Z-INDEX: 177; LEFT: 64px; POSITION: absolute; TOP: 224px" runat="server"
				Font-Bold="True" ForeColor="Maroon">Date & time of Crime</asp:label>
			<asp:Label id="lblfingprev" style="Z-INDEX: 178; LEFT: 64px; POSITION: absolute; TOP: 944px"
				runat="server" Width="88px" ForeColor="#FF8080"></asp:Label>
			<asp:Label id="lblcurrenpos" style="Z-INDEX: 179; LEFT: 368px; POSITION: absolute; TOP: 1016px"
				runat="server" Width="417px" ForeColor="#FF8080"></asp:Label>
            <asp:Label ID="lnoinfo" runat="server" Font-Bold="True" Font-Size="X-Large" Style="left: 55px;
                position: relative; top: 41px; z-index: 180;" Text="No Arrest/Surrenderd  information" Visible="False"></asp:Label>
            <asp:Button ID="Button1" runat="server" BackColor="#E0E0E0" BorderColor="#404040"
                BorderStyle="Outset" BorderWidth="5px" Height="32px" OnClick="Button1_Click"
                Style="z-index: 183; left: 217px; position: absolute; top: 1009px" TabIndex="9"
                Text="Cancel" Width="128px" />
        </form>
	</body>
</HTML>
