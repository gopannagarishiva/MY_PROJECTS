<%@ Page language="c#" Inherits="WebApplication4.WebForm14" CodeFile="arrest_surrender_form.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm14</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../Images/8.JPG">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 100; LEFT: 216px; POSITION: absolute; TOP: 16px" runat="server"
				Width="320px" Height="16px" Font-Size="X-Large" Font-Italic="True" Font-Bold="True" ForeColor="Maroon"> Arrest/Surrenderd form</asp:label>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 101; LEFT: 624px; POSITION: absolute; TOP: 808px"
				runat="server" Width="132px" ControlToValidate="rb2" ErrorMessage="*Select one option"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 102; LEFT: 80px; POSITION: absolute; TOP: 904px"
				runat="server" ControlToValidate="rb1" ErrorMessage="*Select one option"></asp:RequiredFieldValidator>
			<asp:label id="Label7" style="Z-INDEX: 103; LEFT: 64px; POSITION: absolute; TOP: 320px" runat="server"
				ForeColor="Black" Font-Bold="True" Width="164px">Place of Surrendered</asp:label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtaage"
                ErrorMessage="Enter Valid age" Style="left: 376px; position: relative; top: 450px; z-index: 104;"
                ValidationExpression="([0-9]{5,120})"></asp:RegularExpressionValidator>
            <asp:dropdownlist id="ddlps" style="Z-INDEX: 105; LEFT: 160px; POSITION: absolute; TOP: 128px" runat="server"
				Width="142px" ForeColor="#804000">
				<asp:ListItem Value="kukatpally">kukatpally</asp:ListItem>
				<asp:ListItem Value="S.R.nagar">S.R.nagar</asp:ListItem>
				<asp:ListItem Value="PanjaGutta">PanjaGutta</asp:ListItem>
				<asp:ListItem Value="Jubllihills">Jubllihills</asp:ListItem>
				<asp:ListItem Value="BanjaraHills">BanjaraHills</asp:ListItem>
				<asp:ListItem Value="Nampally">Nampally</asp:ListItem>
				<asp:ListItem Value="TukaramGate">TukaramGate</asp:ListItem>
				<asp:ListItem Value="Balanagar">Balanagar</asp:ListItem>
			</asp:dropdownlist><asp:dropdownlist id="ddldist" style="Z-INDEX: 106; LEFT: 384px; POSITION: absolute; TOP: 128px" tabIndex="1"
				runat="server" Width="88px" ForeColor="#804000">
				<asp:ListItem Value="Medak">Medak</asp:ListItem>
				<asp:ListItem Value="RangaReddy">RangaReddy</asp:ListItem>
				<asp:ListItem Value="Hyderabad">Hyderabad</asp:ListItem>
				<asp:ListItem Value="Adilabad">Adilabad</asp:ListItem>
				<asp:ListItem Value="Nizamabad">Nizamabad</asp:ListItem>
				<asp:ListItem Value="Nalgonda">Nalgonda</asp:ListItem>
				<asp:ListItem Value="Krishna">Krishna</asp:ListItem>
				<asp:ListItem Value="Guntur">Guntur</asp:ListItem>
			</asp:dropdownlist>
			<TABLE id="Table1" style="Z-INDEX: 185; LEFT: 80px; WIDTH: 496px; POSITION: absolute; TOP: 704px; HEIGHT: 75px"
				cellSpacing="1" cellPadding="1" width="496" border="1">
				<TR>
					<TD style="WIDTH: 127px"><asp:label id="Label2" runat="server" Width="128px" ForeColor="Maroon">Approximatly Height</asp:label></TD>
					<TD style="WIDTH: 153px"><asp:textbox id="txtaht" tabIndex="35" runat="server"></asp:textbox></TD>
					<TD style="WIDTH: 9px"><asp:label id="Label13" runat="server" Width="48px" ForeColor="Maroon">Colour</asp:label></TD>
					<TD><asp:textbox id="txtacol" tabIndex="36" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 127px; HEIGHT: 27px"><asp:label id="Label17" runat="server" Width="128px" ForeColor="Maroon">Body Language</asp:label></TD>
					<TD style="WIDTH: 153px; HEIGHT: 27px"><asp:textbox id="txtabl" tabIndex="37" runat="server"></asp:textbox></TD>
					<TD style="WIDTH: 9px; HEIGHT: 27px"><asp:label id="Label14" runat="server" Width="136px" ForeColor="Maroon">Way of Talking</asp:label></TD>
					<TD style="HEIGHT: 27px"><asp:textbox id="txtawt" tabIndex="38" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 127px"><asp:label id="Label19" runat="server" Width="136px" ForeColor="Maroon">Language of Criminals</asp:label></TD>
					<TD style="WIDTH: 153px"><asp:textbox id="txtalan" tabIndex="39" runat="server"></asp:textbox></TD>
					<TD style="WIDTH: 9px"><asp:label id="Label10" runat="server" Width="136px" ForeColor="Maroon">Identification Marks</asp:label></TD>
					<TD><asp:textbox id="txtaid" tabIndex="40" runat="server"></asp:textbox></TD>
				</TR>
			</TABLE>
			<asp:radiobuttonlist id="rb2" style="Z-INDEX: 107; LEFT: 376px; POSITION: absolute; TOP: 840px" tabIndex="42"
				runat="server" Width="384px" Height="108px" ForeColor="Maroon">
				<asp:ListItem Value="Arrested &amp; Farwarded">Arrested &amp; Farwarded</asp:ListItem>
				<asp:ListItem Value="Arrested &amp; Relesed on Bail">Arrested &amp; Relesed on Bail</asp:ListItem>
				<asp:ListItem Value="Arrested &amp; Relesed on Anticipatory Bail">Arrested &amp; Relesed on Anticipatory Bail</asp:ListItem>
				<asp:ListItem Value="Arrested &amp;Remanded to police custody">Arrested &amp;Remanded to police custody</asp:ListItem>
				<asp:ListItem Value="Surrendered in Court and Bailed out">Surrendered in Court and Bailed out</asp:ListItem>
				<asp:ListItem Value="Surrendered in Court and Sent to Judicial Custody">Surrendered in Court and Sent to Judicial Custody</asp:ListItem>
			</asp:radiobuttonlist><asp:radiobuttonlist id="rb1" style="Z-INDEX: 108; LEFT: 72px; POSITION: absolute; TOP: 848px" tabIndex="41"
				runat="server" Width="168px" ForeColor="Maroon">
				<asp:ListItem Value="Yes">Yes</asp:ListItem>
				<asp:ListItem Value="No">No</asp:ListItem>
			</asp:radiobuttonlist><asp:textbox id="txtfirno" style="Z-INDEX: 109; LEFT: 160px; POSITION: absolute; TOP: 88px" runat="server"
				ReadOnly="True" Width="96px" BackColor="#FFE0C0"></asp:textbox><asp:label id="lable1" style="Z-INDEX: 110; LEFT: 64px; POSITION: absolute; TOP: 88px" runat="server"
				Font-Bold="True">Fir No</asp:label><asp:dropdownlist id="ddlam_pm" style="Z-INDEX: 111; LEFT: 408px; POSITION: absolute; TOP: 208px"
				tabIndex="8" runat="server" Width="80px" ForeColor="#804000">
				<asp:ListItem Value="AM">AM</asp:ListItem>
				<asp:ListItem Value="PM">PM</asp:ListItem>
			</asp:dropdownlist><asp:label id="Label20" style="Z-INDEX: 112; LEFT: 384px; POSITION: absolute; TOP: 808px" runat="server"
				Font-Bold="True" ForeColor="Black">Accused Person's Current Position:</asp:label><asp:label id="Label9" style="Z-INDEX: 113; LEFT: 40px; POSITION: absolute; TOP: 808px" runat="server"
				Font-Bold="True" ForeColor="Black">Whether Accused Person's Finger Prints Taken  :</asp:label><asp:label id="Label16" style="Z-INDEX: 114; LEFT: 40px; POSITION: absolute; TOP: 672px" runat="server"
				Font-Bold="True" ForeColor="Black">Physical  Appearence of Accused Person  :</asp:label><asp:dropdownlist id="DropDownList7" style="Z-INDEX: 115; LEFT: 184px; POSITION: absolute; TOP: 208px"
				runat="server" Width="40px" ForeColor="#804000"></asp:dropdownlist><asp:dropdownlist id="DropDownList6" style="Z-INDEX: 116; LEFT: 144px; POSITION: absolute; TOP: 208px"
				runat="server" Width="40px" ForeColor="#804000"></asp:dropdownlist><asp:dropdownlist id="ddlmin" style="Z-INDEX: 117; LEFT: 368px; POSITION: absolute; TOP: 208px" tabIndex="7"
				runat="server" Width="40px" ForeColor="#804000"></asp:dropdownlist><asp:dropdownlist id="ddlhr" style="Z-INDEX: 118; LEFT: 328px; POSITION: absolute; TOP: 208px" tabIndex="6"
				runat="server" Width="40px" ForeColor="#804000"></asp:dropdownlist><asp:dropdownlist id="ddlyear" style="Z-INDEX: 119; LEFT: 224px; POSITION: absolute; TOP: 208px" tabIndex="5"
				runat="server" Width="56px" ForeColor="#804000"></asp:dropdownlist><asp:dropdownlist id="ddlday" style="Z-INDEX: 120; LEFT: 184px; POSITION: absolute; TOP: 208px" tabIndex="4"
				runat="server" Width="40px" ForeColor="#804000"></asp:dropdownlist><asp:dropdownlist id="ddlmonth" style="Z-INDEX: 121; LEFT: 144px; POSITION: absolute; TOP: 208px"
				tabIndex="3" runat="server" Width="40px" ForeColor="#804000"></asp:dropdownlist><asp:textbox id="txtaphno" style="Z-INDEX: 122; LEFT: 600px; POSITION: absolute; TOP: 624px"
				tabIndex="34" runat="server" Width="108px"></asp:textbox><asp:label id="Label78" style="Z-INDEX: 123; LEFT: 504px; POSITION: absolute; TOP: 624px" runat="server"
				ForeColor="Maroon">PHONE No</asp:label><asp:textbox id="txtastate" style="Z-INDEX: 124; LEFT: 392px; POSITION: absolute; TOP: 624px"
				tabIndex="33" runat="server" Width="108px"></asp:textbox><asp:label id="Label77" style="Z-INDEX: 125; LEFT: 296px; POSITION: absolute; TOP: 624px" runat="server"
				ForeColor="Maroon">State</asp:label><asp:textbox id="txtacity" style="Z-INDEX: 126; LEFT: 160px; POSITION: absolute; TOP: 624px"
				tabIndex="32" runat="server" Width="108px"></asp:textbox><asp:label id="Label30" style="Z-INDEX: 127; LEFT: 80px; POSITION: absolute; TOP: 624px" runat="server"
				ForeColor="Maroon">City/District</asp:label><asp:textbox id="txtaarea" style="Z-INDEX: 128; LEFT: 600px; POSITION: absolute; TOP: 592px"
				tabIndex="31" runat="server" Width="108px"></asp:textbox><asp:button id="Button2" style="Z-INDEX: 129; LEFT: 72px; POSITION: absolute; TOP: 976px" tabIndex="43"
				runat="server" Width="160px" Text="Save&amp; Continue" BackColor="#E0E0E0" BorderColor="Maroon" BorderStyle="Outset" BorderWidth="3px" onclick="Button2_Click"></asp:button><asp:textbox id="txtanat" style="Z-INDEX: 130; LEFT: 600px; POSITION: absolute; TOP: 560px" tabIndex="28"
				runat="server" Width="108px"></asp:textbox><asp:textbox id="txtastr" style="Z-INDEX: 131; LEFT: 392px; POSITION: absolute; TOP: 592px" tabIndex="30"
				runat="server" Width="108px"></asp:textbox><asp:textbox id="txthno" style="Z-INDEX: 132; LEFT: 160px; POSITION: absolute; TOP: 592px" tabIndex="29"
				runat="server" Width="108px"></asp:textbox><asp:label id="Label74" style="Z-INDEX: 133; LEFT: 504px; POSITION: absolute; TOP: 592px" runat="server"
				ForeColor="Maroon">Area/Mondal</asp:label><asp:label id="Label73" style="Z-INDEX: 134; LEFT: 296px; POSITION: absolute; TOP: 592px" runat="server"
				ForeColor="Maroon">Street/Village</asp:label><asp:label id="Label72" style="Z-INDEX: 135; LEFT: 80px; POSITION: absolute; TOP: 592px" runat="server"
				ForeColor="Maroon">H.No</asp:label><asp:textbox id="txtacat" style="Z-INDEX: 136; LEFT: 600px; POSITION: absolute; TOP: 528px" tabIndex="25"
				runat="server" Width="108px"></asp:textbox><asp:textbox id="txtaage" style="Z-INDEX: 137; LEFT: 392px; POSITION: absolute; TOP: 560px" tabIndex="27"
				runat="server" Width="108px"></asp:textbox><asp:textbox id="txtagender" style="Z-INDEX: 138; LEFT: 160px; POSITION: absolute; TOP: 560px"
				tabIndex="26" runat="server" Width="108px"></asp:textbox><asp:textbox id="txtafname" style="Z-INDEX: 139; LEFT: 600px; POSITION: absolute; TOP: 496px"
				tabIndex="22" runat="server" Width="108px"></asp:textbox><asp:textbox id="txtacaste" style="Z-INDEX: 140; LEFT: 392px; POSITION: absolute; TOP: 528px"
				tabIndex="24" runat="server" Width="108px"></asp:textbox><asp:label id="Label71" style="Z-INDEX: 141; LEFT: 504px; POSITION: absolute; TOP: 560px" runat="server"
				ForeColor="Maroon">nationality</asp:label><asp:label id="Label70" style="Z-INDEX: 142; LEFT: 296px; POSITION: absolute; TOP: 560px" runat="server"
				ForeColor="Maroon">Age</asp:label><asp:label id="Label69" style="Z-INDEX: 143; LEFT: 80px; POSITION: absolute; TOP: 560px" runat="server"
				ForeColor="Maroon">Gendor</asp:label><asp:label id="Label68" style="Z-INDEX: 144; LEFT: 504px; POSITION: absolute; TOP: 528px" runat="server"
				ForeColor="Maroon">Category</asp:label><asp:label id="Label67" style="Z-INDEX: 145; LEFT: 296px; POSITION: absolute; TOP: 528px" runat="server"
				ForeColor="Maroon">Caste</asp:label><asp:textbox id="txtaocc" style="Z-INDEX: 146; LEFT: 160px; POSITION: absolute; TOP: 528px" tabIndex="23"
				runat="server" Width="108px"></asp:textbox><asp:textbox id="txtaname" style="Z-INDEX: 147; LEFT: 392px; POSITION: absolute; TOP: 496px"
				tabIndex="21" runat="server" Width="108px"></asp:textbox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaname"
                ErrorMessage="Accused Person name is compulsory" Style="z-index: 186; left: 491px;
                position: absolute; top: 468px"></asp:RequiredFieldValidator>
            <asp:textbox id="txtano" style="Z-INDEX: 149; LEFT: 160px; POSITION: absolute; TOP: 496px" tabIndex="20"
				runat="server" Width="108px"></asp:textbox><asp:textbox id="txtcstate" style="Z-INDEX: 150; LEFT: 392px; POSITION: absolute; TOP: 416px"
				tabIndex="19" runat="server" Width="108px" ForeColor="#804000"></asp:textbox><asp:textbox id="txtccity" style="Z-INDEX: 151; LEFT: 168px; POSITION: absolute; TOP: 416px"
				tabIndex="18" runat="server" Width="108px" ForeColor="#804000"></asp:textbox><asp:textbox id="txtcarea" style="Z-INDEX: 152; LEFT: 392px; POSITION: absolute; TOP: 384px"
				tabIndex="17" runat="server" Width="108px" ForeColor="#804000"></asp:textbox><asp:textbox id="txtcvil" style="Z-INDEX: 153; LEFT: 168px; POSITION: absolute; TOP: 384px" tabIndex="16"
				runat="server" Width="108px" ForeColor="#804000"></asp:textbox><asp:label id="Label33" style="Z-INDEX: 154; LEFT: 64px; POSITION: absolute; TOP: 456px" runat="server"
				Font-Bold="True" ForeColor="Black">Accused Person Details :</asp:label><asp:label id="Label65" style="Z-INDEX: 155; LEFT: 80px; POSITION: absolute; TOP: 528px" runat="server"
				ForeColor="Maroon">Occupation</asp:label><asp:label id="Label64" style="Z-INDEX: 156; LEFT: 504px; POSITION: absolute; TOP: 496px" runat="server"
				ForeColor="Maroon">Father's Name</asp:label><asp:label id="Label63" style="Z-INDEX: 157; LEFT: 296px; POSITION: absolute; TOP: 496px" runat="server"
				ForeColor="Maroon">Name</asp:label><asp:label id="Label62" style="Z-INDEX: 158; LEFT: 80px; POSITION: absolute; TOP: 496px" runat="server"
				ForeColor="Maroon">Serial No:</asp:label><asp:label id="Label60" style="Z-INDEX: 159; LEFT: 296px; POSITION: absolute; TOP: 416px" runat="server"
				ForeColor="#804000">State</asp:label><asp:label id="Label59" style="Z-INDEX: 160; LEFT: 80px; POSITION: absolute; TOP: 416px" runat="server"
				ForeColor="#804000">City/Dist</asp:label><asp:label id="Label58" style="Z-INDEX: 161; LEFT: 296px; POSITION: absolute; TOP: 384px" runat="server"
				ForeColor="#804000">Area/Mondal</asp:label><asp:label id="Label57" style="Z-INDEX: 162; LEFT: 80px; POSITION: absolute; TOP: 384px" runat="server"
				ForeColor="#804000">Street/Village</asp:label><asp:textbox id="txtstate" style="Z-INDEX: 163; LEFT: 512px; POSITION: absolute; TOP: 280px"
				tabIndex="14" runat="server" Width="109" ForeColor="#804000"></asp:textbox><asp:textbox id="txtdis" style="Z-INDEX: 164; LEFT: 328px; POSITION: absolute; TOP: 280px" tabIndex="13"
				runat="server" Width="108px" ForeColor="#804000"></asp:textbox><asp:textbox id="txtmon" style="Z-INDEX: 165; LEFT: 144px; POSITION: absolute; TOP: 280px" tabIndex="12"
				runat="server" Width="109" ForeColor="#804000"></asp:textbox><asp:textbox id="txtvil" style="Z-INDEX: 166; LEFT: 512px; POSITION: absolute; TOP: 248px" tabIndex="11"
				runat="server" Width="109" ForeColor="#804000"></asp:textbox><asp:textbox id="txtstr" style="Z-INDEX: 167; LEFT: 328px; POSITION: absolute; TOP: 248px" tabIndex="10"
				runat="server" Width="108px" ForeColor="#804000"></asp:textbox><asp:textbox id="txtplace" style="Z-INDEX: 168; LEFT: 144px; POSITION: absolute; TOP: 248px"
				tabIndex="9" runat="server" Width="109" ForeColor="#804000"></asp:textbox><asp:label id="Label44" style="Z-INDEX: 169; LEFT: 440px; POSITION: absolute; TOP: 280px" runat="server"
				Width="56px" ForeColor="#804000">State</asp:label><asp:label id="Label43" style="Z-INDEX: 170; LEFT: 256px; POSITION: absolute; TOP: 280px" runat="server"
				Width="56px" ForeColor="#804000">Distrct</asp:label><asp:label id="Label42" style="Z-INDEX: 171; LEFT: 80px; POSITION: absolute; TOP: 280px" runat="server"
				Width="48" ForeColor="#804000">Mandal</asp:label><asp:label id="Label41" style="Z-INDEX: 172; LEFT: 440px; POSITION: absolute; TOP: 248px" runat="server"
				Width="56px" ForeColor="#804000">Village</asp:label><asp:label id="Label40" style="Z-INDEX: 173; LEFT: 256px; POSITION: absolute; TOP: 248px" runat="server"
				Width="56px" ForeColor="#804000">Street</asp:label><asp:label id="Label39" style="Z-INDEX: 174; LEFT: 80px; POSITION: absolute; TOP: 248px" runat="server"
				Width="48px" ForeColor="#804000">Place</asp:label><asp:textbox id="txtcname" style="Z-INDEX: 175; LEFT: 296px; POSITION: absolute; TOP: 352px"
				tabIndex="15" runat="server" Width="176px" ForeColor="#804000"></asp:textbox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcname"
                ErrorMessage="Court name compulsory" Style="z-index: 176; left: 498px; position: absolute;
                top: 352px"></asp:RequiredFieldValidator>
            <asp:label id="Label31" style="Z-INDEX: 177; LEFT: 80px; POSITION: absolute; TOP: 352px" runat="server"
				ForeColor="#804000">Name of The Court if Surrendered</asp:label><asp:label id="Label11" style="Z-INDEX: 178; LEFT: 64px; POSITION: absolute; TOP: 168px" runat="server"
				Font-Bold="True" ForeColor="Black"> Place, date&Time of arrest</asp:label><asp:label id="Label6" style="Z-INDEX: 179; LEFT: 64px; POSITION: absolute; TOP: 128px" runat="server"
				ForeColor="#804000"> Police Station</asp:label><asp:label id="Label5" style="Z-INDEX: 180; LEFT: 336px; POSITION: absolute; TOP: 128px" runat="server"
				Width="32px" Height="16px" ForeColor="#804000"> Dist</asp:label><asp:label id="Label4" style="Z-INDEX: 181; LEFT: 288px; POSITION: absolute; TOP: 208px" runat="server"
				Font-Bold="True" ForeColor="#804000">Time</asp:label><asp:label id="Label3" style="Z-INDEX: 182; LEFT: 80px; POSITION: absolute; TOP: 208px" runat="server"
				Font-Bold="True" ForeColor="#804000">Date</asp:label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtaphno"
                ErrorMessage="Enter correct phone number" Style="left: 603px; position: relative;
                top: 609px; z-index: 183;" ValidationExpression="([0-9]{8,15})"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtplace"
                ErrorMessage="Place of Arrest is compulsory" Style="z-index: 184; left: 640px;
                position: absolute; top: 260px"></asp:RequiredFieldValidator>
        </form>
	</body>
</HTML>
