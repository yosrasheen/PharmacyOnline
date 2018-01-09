<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogOut.aspx.cs" Inherits="AdminLogOut" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharmacy Care Admin view</title>
     <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
     <style type="text/css">
        .style1
        {
            width: 956px;
            height: 208px;
            margin-right: 0px;
        }
        </style>
   
</head>

<body style="padding: 0; margin: 0; background-image: url('images/Background.jpg')"
    alink="#ffffff">

    <form id="form1" runat="server">
    
     <div class="page">
        <div class="header">
            
           
            <div class="clear hideSkiplink">
                <img alt="head" class="style1" 
                    src="images/bluebackground.jpg" />
                </br>
                </br>

</br>


      
            
                &nbsp;&nbsp;&nbsp;

      
              
                <asp:Button ID="AdHomeBtn" runat="server" Text="Home"  BackColor="White" 
                    Font-Bold="True" Font-Size="Medium" Height="30px" Width="100px" 
                    PostBackUrl="~/AdminHome.aspx"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:Button ID="AdOrderBtn" runat="server" Text="Orders" BackColor="White" 
                    Font-Bold="True" Font-Size="Medium" Height="30px" Width="100px" 
                    PostBackUrl="~/AdminOrders.aspx" />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:Button ID="AdDrugBtn" runat="server" Text="Drugs" BackColor="White" 
                    Font-Bold="True" Font-Size="Medium" Height="30px" Width="100px" 
                    PostBackUrl="~/AdminDrug.aspx" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:Button ID="AdDiseasBtn" runat="server" Text="Diseaes" BackColor="White" 
                    Font-Bold="True" Font-Size="Medium" Height="30px" Width="100px" 
                    PostBackUrl="~/AdminDisease.aspx" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="AdUsersBtn" runat="server" Text="Users"  BackColor="White" 
                    Font-Bold="True" Font-Size="Medium" Height="30px" Width="100px" 
                    PostBackUrl="~/AdminUsers.aspx"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="AdInventBtn" runat="server" Text="Inventory"  BackColor="White" 
                    Font-Bold="True" Font-Size="Medium" Height="30px" Width="100px" 
                    PostBackUrl="~/AdminInventory.aspx"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                

            </div>
        </div>

        <div class="main">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong><span class="style2">You are successfully Logged Out !!!</span></strong>
                                          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style3">Do want to 
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LogIn.aspx">Log In </asp:HyperLink> &nbsp;or Visit&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Pharmacy Care</asp:HyperLink> &nbsp;!</span></p>
    <p>
        </div>
        <div class="clear">
        <p>go ga</p>
        </div>
    </div>
    <p>go ga</p>
    <div class="footer">
        <p>Copyright &copy 2011</p>
    </div>
    </form>
    <!-- coded by Maria Bahammam -->
</body>
</html>
