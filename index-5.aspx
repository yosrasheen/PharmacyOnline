<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index-5.aspx.cs" Inherits="index_5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharmacy Care</title>
    <meta charset="utf-8">
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
                        <li><a href="index-3.aspx">drugs</a></li>
                        <li><a href="index-4.aspx">Useful info </a></li>
                        <li><a href="index-5.aspx" class="current">Enquiry</a></li>
                        <li><a href="index-6.aspx">contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>    
    </header>
        <div class="indent-3">
            <div class="main">
                <div id="content">
                    <div class="container">
                        <div class="col1">
                            <div class="box1">
                                <div class="indent-box1">
                                    <h2>
                                        Enquiry
                                    </h2>
                                    <p>
                                        <strong>Please fill-in your contact details
                                            <br>
                                            to the form below.</strong></p>
                                    <p>
                                        If you have any questions about any diseases or drugs, please dont hastate to send
                                        to us. We&#39;ll gladly respond ASAP.</p>
                                </div>
                                <asp:DetailsView ID="DetailsView1" runat="server" 
                                    AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert"
                                    Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
                                    <Fields>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                Enter Name:
                                                <div class="rowElem2">
                                                    <asp:TextBox ID="txtName" runat="server" CssClass="input" Text='<%# Bind("Name") %>'></asp:TextBox></div>
                                                Enter Telephone:
                                                <div class="rowElem2">
                                                    <asp:TextBox ID="txtTel" runat="server" CssClass="input" Text='<%# Bind("telephone") %>'></asp:TextBox></div>
                                                Enter Fax:
                                                <div class="rowElem2">
                                                    <asp:TextBox ID="txtFax" runat="server" CssClass="input" Text='<%# Bind("fax") %>'></asp:TextBox></div>
                                                Enter E-mail:
                                                <div class="rowElem2">
                                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="input" Text='<%# Bind("Email") %>'></asp:TextBox></div>
                                                Enter Enquiry:
                                                <div class="rowElem3">
                                                    <asp:TextBox ID="txtEnquiry" runat="server" CssClass="textarea" TextMode="MultiLine"
                                                        Text='<%# Bind("Enquiry") %>'></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="containerMMM">
                                                    <div class="frightMMMM">
                                                        <asp:LinkButton ID="lnkInsert" runat="server" CssClass="button-3" CommandName="Insert">Insert</asp:LinkButton>
                                                        <div class="indent-2">
                                                            <asp:LinkButton ID="lnkCancel" runat="server" CssClass="button-3" CommandName="Cancel">Cancel</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Fields>
                                    <InsertRowStyle CssClass="button-3" />
                                </asp:DetailsView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pharmacy1ConnectionString %>"
                                    DeleteCommand="DELETE FROM [Enquery] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Enquery] ([Name], [telephon], [fax], [Enquiry], [Email]) VALUES (@Name, @telephon, @fax, @Enquiry, @Email)"
                                    SelectCommand="SELECT [ID] FROM [Enquery]">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Email" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Name" Type="String" />
                                        <asp:Parameter Name="telephon" Type="Int32" />
                                        <asp:Parameter Name="fax" Type="Int32" />
                                        <asp:Parameter Name="Enquiry" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                    </InsertParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col2">
                    <div>
                        <asp:TextBox ID="SearchTB" runat="server" Height="15px" Width="300px" BackColor="White"
                            BorderColor="#333399" BorderWidth="1px" ForeColor="#99CCFF">Search for Drug, Diseas</asp:TextBox>
                        <asp:Button ID="SearchB" runat="server" Text="Search" BackColor="#333399" BorderColor="#333399"
                            ForeColor="White"></asp:Button>
                        <br />
                        <asp:RadioButton ID="DrugRB" runat="server" Checked="True"></asp:RadioButton>
                        <asp:Label ID="Label1" runat="server" Text="Search for drugs"></asp:Label>&nbsp;&nbsp;
                        <asp:RadioButton ID="DiseaseRB" runat="server" AutoPostBack="True" CausesValidation="True">
                        </asp:RadioButton>
                        <asp:Label ID="Label2" runat="server" Text="Diseases"></asp:Label>
                    </div>
                    <br />
                    <div class="box2">
                        <div class="indent-box">
                            <div class="container">
                                <h2>
                                    Recent Articles</h2>
                                <div class="tail1">
                                    <div class="container">
                                        <img alt="" src="images/6page_img1.jpg" class="img-left" />
                                        <h4>
                                            Smoking and your heart</h4>
                                        <p>
                                            In the study, individuals who gradually quit smoking saw improvements in risk factors
                                            for heart disease, including lower cholesterol and carbon monoxide levels.
                                        </p>
                                        <a href="MoreSmoke.aspx" class="button-2">More</a>
                                        <br class="clear" />
                                    </div>
                                </div>
                                <div class="tail1">
                                    <h4>
                                        Heart attack rates drop in the area</h4>
                                    <p>
                                        Heart attack victims have a dramatically better chance of recovery in some Bay Area
                                        hospitals than others in the region and the state, according to a study released
                                        yesterday by state authorities.</p>
                                    <div class="container">
                                        <a href="MoreHeart.aspx" class="button-2">More</a></div>
                                </div>
                                <div class="container">
                                    <img alt="" src="images/6page_img2.jpg" class="img-left" />
                                    <h4>
                                        Stress linked to increased risk of
                                        <br>
                                        heart attack</h4>
                                    <p>
                                        Are stress and <a href="http://www.webmd.com/heart-disease/default.htm" onclick="return sl(this,'','embd-lnk');">
                                            heart disease</a> related? Does stress increase the risk of heart disease? Stress
                                        is a normal part of life.</p>
                                    <a href="MoreStress.aspx" class="button-2">More</a>
                                    <br class="clear" />
                                </div>
                                <div class="indent2">
                                    <span class="txt2">Page 2 of 4</span> &nbsp; &nbsp; <a href="#" class="num1">1</a><a
                                        href="#" class="num1 act">2</a><a href="#" class="num1">3</a><a href="#" class="num1">4</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <footer>      
        <div class="main">
            <div class="inside">
                <div class="container">
                    <div class="fright"><span>Pharmacy Care</span> &copy; 2011  &nbsp; &nbsp;<a href="index-7.aspx">Privacy Policy</a><br><!--{%FOOTER_LINK}--></div>  
                    <div class="fleft">
                        <ul>
                            <li><a href="index.aspx">Home</a></li>
                            <li><a href="index-1.aspx">About</a></li>
                            <li><a href="index-2.aspx">Doctor</a></li>
                            <li><a href="index-3.aspx">Drugs</a></li>
                            <li><a href="index-4.aspx">Useful info</a></li>
                            <li><a href="index-5.aspx" class="current">Enquiry</a></li>
                            <li><a href="index-6.aspx">Contact</a></li>
                        </ul>
                    </div>  
                </div>                
            </div>
        </div>
    </footer>
    </div>
    <!-- coded by Maria Bahammam -->
    <script type="text/javascript">        Cufon.now(); </script>
    </form>
</body>
</html>
