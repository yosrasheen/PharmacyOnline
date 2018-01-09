<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminInventory.aspx.cs" Inherits="AdminInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="AddInvent" runat="server" Text="Add to Inventory" BackColor="White" 
                    Font-Bold="True" Font-Size="Medium" Height="30px" Width="135px" 
                    PostBackUrl="~/AddInvent.aspx" />
                    <br/>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:pharmacy1ConnectionString %>" 
        DeleteCommand="DELETE FROM [DRUG] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [DRUG] ([Expire], [Inventory_Level], [Inventory], [ID], [D_Name], [Price]) VALUES (@Expire, @Inventory_Level, @Inventory, @ID, @D_Name, @Price)" 
        SelectCommand="SELECT [Expire], [Inventory_Level], [Inventory], [ID], [D_Name], [Price] FROM [DRUG]" 
        UpdateCommand="UPDATE [DRUG] SET [Expire] = @Expire, [Inventory_Level] = @Inventory_Level, [Inventory] = @Inventory, [D_Name] = @D_Name, [Price] = @Price WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="Expire" />
            <asp:Parameter Name="Inventory_Level" Type="Int32" />
            <asp:Parameter Name="Inventory" Type="String" />
            <asp:Parameter Name="ID" Type="String" />
            <asp:Parameter Name="D_Name" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="Expire" />
            <asp:Parameter Name="Inventory_Level" Type="Int32" />
            <asp:Parameter Name="Inventory" Type="String" />
            <asp:Parameter Name="D_Name" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" DataSourceID="SqlDataSource1" Width="924px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="False" />
        </Columns>
    </asp:GridView>
</asp:Content>

