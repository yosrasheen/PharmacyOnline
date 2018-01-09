<%@ Page Title="" Language="C#" MasterPageFile="~/masterPages/Site.master" AutoEventWireup="true" CodeFile="terms.aspx.cs" Inherits="terms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="ObjectDataSource1" DataTextField="Title" 
        DataValueField="CategoryID">
    </asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="BCMOnlineDSTableAdapters.CategoriesTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_CategoryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AddedDate" Type="DateTime" />
            <asp:Parameter Name="AddedBy" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AddedDate" Type="DateTime" />
            <asp:Parameter Name="AddedBy" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Original_CategoryID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource2">
    </asp:ListView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByCategory" 
        TypeName="BCMOnlineDSTableAdapters.MedicineTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_MedicineID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AddedDate" Type="DateTime" />
            <asp:Parameter Name="AddedBy" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="DiscountPercentage" Type="Int32" />
            <asp:Parameter Name="UnitsInStock" Type="Int32" />
            <asp:Parameter Name="SmallImageUrl" Type="String" />
            <asp:Parameter Name="FullImageUrl" Type="String" />
            <asp:Parameter Name="UpdatedDate" Type="DateTime" />
            <asp:Parameter Name="UpdatedBy" Type="String" />
            <asp:Parameter Name="Drug_Uses" Type="String" />
            <asp:Parameter Name="Drug_HowToUse" Type="String" />
            <asp:Parameter Name="Drug_Class" Type="String" />
            <asp:Parameter Name="Drug_Storage" Type="String" />
            <asp:Parameter Name="Drug_Syptoms" Type="String" />
            <asp:Parameter Name="Active" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="CategoryID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="AddedDate" Type="DateTime" />
            <asp:Parameter Name="AddedBy" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="DiscountPercentage" Type="Int32" />
            <asp:Parameter Name="UnitsInStock" Type="Int32" />
            <asp:Parameter Name="SmallImageUrl" Type="String" />
            <asp:Parameter Name="FullImageUrl" Type="String" />
            <asp:Parameter Name="UpdatedDate" Type="DateTime" />
            <asp:Parameter Name="UpdatedBy" Type="String" />
            <asp:Parameter Name="Drug_Uses" Type="String" />
            <asp:Parameter Name="Drug_HowToUse" Type="String" />
            <asp:Parameter Name="Drug_Class" Type="String" />
            <asp:Parameter Name="Drug_Storage" Type="String" />
            <asp:Parameter Name="Drug_Syptoms" Type="String" />
            <asp:Parameter Name="Active" Type="Boolean" />
            <asp:Parameter Name="Original_MedicineID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
</asp:Content>

