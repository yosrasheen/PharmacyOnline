<%@ Page Title="" Language="C#" MasterPageFile="~/PharmacistMasterPage.master" AutoEventWireup="true" CodeFile="PharmacistDisease.aspx.cs" Inherits="PharmacistDisease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:pharmacy1ConnectionString %>" 
        DeleteCommand="DELETE FROM [DISEASE] WHERE [Name] = @Name" 
        InsertCommand="INSERT INTO [DISEASE] ([Name], [Symptom], [Pre_action], [D_ID]) VALUES (@Name, @Symptom, @Pre_action, @D_ID)" 
        SelectCommand="SELECT [Name], [Symptom], [Pre_action], [D_ID] FROM [DISEASE]" 
        UpdateCommand="UPDATE [DISEASE] SET [Symptom] = @Symptom, [Pre_action] = @Pre_action, [D_ID] = @D_ID WHERE [Name] = @Name">
        <DeleteParameters>
            <asp:Parameter Name="Name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Symptom" Type="String" />
            <asp:Parameter Name="Pre_action" Type="String" />
            <asp:Parameter Name="D_ID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Symptom" Type="String" />
            <asp:Parameter Name="Pre_action" Type="String" />
            <asp:Parameter Name="D_ID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
    Width="931px">
    </asp:GridView>
</asp:Content>

