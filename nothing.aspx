<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nothing.aspx.cs" Inherits="nothing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Pharmacy Care</title>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
  <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
  <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
  <script type="text/javascript" src="js/cufon-yui.js"></script>
  <script type="text/javascript" src="js/cufon-replace.js"></script>  
<script type="text/javascript" src="js/Myriad_Pro_600.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_700.font.js"></script>
  <!--[if lt IE 7]><script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script><![endif]-->
  <!--[if lt IE 9]><script type="text/javascript" src="js/html5.js"></script><![endif]--> 
  
</head>

<body runat="server" id="page6" >

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
                                <h2>Acid Reflux / Ulcers</h2>
                                <h4>About </h4>
                                
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                           ConnectionString="<%$ ConnectionStrings:pharmacy1ConnectionString %>" 
                                           DeleteCommand="DELETE FROM [Enquery] WHERE [Email] = @Email" 
                                           InsertCommand="INSERT INTO [Enquery] ([Name], [telephon], [fax], [Enquiry], [Email]) VALUES (@Name, @telephon, @fax, @Enquiry, @Email)" 
                                           SelectCommand="SELECT [Name], [telephon], [fax], [Enquiry], [Email] FROM [Enquery]" 
                                           UpdateCommand="UPDATE [Enquery] SET [Name] = @Name, [telephon] = @telephon, [fax] = @fax, [Enquiry] = @Enquiry WHERE [Email] = @Email">
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
                                           <UpdateParameters>
                                               <asp:Parameter Name="Name" Type="String" />
                                               <asp:Parameter Name="telephon" Type="Int32" />
                                               <asp:Parameter Name="fax" Type="Int32" />
                                               <asp:Parameter Name="Enquiry" Type="String" />
                                               <asp:Parameter Name="Email" Type="String" />
                                           </UpdateParameters>
                                       </asp:SqlDataSource>
                                   <asp:DetailsView ID="DetailsView1" runat="server" Width="125px" 
                                    Height="50px" AutoGenerateInsertButton="True" AutoGenerateRows="False" 
                                    DataKeyNames="Email" DataSourceID="SqlDataSource1">
                                       <Fields>
                                           <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                           <asp:BoundField DataField="telephon" HeaderText="telephon" 
                                               SortExpression="telephon" />
                                           <asp:BoundField DataField="fax" HeaderText="fax" SortExpression="fax" />
                                           <asp:BoundField DataField="Enquiry" HeaderText="Enquiry" 
                                               SortExpression="Enquiry" />
                                           <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                                               SortExpression="Email" />
                                       </Fields>
                                </asp:DetailsView>

                                <p>uctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magnu.</p>
                                 
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
                            <li><a href="index.aspx">Home</a></li>
                            <li><a href="index-1.aspx">About</a></li>
                            <li><a href="index-2.aspx">Doctors</a></li>
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
    
  <script type="text/javascript">      Cufon.now(); </script>
  </form>
</body>
</html>

