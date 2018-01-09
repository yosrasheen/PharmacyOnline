<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddDisease.aspx.cs" Inherits="AddDisease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
        <br />

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

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DetailsView ID="DetailsView1" 
            runat="server" Height="45px" Width="633px" 
            DataSourceID="SqlDataSource1">
            <Fields>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <HeaderTemplate>
                Please fill the following  
            </HeaderTemplate>
    </asp:DetailsView>
    <br/><br/>
</asp:Content>

