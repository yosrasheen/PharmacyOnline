<%@ Page Title="" Language="C#" MasterPageFile="~/PharmacistMasterPage.master" AutoEventWireup="true" CodeFile="PharmacistDrug.aspx.cs" Inherits="PharmacistDrug" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="AddDrug" runat="server" Text="Add a Drug" BackColor="White" 
                    Font-Bold="True" Font-Size="Medium" Height="30px" Width="135px" 
                    PostBackUrl="~/AddPharmDrag.aspx" />
                    <br/>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:pharmacy1ConnectionString %>" 
        DeleteCommand="DELETE FROM [DRUG] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [DRUG] ([ID], [Side], [Price], [D_Name], [Inventory], [Inventory_Level], [Expire]) VALUES (@ID, @Side, @Price, @D_Name, @Inventory, @Inventory_Level, @Expire)" 
        SelectCommand="SELECT [ID], [Side], [Price], [D_Name], [Inventory], [Inventory_Level], [Expire] FROM [DRUG]" 
        UpdateCommand="UPDATE [DRUG] SET [Side] = @Side, [Price] = @Price, [D_Name] = @D_Name, [Inventory] = @Inventory, [Inventory_Level] = @Inventory_Level, [Expire] = @Expire WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="String" />
            <asp:Parameter Name="Side" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="D_Name" Type="String" />
            <asp:Parameter Name="Inventory" Type="String" />
            <asp:Parameter Name="Inventory_Level" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Expire" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Side" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="D_Name" Type="String" />
            <asp:Parameter Name="Inventory" Type="String" />
            <asp:Parameter Name="Inventory_Level" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Expire" />
            <asp:Parameter Name="ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" DataSourceID="SqlDataSource1" Width="928px">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="False" />
        </Columns>
    </asp:GridView>
</asp:Content>

