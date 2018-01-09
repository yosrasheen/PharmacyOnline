<%@ Page Title="" Language="C#" MasterPageFile="~/PharmacistMasterPage.master" AutoEventWireup="true" CodeFile="AddPharmDrag.aspx.cs" Inherits="AddPharmDrag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
        <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:pharmacy1ConnectionString %>" 
            DeleteCommand="DELETE FROM [DRUG] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [DRUG] ([ID], [Side], [D_Name], [Price]) VALUES (@ID, @Side, @D_Name, @Price)" 
            SelectCommand="SELECT [ID], [Side], [D_Name], [Price] FROM [DRUG]" 
            UpdateCommand="UPDATE [DRUG] SET [Side] = @Side, [D_Name] = @D_Name, [Price] = @Price WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="String" />
            <asp:Parameter Name="Side" Type="String" />
            <asp:Parameter Name="D_Name" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Side" Type="String" />
            <asp:Parameter Name="D_Name" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="ID" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="685px" 
            DataSourceID="SqlDataSource1">
        <Fields>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <HeaderTemplate>
                Please fill the following  
            </HeaderTemplate>
    </asp:DetailsView>
    
</asp:Content>

