<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddOrder.aspx.cs" Inherits="AddOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
        <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:pharmacy1ConnectionString %>" 
            DeleteCommand="DELETE FROM [ORDER1] WHERE [P_ssn] = @P_ssn AND [D_id] = @D_id" 
            InsertCommand="INSERT INTO [ORDER1] ([P_ssn], [D_id], [Paid], [Quantity], [Pdate]) VALUES (@P_ssn, @D_id, @Paid, @Quantity, @Pdate)" 
            SelectCommand="SELECT [P_ssn], [D_id], [Paid], [Quantity], [Pdate] FROM [ORDER1]" 
            UpdateCommand="UPDATE [ORDER1] SET [Paid] = @Paid, [Quantity] = @Quantity, [Pdate] = @Pdate WHERE [P_ssn] = @P_ssn AND [D_id] = @D_id">
        <DeleteParameters>
            <asp:Parameter Name="P_ssn" Type="String" />
            <asp:Parameter Name="D_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="P_ssn" Type="String" />
            <asp:Parameter Name="D_id" Type="String" />
            <asp:Parameter Name="Paid" Type="Double" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Pdate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Paid" Type="Double" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Pdate" />
            <asp:Parameter Name="P_ssn" Type="String" />
            <asp:Parameter Name="D_id" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
            DataSourceID="SqlDataSource1">
        <Fields>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <HeaderTemplate>
                Please fill the following  
            </HeaderTemplate>
    </asp:DetailsView>
   
</asp:Content>

