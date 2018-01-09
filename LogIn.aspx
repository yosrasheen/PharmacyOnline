<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharmacy Care</title>
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
    </style>
</head>
<body runat="server" id="page6">
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

                                
                       
                                
                                
                                <table Height="238px" Width="835px" bgcolor="#D8D8D8">
                                <tr bgcolor="#DADADA"><tdbgcolor="#DADADA"><h2><strong> Sign In <strong></h2></td><td bgcolor="#DADADA"></td> 
                                </tr>
                                <tr bgcolor="White"><td><strong>EXISTING Customer
                                    </strong><br /><br/></td> <td> <strong>NEW Customer </strong><br /><br/> </td></tr><br/>
                                <tr><td bgcolor="White"> <asp:Label ID="EmailLabel" runat="server" Text="User Name" 
                                        BorderColor="#6666FF"></asp:Label><br/>
                                        <asp:TextBox ID="txtUserName" runat="server" BorderColor="#6666FF" 
                                        BackColor="#E1E1E1"></asp:TextBox><br/>
                                        <asp:Label ID="PassLabel" runat="server" Text="Password"></asp:Label><br/>
                                         <asp:TextBox ID="txtPassword" runat="server" BorderColor="Black" 
                                        BackColor="#E1E1E1" TextMode="Password" ></asp:TextBox><br/>
                                    <strong>
                                    <asp:Label ID="lblMessage" runat="server" CssClass="error" ForeColor="Red" 
                                        Text="not exist" Visible="False"></asp:Label>
                                    </strong>
                                        <br/>
                                    <asp:ImageButton ID="SigninBtn" runat="server" 
                                        ImageUrl="~/images/button_sign_in.gif" onclick="SigninBtn_Click"></asp:ImageButton>
                                        <br />
                                        <br/>
                                        <p><asp:HyperLink ID="HyperLink1" runat="server">OR Forgotten Password?</asp:HyperLink></p>
                                    </td>
                                     <td bgcolor="White">Welcome to Pharmacy Care<strong><br />
                                         <br />
                                         </strong><span class="style1">Registering only takes few moments, is free and
                                         <br />
                                         provides you with exclusive member offers and
                                         <br />
                                         promotions.<br/> <br/> <br/>
                                           <asp:HyperLink ID="RegisterLink" runat="server" 
                                             ImageUrl="~/images/RegButton.png" NavigateUrl="~/Registeration.aspx"></asp:HyperLink>
                                         </span></td>
                                </tr>
                                </table>

                                

                                
                       
                                
                                
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
                    <div class="fright"><span>Pharmacy Care</span> &copy; 2011  &nbsp; &nbsp;<a href="index-7.aspx">Privacy Policy</a><br><!--{%FOOTER_LINK}--></div>  
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
    <script type="text/javascript">        Cufon.now(); </script>
    </form>
</body>
</html>
