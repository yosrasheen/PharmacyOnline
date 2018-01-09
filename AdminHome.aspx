<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: xx-large;
        }
        .style3
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="style2">
        <strong>Welcome !!<br />
        </strong>
        <span class="style3">Here you can do the following:
          <ul>
    <li>View, Add and delete Orders</li>
    <li>View, Add and delete Drugs</li>
    <li>View, Add and delete Diseases</li>
    <li>View, Add and delete Useres</li>
    <li>View, Add and delete Inventory Level</li>
    </ul>
     </span>
   

    </p>

</asp:Content>

