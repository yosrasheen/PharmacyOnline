<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index-4.aspx.cs" Inherits="index_4" %>

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

<script type="text/javascript">
    $(document).ready(function () {
        //accordion begin
        $("#accordion .indent-link_1").eq(1).addClass("active");
        $("#accordion .info").eq(1).show();

        $("#accordion .indent-link_1").click(function () {
            $(this).next("#accordion .info").slideToggle("slow")
			.siblings("#accordion .info:visible").slideUp("slow");
            $(this).toggleClass("active");
            $(this).siblings("#accordion .indent-link_1").removeClass("active");
            return false;
        });
    });
</script>
  <!--[if lt IE 7]><script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script><![endif]-->
  <!--[if lt IE 9]><script type="text/javascript" src="js/html5.js"></script><![endif]--> 
  

</head>


   <body runat="server" id="page5" >
    <form id="form1" runat="server">
   
   
  


<div class="bg-main1">
    <header>
        <div class="main2">
            <h1><a href="index.html">Hatha</a></h1>
<div class="inside">
                <nav>
                    <ul class="sf-menu">
                        <li><a href="index.aspx">Home</a></li>
                        <li><a href="index-1.aspx">About</a></li>
                        <li><a href="index-2.aspx">Doctor</a></li>
                        <li><a href="index-3.aspx">drugs</a></li>
                        <li><a href="index-4.aspx" class="current">Useful info </a></li>
                        <li><a href="index-5.aspx">Enquiry</a></li>
                        <li><a href="index-6.aspx">contact</a></li>
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
                        <div class="box">
                            <div class="indent-box3">
                                <h2>Downloads</h2>
                                <span class="txt1">1. Our forms</span>
                                <div class="p1">
                                    <ul class="list4">
                                        <li><a href="#">Demographics</a> - are the characteristics of a
                                            <a href="http://en.wikipedia.org/wiki/Human" title="Human">human</a>
                                            <a href="http://en.wikipedia.org/wiki/Population" title="Population">population</a>. 
                                            These types of data are used widely in
                                            <a href="http://en.wikipedia.org/wiki/Sociology" title="Sociology">sociology</a>,
                                            <a href="http://en.wikipedia.org/wiki/Public_policy" title="Public policy">
                                            public policy</a>,</li>
                                        <li><a href="#">Records release</a> - Medical information is routinely exchanged 
                                            between healthcare professionals as deemed necessary by your </li>
                                        <li><a href="#">Consent to use or disclose
                                        medical information</a> - I authorize the Asthma Allergy Centre to</li>                          
                                    </ul>
                                </div>
                                <span class="txt1">2. Privacy protection</span>
                                <div class="p1">
                                    <ul class="list4">
                                         <li><a href="#">Identity theft affidavit</a> - <span dir="ltr"><em>Identity Theft</em> 
                                             Victim&#39;s Complaint and <em>Affidavit</em>. A voluntary form for </span></li>
                                        <li><a href="#">Fighting Back Against ID Theft</a>  - "ID Theft: When Bad Things Happen to Your Good Name")..</li>                                    
                                    </ul>
                                </div>                                    
                                <a href="#"><img alt="" src="images/5page_img1.png" /></a><br>                     
                            </div>
                        </div>                    
                    </div>
                    <div class="col2">
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
                        <div class="box3">
                          
                            <div class="indent-box">
                                <h2 class="h2">Patient Resources</h2>
                                 <div id="accordion">
                                	<div class="block">
                                    	<div class="indent-block">
                                            <div class="container">
                                                <h4><strong>Affiliated hospitals</strong></h4>
                                                <span class="txt-4"> Good Hospitals we recommend.</span>
                                            </div>
                                            <div class="indent-link_1"><a href="#" class="link_1"><span>View all info</span><em>Hide info</em></a></div>
                                            <div class="info">
                                                <div class="container">
                                                	<div class="col-1">
                                                    	<a href="#"><img alt="" src="images/5page_img2.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Medical Clinic</strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img3.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Diagnose </strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img4.jpg" class="img-indent1" /></a><br>
                                                        <strong>Hospital online</strong>
                                                    </div>
                                                    <div class="col-1">                                                    	
                                                    	<a href="#"><img alt="" src="images/5page_img5.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Medical Clinic</strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img6.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Clinic Online</strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img7.jpg" class="img-indent1" /></a><br>
                                                        <strong>Hospital online</strong>
                                                    </div>
                                                    <div class="col-2">                                                    	
                                                    	<a href="#"><img alt="" src="images/5page_img8.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Diagnose</strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img9.jpg" class="img-indent1" /></a><br>
                                                        <strong>Clinic Online</strong>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="block1">
                                    	<div class="indent-block">
                                            <div class="container">
                                                <h4><strong>Websites</strong></h4>
                                                <span class="txt-4">Great Websites we recommend.</span>
                                            </div>
                                            <div class="indent-link_1"><a href="#" class="link_1"><span>View all info</span><em>Hide info</em></a></div>
                                            <div class="info">
                                                <div class="container">
                                                	<div class="col-1">
                                                    	<a href="#"><img alt="" src="images/5page_img2.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Clinic Online Websites  </strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img3.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Diagnose Websites </strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img4.jpg" class="img-indent1" /></a><br>
                                                        <strong>Hospital online Websites</strong>
                                                    </div>
                                                    <div class="col-1">                                                    	
                                                    	<a href="#"><img alt="" src="images/5page_img5.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Hospital Online Websites</strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img6.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Clinic Online Webstes</strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img7.jpg" class="img-indent1" /></a><br>
                                                        <strong>Clinic Online Websites</strong>
                                                    </div>
                                                    <div class="col-2">                                                    	
                                                    	<a href="#"><img alt="" src="images/5page_img8.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Medical Clinic Websites</strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img9.jpg" class="img-indent1" /></a><br>
                                                        <strong>Hospital online Website</strong>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="block">
                                    	<div class="indent-block">
                                            <div class="container">
                                                <h4><strong>Accreditations and certifications</strong></h4>
                                                <span class="txt-4">Others.</span>
                                            </div>
                                            <div class="indent-link_1"><a href="#" class="link_1"><span>View all info</span><em>Hide info</em></a></div>
                                            <div class="info">
                                                <div class="container">
                                                	<div class="col-1">
                                                    	<a href="#"><img alt="" src="images/5page_img2.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Vitamed </strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img3.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>CardiNorm </strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img4.jpg" class="img-indent1" /></a><br>
                                                        <strong>MedPortal </strong>
                                                    </div>
                                                    <div class="col-1">                                                    	
                                                    	<a href="#"><img alt="" src="images/5page_img5.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>Drug*Store </strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img6.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>ProClinigue</strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img7.jpg" class="img-indent1" /></a><br>
                                                        <strong>Ambulance </strong>
                                                    </div>
                                                    <div class="col-2">                                                    	
                                                    	<a href="#"><img alt="" src="images/5page_img8.jpg" class="img-indent1" /></a><br>
                                                        <p><strong>MedEQ </strong></p>
                                                    	<a href="#"><img alt="" src="images/5page_img9.jpg" class="img-indent1" /></a><br>
                                                        <strong>Pacomed </strong>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br class="clear" /> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <footer>      
        <div class="main1">
            <div class="inside">
                <div class="container">
                    <div class="fright"><span>Pharmacy Care</span> &copy; 2011  &nbsp; &nbsp;<a href="index-7.aspx">Privacy Policy</a><br><!--{%FOOTER_LINK}--></div>  
                    <div class="fleft">
                        <ul>
                            <li><a href="index.aspx">Home</a></li>
                            <li><a href="index-1.aspx">About</a></li>
                            <li><a href="index-2.aspx">Doctor</a></li>
                            <li><a href="index-3.aspx">Drugs</a></li>
                            <li><a href="index-4.aspx" class="current">Useful info</a></li>
                            <li><a href="index-5.aspx">Enquiry</a></li>
                            <li><a href="index-6.aspx">Contact</a></li>
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
