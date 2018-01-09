<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/cufon-replace.js"></script>
    <script type="text/javascript" src="js/Myriad_Pro_600.font.js"></script>
    <script type="text/javascript" src="js/Myriad_Pro_700.font.js"></script>
    <!--[if lt IE 7]><script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script><![endif]-->
    <!--[if lt IE 9]><script type="text/javascript" src="js/html5.js"></script><![endif]-->
    <style type="text/css">
        .style1
        {
            font-weight: normal;
        }
        .tblRegister
        {
            background-color: #E6E6E6;
        }
        .tblRegister td
        {
            padding: 5px;
        }
        input
        {
            border: 1px;
            border-style: solid;
            border-color: #a6a6e6;
            padding: 3px;
            border-style: solid;
            width: 141px;
            padding-left: 5px;
            padding-right: 5px;
            padding-top: 5px;
            padding-bottom: 2px;
        }
        .style2
        {
            width: 105px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="bg-main1">
        <header>
        <div class="main2">
            <h1><a href="index.aspx">Hatha</a></h1>
	    <div class="inside">
              <nav>
                    <ul class="sf-menu">
                        <li><a href="index.aspx">Home</a></li>
                        <li><a href="index-1.aspx">About</a></li>
                        <li><a href="index-2.aspx">Doctor</a></li>
                        <li><a href="index-3.aspx">Drugs</a></li>
                        <li><a href="index-4.aspx">Useful info </a></li>
                        <li><a href="index-5.aspx">Enquiry</a></li>
                        <li><a href="index-6.aspx">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>    
    </header>
        <div class="indent-3">
            <div class="main">
                <section id="content">
                <div class="container">
                    <div class="box2">
                        <div class="indent-box">
                            <div class="container">                                        
                                <h2></h2>
                                <asp:Panel ID="pnlMessage" runat="server" Visible="False">
                            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                        </asp:Panel>

                                <asp:Panel ID="pnlRegisteration" runat="server" Visible="true">
                      <table id="tblRegister" Class="tblRegister" border="0" cellpadding="2" cellspacing="1" 
                                     width="100%">
		        <tr>
		    		<td class="style1" style="background-color: #FFFFFF">&nbsp;</td>
		    	    <td  class="style3" colspan="4" style="background-color: #FFFFFF">
                        
                    </td>
		    	    
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">&nbsp;</td>
		    	    <td  class="style3" colspan="4">&nbsp;</td>
		    	    
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">First Name:</td>
		    	    <td  class="style3">
                        <asp:textbox id="txtFirstName" runat="server"  
                             ></asp:textbox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtFirstName" ErrorMessage="Enter First Name" 
                            ForeColor="Red" ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                    </td>
		    	    <td  class="style2">&nbsp;</td>
		    	    <td  class="style1">&nbsp;</td>
		    	    <td  class="style1" rowspan="12">
                        <table width="100%">
                        <tr>
                        <td>
                            <table style="width:100%;">
                                <tr>
                                    <td  class="style1">
                                        &nbsp;</td>
                                    <td  class="style1">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        Yes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        No&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td  class="style1">
                                        Insurance</td>
                                    <td  class="style1">
                        <asp:RadioButton ID="rbYes" runat="server" GroupName="Insurance" 
                                            oncheckedchanged="RadioButton1_CheckedChanged" AutoPostBack="True" 
                                BorderStyle="None" BorderWidth="0px" BackColor="#B9CCF0" />
                        <asp:RadioButton ID="rbNo" runat="server" Checked="True" 
                            GroupName="Insurance" AutoPostBack="True" 
                                oncheckedchanged="rbNo_CheckedChanged" BackColor="#FAABBB" BorderWidth="0px" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Panel ID="pnlInsurance" runat="server" Visible="False" BackColor="#D2D2FF" 
                                            BorderColor="#A6A6E6" BorderWidth="1px">
                            <table style="width:100%;">
                           
            <tr>
                <td class="style1">
                    Company&nbsp; Name</td>
                <td>
                    <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtCompanyName" ErrorMessage="Enter Company Name" 
                        ForeColor="Red" ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Address</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtAddress" ErrorMessage="Enter Address" ForeColor="Red" 
                        ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Telephone</td>
                <td>
                    <asp:TextBox ID="txtComanyTelephone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtComanyTelephone" ErrorMessage="Enter Company Telephone" 
                        ForeColor="Red" ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                   Start date</td>
                <td>
                    <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="txtStartDate" ErrorMessage="Enter Start Date" 
                        ForeColor="Red" ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtStartDate" CssClass="error" 
                        ErrorMessage="Enter correct Date dd/mm/yyyy" ForeColor="Red" 
                        ValidationExpression="\d{1,2}/\d{1,2}/\d{4}" ValidationGroup="g1"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    End date</td>
                <td>
                    <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="txtEndDate" ErrorMessage="Enter End Date" ForeColor="Red" 
                        ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtEndDate" CssClass="error" 
                        ErrorMessage="Enter correct Date dd/mm/yyyy" ForeColor="Red" 
                        ValidationExpression="\d{1,2}/\d{1,2}/\d{4}" ValidationGroup="g1"></asp:RegularExpressionValidator>
                </td>
            </tr>
            
            </table>

                            </asp:Panel></td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%">
                             <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
                             <tr>
		    		<td class="style1">
                        City		    		<td class="style4">
                        <asp:textbox id="txtCity" runat="server" Width="141px" 
                            CssClass="txtBox"></asp:textbox></td>
            </tr>
                             <tr>
		    	    <td class="style1">Street</td>
		    	    <td class="style3">
                        <asp:textbox id="txtStreet" runat="server" Width="141px" 
                            CssClass="txtBox"></asp:textbox></td>
            </tr>
                             <tr>
		    	    <td class="style1">
                        Zip</td>
		    	    <td class="style3">
                        <asp:textbox id="txtZip" runat="server" Width="141px" 
                            CssClass="txtBox"></asp:textbox></td>
            </tr>
                             <tr>
		    	    <td class="style1">
                        &nbsp;</td>
		    	    <td class="style3">
                        &nbsp;</td>
            </tr>
                             <tr>
		    	    <td class="style1">
                        Height</td>
		    	    <td class="style3">
                        <asp:TextBox ID="txtHeight" runat="server"></asp:TextBox>
                                 </td>
            </tr>
                             <tr>
		    	    <td class="style1">
                        Weight</td>
		    	    <td class="style3">
                        <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
                                 </td>
            </tr>
                            </table></td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        </tr>

                        <tr>
                        <td>
                            
                            
                            <asp:Button ID="Add" runat="server" Text="Update" ValidationGroup="g1" 
                                onclick="Add_Click" />
                            <asp:Button ID="Reset" runat="server" Text="Reset" onclick="Reset_Click" />
                            </td></tr>
                        </table>
                    </td>
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">Middle Name:</td>
		    		<td class="style4">
                        <asp:textbox id="txtMidleName" runat="server"></asp:textbox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtMidleName" ErrorMessage="Enter Middle Name" 
                            ForeColor="Red" ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                    </td>
		    		<td class="style2">
                        &nbsp;</td>
		    		<td class="style4">
                        &nbsp;</td>
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">Last Name:</td>
		    	    <td class="style3">
                        <asp:textbox id="txtLastName" runat="server" Width="141px" 
                            CssClass="txtBox"></asp:textbox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtLastName" ErrorMessage="Enter Last Name" ForeColor="Red" 
                            ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                    </td>
		    	    <td class="style2">&nbsp;</td>
		    	    <td class="style3">&nbsp;</td>
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">Date of Birth</td>
		    	    <td class="style3">
                        <asp:textbox id="txtBirthDate" runat="server" Width="141px" 
                            CssClass="txtBox"></asp:textbox>&nbsp;<br />
                        <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBirthDate" 
                            ErrorMessage="Enter Date Of Birth" ForeColor="Red" ValidationGroup="g1" 
                            CssClass="error"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtBirthDate" CssClass="error" 
                            ErrorMessage="Enter correct Date dd/mm/yyyy" ForeColor="Red" 
                            ValidationExpression="\d{1,2}/\d{1,2}/\d{4}" ValidationGroup="g1"></asp:RegularExpressionValidator>
                    </td>
		    	    <td class="style2">
                        &nbsp;</td>
		    	    <td class="style3">
                        &nbsp;</td>
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">Gender</td>
		    	    <td class="style3">&nbsp;
                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="DropDownList">
                            
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Femal">Femal</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="ddlGender" ErrorMessage="Select Gender" ForeColor="Red" 
                            ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                       </td>
		    	    <td class="style2">&nbsp;</td>
		    	    <td class="style3">&nbsp;</td>
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">Email</td>
		    	    <td class="style3"><asp:textbox id="txtEmail" runat="server" Width="141px"></asp:textbox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="Enter Email" ForeColor="Red" 
                            ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtEmail" CssClass="error" 
                            ErrorMessage="Enter correct Email" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ValidationGroup="g1"></asp:RegularExpressionValidator>
                    </td>
		    	    <td class="style2">&nbsp;</td>
		    	    <td class="style3">&nbsp;</td>
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">Confirm_Email</td>
		    	    <td class="style3"><asp:textbox id="txtConfirmEmail" runat="server" Width="141px"></asp:textbox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtConfirmEmail" ErrorMessage="Enter Confirm Email" 
                            ForeColor="Red" ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" 
                            CssClass="error" ErrorMessage="Confirm Email Error" ForeColor="Red"></asp:CompareValidator>
                    </td>
		    	    <td class="style2">&nbsp;</td>
		    	    <td class="style3">&nbsp;</td>
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">User Name</td>
		    	    <td class="style3">
                        <asp:TextBox ID="txtUserName" runat="server" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtUserName" ErrorMessage="Enter UserName" ForeColor="Red" 
                            ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                    </td>
		    	    <td class="style2">&nbsp;</td>
		    	    <td class="style3">&nbsp;</td>
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">Password</td>
		    	    <td class="style3">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red" 
                            ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                    </td>
		    	    <td class="style2">&nbsp;</td>
		    	    <td class="style3">&nbsp;</td>
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">Confirm-Password</td>
		    	    <td class="style3">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtConfirmPassword" ErrorMessage="Enter Confirm Password" 
                            ForeColor="Red" ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                            CssClass="error" ErrorMessage="Confirm Password Error" ForeColor="Red" 
                            ValidationGroup="g1"></asp:CompareValidator>
                    </td>
		    	    <td class="style2">&nbsp;</td>
		    	    <td class="style3">&nbsp;</td>
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">Telephone</td>
		    	    <td class="style3"><asp:textbox id="txtTelephone" runat="server" Width="141px"></asp:textbox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtTelephone" ErrorMessage="Enter Telephone" ForeColor="Red" 
                            ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                    </td>
		    	    <td class="style2">&nbsp;</td>
		    	    <td class="style3">&nbsp;</td>
		        </tr>
		        <tr>
		    		<td class="style1" style="background-color: #F0F0F0">Ssn</td>
		    	    <td class="style3"><asp:textbox id="txtSsn" runat="server" Width="141px" 
                            Enabled="False"></asp:textbox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtSsn" ErrorMessage="Enter Ssn" ForeColor="Red" 
                            ValidationGroup="g1" CssClass="error"></asp:RequiredFieldValidator>
                    </td>
		    	    <td class="style2">&nbsp;</td>
		    	    <td class="style3">&nbsp;</td>
		        </tr>
		        <tr>
		    		<td align="center" style="background-color: #F0F0F0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
		    		<td align="center">&nbsp;</td>
		    		<td align="center" class="style2">&nbsp;</td>
		    		<td align="center">&nbsp;</td>
		    		<td align="center">&nbsp;</td>
		        </tr>
			</table>
                        </asp:Panel>
 
                       
                                
                                
                                

                                

                                
                       
                                
                                
                                <a href="mailto:privacy@pharmcare.com">privacy@pharmacycare.org</a>
                             </div>
                        </div>
                    </div>
                </div>
            </section>
            </div>
        </div>
        <footer>      
        <div class="main">
            <div class="inside">
                <div class="container">
                    <div class="fright"><span>Pharmacy Carey; 2011  &nbsp; &nbsp;<a href="index-7.aspx">Privacy Policy</a><br><!--{%FOOTER_LINK}--></div>  
                    <div class="fleft">
                        <ul>
                            <li><a href="index.aspx" class="current">Home</a></li>
                            <li><a href="index-1.aspx">About</a></li>
                            <li><a href="index-2.aspx">Doctor</a></li>
                            <li><a href="index-3.aspx">Drugs</a></li>
                            <li><a href="index-4.aspx">Useful info</a></li>
                            <li><a href="index-5.aspx">Enquiry</a></li>
                            <li><a href="index-6.aspx">Contact</a></li>
                            
                        </ul>
                    </div>  
                </div>                
            </div>
        </div>
    </footer>
        <!-- coded by Maria Bahammam -->
    </div>
    </form>
</body>
</html>
