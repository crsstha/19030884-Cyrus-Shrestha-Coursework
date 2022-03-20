<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="_19030884_Cyrus_Shrestha_Coursework.Address" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;CITY&quot;, &quot;STATE&quot;, &quot;STREET&quot;, &quot;COUNTRY&quot;) VALUES (:ADDRESS_ID, :CITY, :STATE, :STREET, :COUNTRY)" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;CITY&quot; = :CITY, &quot;STATE&quot; = :STATE, &quot;STREET&quot; = :STREET, &quot;COUNTRY&quot; = :COUNTRY WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
    <DeleteParameters>
        <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
        <asp:Parameter Name="CITY" Type="String" />
        <asp:Parameter Name="STATE" Type="String" />
        <asp:Parameter Name="STREET" Type="String" />
        <asp:Parameter Name="COUNTRY" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="CITY" Type="String" />
        <asp:Parameter Name="STATE" Type="String" />
        <asp:Parameter Name="STREET" Type="String" />
        <asp:Parameter Name="COUNTRY" Type="String" />
        <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
        <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
        <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
        <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
        <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
    </Columns>
</asp:GridView>
</asp:Content>
