<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index-1.aspx.cs" Inherits="index_1" %>

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
  <!--[if lt IE 7]><script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script><![endif]-->
  <!--[if lt IE 9]><script type="text/javascript" src="js/html5.js"></script><![endif]--> 
  
</head>

<body runat="server" id="page2">

 <form id="form1" runat="server">

<div class="bg-main1">
                                       
    <header>
        <div class="main2">
                      
            <h1><a href="index.aspx">Hatha</a></h1>
                   
<div class="inside">
                   
                <nav>
                    <ul class="sf-menu">
                        <li><a href="index.aspx">Home</a></li>
                        <li><a href="index-1.aspx" class="current">About</a></li>
                        <li><a href="index-2.aspx">Doctor</a></li>
                        <li><a href="index-3.aspx">drugs</a>
                        </li>
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
                                <div class="indent-box1">
                                    <h2>About Our Pharamcy</h2>
                                    <img alt="" src="images/2page_img1.jpg" class="img-indent" /><br>
                                     In <em>Pharmacy Care</em> We are not only a Pharmacy that sells drugs to our precious patients but we also provide information about the drug and the 
              amount of dosage and the guid line to use the drug effectively so our patients get well sooner. We point our patinets to the best 
              Doctors in thier diseases fields. We also provide a collection of the fine drugs that we sell online and provide the shippment services. Our main 
              goal is to help our patients "<strong>Be Well and Stay Well</strong>".                               </div>
                            </div>
                        </div>
          <div class="box1">
                            <div class="bg-line">
                                <div class="indent-box">
                                    <h2 class="h2">Testimonials</h2>
                                    <div class="tail">
                                        <img alt="" src="images/img.png" class="img" />
                                        <div class="indent">
                                            <em>We all know that the drugs alone wont cure your diseases. That is why Pharmacy Care provides not only drugs but also the best way to use then and when.</em><br>
                                            <span class="txt">Marta Healy</span>
                                            <br class="clear" />
                                        </div>
                                    </div>
                                        <img alt="" src="images/img.png" class="img" />
                                    <div class="indent">
                                        <em>Pharmact Care provides a very good guidness to patients who dont know whom to trust. I would recommend Pharmacy Care strongly to my patients.</em><br>
                                        <span class="txt">John Franklin</span>
                                        <br class="clear" />
                                    </div>
                                </div>
                            </div>
                      </div>
                    </div>
                          <div>
                   <asp:TextBox ID="SearchTB" runat="server" Height="15px" Width="300px" 
                         BackColor="White" BorderColor="#333399" BorderWidth="1px" 
                         ForeColor="#99CCFF" >Search for Drug, Diseas</asp:TextBox>
                      <asp:Button ID="SearchB" runat="server" Text="Search" BackColor="#333399" 
                         BorderColor="#333399" ForeColor="White" onclick="SearchB_Click"></asp:Button> <br/>
<asp:RadioButton ID="DrugRB" runat="server" Checked="True" GroupName="Radios"></asp:RadioButton> 
<asp:Label ID="Label1" runat="server" Text="Search for drugs"></asp:Label>&nbsp;&nbsp;
<asp:RadioButton ID="DiseaseRB" runat="server" AutoPostBack="True" CausesValidation="True" GroupName="Radios"></asp:RadioButton>
<asp:Label ID="Label2" runat="server" Text="Diseases"></asp:Label>
                 </div> <br/>
                 
                    <div class="col2">
               
                        <div class="box2">
               
                            <div class="bg-line2">
                  
                             
                                <div class="indent-box">
                        
                                    <div class="container">                                        
                                        <h2>We Have More Than 30 Years of Experience</h2>
                                        <h4> Our main objectives and thoughts to achive our patients satisfactions.</h4>
                                        <p> Pharmacy Online gives you access to the high quality prescription drugs and over-the-counter medications to our patients at discount drug prices. Add to this an unmatched level of service and you have an outstanding online pharmacy solution!



Pharmacy Online is a member in good standing of the International Pharmacy Association. We are also very proud to have received the highest rating from Pharmacy Checker, a leading independent source of information which collects, evaluates and reports on online pharmacy credentials, prices and customer satisfaction.

 </p>
                                        <div class="container">
                                        	<img alt="" src="images/2page_img2.jpg" class="img-left" />
                                            <h4>Why we are one of the leaders in our profession</h4>
                                            <p>We have trained staff with several years' experience. To date, we have provided hundreds of thousands of patients with drugs, and continue to do so daily.</p>
                                            
                                            <br class="clear" />
                                        </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="box3">
                            <div class="bg-line3">
                                <div class="indent-box">
                                    <h2>How to use our Pharamacy Care in three easy steps</h2>
                                    <div class="container">
                                    	<div class="col-1">
                                        	<div class="num">1</div>
                                            <h4>Register </h4>
                                            First you have to go through easy registration.
                                        </div>
                                    	<div class="col-1">
                                        	<div class="num">2</div>
                                            <h4>Choose and Order Drugs</h4>
                                            You can search and look for
                                             any drug you want amoung
                                             our varaity of drugs and add them to cart.
                                        </div>
                                    	<div class="col-2">
                                        	<div class="num">3</div>
                                            <h4>Payment  </h4>
                                            You can select your payment method 
                                            form more than one type of credit 
                                            cards services.
                                        </div>
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
        <div class="main">
            <div class="inside">
                <div class="container">
                    <div class="fright"><span>Pharmacy Care</span> &copy; 2011  &nbsp; &nbsp;<a href="index-7.aspx">Privacy Policy</a><br><!--{%FOOTER_LINK}--></div>  
                    <div class="fleft">
                        <ul>
                            <li><a href="index.aspx">Home</a></li>
                            <li><a href="index-1.aspx" class="current">About</a></li>
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
</div>
    <!-- coded by Maria Bahammam -->
  <script type="text/javascript">      Cufon.now(); </script>

  </form>

</body>
</html>
