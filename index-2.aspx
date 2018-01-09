<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index-2.aspx.cs" Inherits="index_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

<body runat="server" id="page3">
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
                        <li><a href="index-2.aspx" class="current">Doctor</a></li>
                        <li><a href="index-3.aspx">drugs</a></li>
                        <li><a href="index-4.aspx">Useful info </a></li>
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
                        <div class="bg-line1">
                            <div class="box">
                                <div class="indent-box2">
                                    <h2>Quality Standards</h2>
                                    <div class="container"><ul class="list1">
                                        <li><span>1</span><div><a href="One.aspx"><strong>We are the most authentic service provider</strong>
                                         for all your pharmacies. In this era, when market is ridden by vested interests,</a></div></li>
                                        <li><span>2</span><div><a href="Two.aspx"><strong>We offer you the convenience to order all your Pharmacy Care 
                                            online without compromising on time and quality.</div></li>
                                        <li class="last"><span>3</span><div><a href="Three.aspx"><strong>Our Customer Care Representatives are available to assist you with placing an order,</a></div></li>                                        
                                    </ul><br class="clear" /></div>
                                </div>
                            </div>
                        </div>
                        <div class="box1">
                            <div class="bg-line">
                                <div class="indent-box">
                                    <h2>Online Pharmacies  </h2>
                                    <h4>We Recommend those below pharmacies </h4>
                                    <p>We have done some business with the following pharamacies over the 
                                    years, we have not met anything but great services and care.</p>
                                    <ul class="list">
                                        <li><div><a href="http://www.chemistdirect.co.uk/">Chemist Direct</a></div></li>
                                        <li><div><a href="http://www.cvs.com/CVSApp/user/home/home.jsp">CVS/Pharmacy</a></div></li>
                                        <li><div><a href="http://www.pharmacy2u.co.uk/">Pharmacy 2 U </a></div></li>
                                        <li><div><a href="http://www.tl-pharmacy.com/">TI-pharmacy</a></div></li>
                                        <li class="last"><div><a href="http://www.drugstore.com/">Drug Store</a></div></li>
                                    </ul>
                                </div>
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
                                <h2 class="h2">Find a Doctor Alphabetically</h2>
                                <p><a href="#" class="link1">a</a><a href="#" class="link1">b</a><a href="#" class="link1">c</a><a href="#" class="link1">d</a><a href="#" class="link1">e</a><a href="#" class="link1">f</a><a href="#" class="link1">g</a><a href="#" class="link1">h</a><a href="#" class="link1">i</a><a href="#" class="link1">j</a><a href="#" class="link1">k</a><a href="#" class="link2">l</a><a href="#" class="link1">m</a><a href="#" class="link1">n</a><a href="#" class="link1">o</a><a href="#" class="link1">p</a><a href="#" class="link1">q</a><a href="#" class="link1">r</a><a href="#" class="link1">s</a><a href="#" class="link1">t</a><a href="#" class="link1">u</a><a href="#" class="link1">v</a><a href="#" class="link1">w</a><a href="#" class="link2">x</a><a href="#" class="link1">y</a><a href="#" class="link1">z</a><a href="#" class="link3">View&nbsp;All</a></p>
                                
                                <div id="accordion">
                                	<div class="block">
                                    	<div class="indent-block">
                                            <div class="container">
                                                <img alt="" src="images/3page_img1.jpg" class="img-left" />
                                                <h4><strong>Dayle Peters</strong></h4>
                                               <span class="txt-4"> Primary Specialty: Nurse Practitioner, Family</span>
                                                <br class="clear" />
                                            </div>
                                            <div class="indent-link_1"><a href="#" class="link_1"><span>View profile</span><em>Hide info</em></a></div>
                                            <div class="info">
                                                <ul class="list2">
                                                    <li>Degrees<br><a href="#">Fusce euismod consequat ante. Lorem ipsum 1982 dolor sit ametere, consectetuer adipiscing elit. Pellentesque sed dolor.</a></li>
                                                    <li>Training<br><a href="#"> Eismod consequat ante. Lorem ipsum or sit ametere, cons.</a><a href="#">Lorem ipsum or sit ametere, cons ster porste.</a></li>
                                                    <li>Board Certifications<br><a href="#">Sequat ante. Lorem ipsum 1982 dolor sit ametere, consectetuer.</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="block1">
                                    	<div class="indent-block">
                                            <div class="container">
                                                <img alt="" src="images/3page_img2.jpg" class="img-left" />
                                                <h4><strong>Patrick Pool</strong></h4>
                                                <span class="txt-4">Primary Specialty: Cardiology</span>
                                                <br class="clear" />
                                            </div>
                                            <div class="indent-link_1"><a href="#" class="link_1"><span>View profile</span><em>Hide info</em></a></div>
                                            <div class="info">
                                                <ul class="list2">
                                                    <li>Degrees<br><a href="#">Fusce euismod consequat ante. Lorem ipsum 1982 dolor sit ametere, consectetuer adipiscing elit. Pellentesque sed dolor.</a></li>
                                                    <li>Training<br><a href="#"> Eismod consequat ante. Lorem ipsum or sit ametere, cons.</a><a href="#">Lorem ipsum or sit ametere, cons ster porste.</a></li>
                                                    <li>Board Certifications<br><a href="#">Sequat ante. Lorem ipsum 1982 dolor sit ametere, consectetuer.</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="block">
                                    	<div class="indent-block">
                                            <div class="container">
                                                <img alt="" src="images/3page_img3.jpg" class="img-left" />
                                                <h4><strong>Jessica Priston</strong></h4>
                                                <span class="txt-4">Primary Specialty: Physician Assistant</span>
                                                <br class="clear" />
                                            </div>
                                            <div class="indent-link_1"><a href="#" class="link_1"><span>View profile</span><em>Hide info</em></a></div>
                                            <div class="info">
                                                <ul class="list2">
                                                    <li>Degrees<br><a href="#">Fusce euismod consequat ante. Lorem ipsum 1982 dolor sit ametere, consectetuer adipiscing elit. Pellentesque sed dolor.</a></li>
                                                    <li>Training<br><a href="#"> Eismod consequat ante. Lorem ipsum or sit ametere, cons.</a><a href="#">Lorem ipsum or sit ametere, cons ster porste.</a></li>
                                                    <li>Board Certifications<br><a href="#">Sequat ante. Lorem ipsum 1982 dolor sit ametere, consectetuer.</a></li>
                                                </ul>
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
                            <li><a href="index-2.aspx" class="current">Doctor</a></li>
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
</div>
    <!-- coded by Maria Bahammam -->
  <script type="text/javascript">      Cufon.now(); </script>
  </form>
</body>

</html>
