<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index-6.aspx.cs" Inherits="index_6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharmacy Care</title>
    <meta charset="utf-8">
  <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
  <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
  <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
  <script type="text/javascript" src="js/cufon-yui.js"></script>
  <script type="text/javascript" src="js/cufon-replace.js"></script>  
<script type="text/javascript" src="js/Myriad_Pro_600.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_700.font.js"></script>

<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;hl=en&amp;sensor=true&amp;key=ABQIAAAAWCGzSMrk7YDL2KSdECDFthRCU6CW1wRB4NQsX5PSi053h5zzZhQIZ5ivn4VAQx53xyYuNrvkOmgO1w" type="text/javascript"></script>
<script src="js/jquery.googlemaps1.01.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#map_canvas').googleMaps({
            latitude: 40.68221,
            longitude: -73.971212,
            markers: {
                latitude: 40.68221,
                longitude: -73.971212
            }
        });
    }); 
  </script>
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
                        <li><a href="index-5.aspx">Enquiry</a></li>
                        <li><a href="index-6.aspx" class="current">contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>    
    </header>
    <div class="indent-3">
        <div class="main">
            <section id="content">
                <div class="container">
                    <div class="col1">
                        <div class="box1">
                            <div class="indent-box1">
                                <h2>How to Find Us  </h2>
                                <div id="map_canvas"></div>
                                <p><strong>Our location in Riyadh city K.S.A.</strong></p>
                                This is google map , show where is our office in Olya main street Riyadh City K.S.A 
                            </div>
                        </div>
                    </div>
                    <div>
                       <asp:TextBox ID="SearchTB" runat="server" Height="15px" Width="300px" 
                         BackColor="White" BorderColor="#333399" BorderWidth="1px" 
                         ForeColor="#99CCFF" >Search for Drug, Diseas</asp:TextBox>
                       <asp:Button ID="SearchB" runat="server" Text="Search" BackColor="#333399" 
                         BorderColor="#333399" ForeColor="White"></asp:Button> <br/>
                      <asp:RadioButton ID="DrugRB" runat="server" Checked="True" GroupName="Radios"></asp:RadioButton> 
                      <asp:Label ID="Label1" runat="server" Text="Search for drugs"></asp:Label>&nbsp;&nbsp;
                      <asp:RadioButton ID="DiseaseRB" runat="server" AutoPostBack="True" 
                            CausesValidation="True" GroupName="Radios"></asp:RadioButton>
                      <asp:Label ID="Label2" runat="server" Text="Diseases"></asp:Label>
                           </div><br/>
                    <div class="col2">
                      
                        <div class="box3">
                         
                            <div class="indent-box">
                                <div class="container">                                        
                                    <h2 class="h2">Contact Form</h2>
                                    <form action="" id="form"><fieldset>
                                       <div class="rowElem"><input type="text" value="Name:" onBlur="if(this.value=='') this.value='Name:'" onFocus="if(this.value =='Name:' ) this.value=''"  /></div>
                                       <div class="rowElem"><input type="Email" value="E-mail:" onBlur="if(this.value=='') this.value='E-mail:'" onFocus="if(this.value =='E-mail:' ) this.value=''"  /></div>
                                       <div class="rowElem"><input type="text" value="Phone:" onBlur="if(this.value=='') this.value='Phone:'" onFocus="if(this.value =='Phone:' ) this.value=''"  /></div>
                                       <div class="rowElem1"><textarea rows="40" cols="30" onBlur="if(this.value=='') this.value='Message:'" onFocus="if(this.value =='Message:' ) this.value=''" >Message:</textarea></div>
                                        <div class="container">
                                           <div class="fright">
                                               <a href="#" class="button-2" onClick="document.getElementById('form').submit()"> Send Message</a>
                                           </div>                                                
                                        </div>
                                    </fieldset></form>                                    
                                 </div>
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
                            <li><a href="index-2.aspx">Doctor</a></li>
                            <li><a href="index-3.aspx">Drugs</a></li>
                            <li><a href="index-4.aspx">Useful info</a></li>
                            <li><a href="index-5.aspx">Enquiry</a></li>
                            <li><a href="index-6.aspx" class="current">Contact</a></li>
                        </ul>
                    </div>  
                </div>                
            </div>
        </div>
    </footer>
</div>
    <!-- coded by Maria Bahammam -->
  <script type="text/javascript">      Cufon.now(); </script>
   </form>
</body>
</html>
