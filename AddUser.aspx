<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 
        <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:pharmacy1ConnectionString %>" 
            DeleteCommand="DELETE FROM [log_in] WHERE [UserName] = @UserName" 
            InsertCommand="INSERT INTO [log_in] ([UserName], [Password], [Type], [Patient_Ssn], [specialist_Id]) VALUES (@UserName, @Password, @Type, @Patient_Ssn, @specialist_Id)" 
            SelectCommand="SELECT [UserName], [Password], [Type], [Patient_Ssn], [specialist_Id] FROM [log_in]" 
            UpdateCommand="UPDATE [log_in] SET [Password] = @Password, [Type] = @Type, [Patient_Ssn] = @Patient_Ssn, [specialist_Id] = @specialist_Id WHERE [UserName] = @UserName">
        <DeleteParameters>
            <asp:Parameter Name="UserName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Patient_Ssn" Type="String" />
            <asp:Parameter Name="specialist_Id" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Patient_Ssn" Type="String" />
            <asp:Parameter Name="specialist_Id" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="682px" 
            DataSourceID="SqlDataSource1">
        <Fields>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <HeaderTemplate>
                Please fill the following  
            </HeaderTemplate>
    </asp:DetailsView>
    
</asp:Content>

