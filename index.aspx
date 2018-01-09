<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

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
    <style type="text/css">
        .style1
        {
            margin: 0;
            text-align: left;
        }
    </style>
</head>
<body runat="server" id="page1">
    <form id="form1" runat="server">
    <div class="bg-main">
        <header>
       <div class="top">
            <div class="main" style="position:relative; z-index:9000000">
                <h1><a href="index.aspx">helth</a></h1>
                 
               
                 
                
  <div class="indent">
                     <div>
                   <asp:TextBox ID="SearchTB" runat="server" Height="15px" Width="300px" 
                         BackColor="White"  BorderColor="#333399" BorderWidth="1px" 
                         ForeColor="#99CCFF" >Search for Drug, Diseas </asp:TextBox>
                      <asp:Button ID="SearchB" runat="server" Text="Search" BackColor="#333399" 
                         BorderColor="#333399" ForeColor="White"></asp:Button> <br/>
<asp:RadioButton ID="DrugRB" runat="server" Checked="True" GroupName="Radios"></asp:RadioButton> 
<asp:Label ID="Label1" runat="server" Text="Search for drugs"></asp:Label>&nbsp;&nbsp;
<asp:RadioButton ID="DiseaseRB" runat="server" AutoPostBack="True" CausesValidation="True" 
                             GroupName="Radios"></asp:RadioButton>
<asp:Label ID="Label2" runat="server" Text="Diseases"></asp:Label>
                 </div>
                
                     
                    <div class="txt-2"><strong>Welcome</strong> Pharmacy Care</div>
                    <p class="txt-1" style="text-align: left">We began to bridge the gap between some of those irreputable online pharmacies and you family corner drugstore.</p>
                    <p class="style1">We are, the fully licensed, leading online provider of the best pharmaceutical care which formed by a group of physicians and pharmacists, offering a huge selection of medications based on brand name and generic names whcih approved by FDA.</p>
                    <a href="#" class="button">Order Now</a>                </div>
  <div class="inside">
                    <nav>
                        <ul class="sf-menu">
                            <li><a href="index.aspx" class="current">Home</a></li>
                            <li><a href="index-1.aspx">About</a></li>
                            <li><a href="index-2.aspx">Doctor</a></li>
                            <li><a href="index-3.aspx">drugs</a></li>
                            <li><a href="index-4.aspx">Useful info </a><a href="index-5.aspx">Enquiry</a></li>
                            <li><a href="index-6.aspx">contact</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <br/>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Panel runat="server" ID="pnlSignIn">
            <a href="LogIn.aspx" 
                style="text-decoration: underline; font-size: large; 
                font-weight: bold; color: #FFFFFF">Sign In</a>    
                </asp:Panel>
                <asp:Panel runat="server" ID="pnlLogin">
            welcome <asp:LinkButton runat="server" ID="lnkUSerName" 
                        PostBackUrl="~/EditProfile.aspx" ></asp:LinkButton>
            <a href="LogOut.aspx" 
                style="text-decoration: underline; font-size: large; 
                font-weight: bold; color: #FFFFFF">Log out</a>    
                </asp:Panel>
        </div>
  </header>
        <div class="indent-1">
            <div class="main">
                <section id="content">
                <div class="container">
                    <div class="col1">
                        <div class="bg-line1">
                            <div class="box">
                                <div class="indent-box">
                                    <h2>Ehealth Library</h2>
                                    <ul class="list">
                                        <li><div><a href="Acid.aspx">Acid Reflux/Ulcers </a></div></li>
                                        <li><div><a href="Acen.aspx"> Acne/Rosacea </a></div></li>
                                        <li><div><a href="Blood.aspx">Blood thinners </a></div></li>
                                        <li><div><a href="Breast.aspx">Breast Cancer</a></div></li>
                                        <li><div><a href="Cholesterol.aspx">Cholesterol </a></div></li>
                                        <li><div><a href="Contraceptives.aspx">Contraceptives</a></div></li>
                                        <li><div><a href="Depression.aspx">Depression</a></div></li>
                                        <li class="last"><div><a href="Diabetes.aspx">Diabetes </a></div></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
          <div class="box1">
                            <div class="bg-line">
                                <div class="indent-box">
                                    <h2>CONTACT</h2>
                                    <h4>pharmacycare.org  8901 Olya Road, <br/>
                                    Riyadh,  D04 89GR.</h4>                            
                                    <p>Telephone: +1 959 552 5963<br/>
                                    FAX: +1 959 552 5963<br/>
                                    Telephone: +1 959 552 5963<br>
                                    FAX: +1 959 552 5963<br>
                                    E-mail: <a href="#">mail@pharmacycare.org</a></p>
                                    <h4>pharmacycare.org  8901 Olya Road, <br>
                                    Riyadh,  D04 89GR.</h4>
                                    
                                    Telephone: +1 959 552 5963<br>
                                    FAX: +1 959 552 5963<br>
                                    Telephone: +1 959 552 5963<br>
                                    FAX: +1 959 552 5963<br>
                                    E-mail: <a href="#">mail@pharmacycare.org</a>                                </div>
                            </div>
                      </div>
                    </div>
                    <div class="col2">
                        <div class="box2">
                            <div class="bg-line2">
                                <div class="indent-box">
                                    <div class="container">
                                        <div class="col-1">
                                            <h1><strong>Welcome</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;to Our website!</h1>
                                            <h4>In this site we provide information about Drugs and Diseases </h4>
                                            <p>In Pharmacy Care we are not only a pharmacy that sell drugs to patient online but 
                                                also a consult our patinets to provide them with the appropriate drugs they need 
                                                to get well and make sure they stay that way. We are the best in our profession 
                                                because we make promisses that we keep keep. The care will be delivered by 
                                                pharmacy staff members who provide and accept responsibility for the 
                                                product-related and clinical activities that compose the pharmaceutical care 
                                                model.</p>
                                            <div class="container"><a href="MoreMission.aspx" class="button-1">More</a></div>
                                        </div>
                                        <div class="col-2">
                                            <h2>Our Specialists</h2>
                                            <img alt="" src="images/1page_img1.jpg" class="img-indent" /><br>
                                            <p>We have a good number of stuffs who are pationate about what they do and they are 
                                                willing to give more than they take. They have long time experience in the field 
                                                which attract our patients and keep them loyal to us . Our patients trust our 
                                                services and we are so glad. We hope continue provide best services to our 
                                                patients to keep their trust. </p>
                                            <div class="container">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="box3">
                            <div class="bg-line3">
                                <div class="indent-box">
                                    <h2>Why Online Pharmacy Stores Sell Drugs at Such Cheap Prices?
</h2>
                                    <h4>Online pharmacies are able to sell drugs at cheaper rates because an online 
                                        pharmacy has a different cost structure than a normal “brick and mortar” 
                                        pharmacy. It is not expensive to set up an online pharmacy; </h4>
                                    <p>
                                        all you need is a PC and an internet connection and viola you’re hooked to the 
                                        World Wide Web.</p>
                                    <p>
                                        Most online pharmacies do not spend much money on setting up an office; in fact 
                                        a lot of online pharmacies are home based businesses. They sell, pack and 
                                        distribute the drugs from their backyard or garage.</p>
                                     <div class="container"><a href="MoreWhy.aspx" class="button-2">More</a></div>
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
    </div>
    <script type="text/javascript">        Cufon.now(); </script>
    </form>
</body>
</html>
