<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddEnquery.aspx.cs" Inherits="AddEnquery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
        <br />
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:pharmacy1ConnectionString %>" 
            DeleteCommand="DELETE FROM [Enquery] WHERE [Email] = @Email" 
            InsertCommand="INSERT INTO [Enquery] ([Name], [telephon], [fax], [Email], [Enquiry], [awnser_enq]) VALUES (@Name, @telephon, @fax, @Email, @Enquiry, @awnser_enq)" 
            SelectCommand="SELECT [Name], [telephon], [fax], [Email], [Enquiry], [awnser_enq] FROM [Enquery]" 
            UpdateCommand="UPDATE [Enquery] SET [Name] = @Name, [telephon] = @telephon, [fax] = @fax, [Enquiry] = @Enquiry, [awnser_enq] = @awnser_enq WHERE [Email] = @Email">
        <DeleteParameters>
            <asp:Parameter Name="Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="telephon" Type="Int32" />
            <asp:Parameter Name="fax" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Enquiry" Type="String" />
            <asp:Parameter Name="awnser_enq" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="telephon" Type="Int32" />
            <asp:Parameter Name="fax" Type="Int32" />
            <asp:Parameter Name="Enquiry" Type="String" />
            <asp:Parameter Name="awnser_enq" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="713px" 
            DataSourceID="SqlDataSource1">
        <Fields>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <HeaderTemplate>
                Please fill the following  
            </HeaderTemplate>
    </asp:DetailsView>
</asp:Content>

