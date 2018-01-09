<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddDrug.aspx.cs" Inherits="AddDrug" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
        <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:pharmacy1ConnectionString %>" 
            DeleteCommand="DELETE FROM [DRUG] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [DRUG] ([ID], [Side], [D_Name], [Price], [Inventory], [Inventory_Level], [Expire]) VALUES (@ID, @Side, @D_Name, @Price, @Inventory, @Inventory_Level, @Expire)" 
            SelectCommand="SELECT [ID], [Side], [D_Name], [Price], [Inventory], [Inventory_Level], [Expire] FROM [DRUG]" 
            UpdateCommand="UPDATE [DRUG] SET [Side] = @Side, [D_Name] = @D_Name, [Price] = @Price, [Inventory] = @Inventory, [Inventory_Level] = @Inventory_Level, [Expire] = @Expire WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="String" />
            <asp:Parameter Name="Side" Type="String" />
            <asp:Parameter Name="D_Name" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="Inventory" Type="String" />
            <asp:Parameter Name="Inventory_Level" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Expire" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Side" Type="String" />
            <asp:Parameter Name="D_Name" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="Inventory" Type="String" />
            <asp:Parameter Name="Inventory_Level" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Expire" />
            <asp:Parameter Name="ID" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="713px" 
            DataSourceID="SqlDataSource1">
        <Fields>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <HeaderTemplate>
                Please fill the following  
            </HeaderTemplate>
    </asp:DetailsView>
</asp:Content>

