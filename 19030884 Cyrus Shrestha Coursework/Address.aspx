<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="_19030884_Cyrus_Shrestha_Coursework.Address" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:#336666">ADDRESS</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;CITY&quot;, &quot;STATE&quot;, &quot;STREET&quot;, &quot;COUNTRY&quot;) VALUES (:ADDRESS_ID, :CITY, :STATE, :STREET, :COUNTRY)" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;CITY&quot; = :CITY, &quot;STATE&quot; = :STATE, &quot;STREET&quot; = :STREET, &quot;COUNTRY&quot; = :COUNTRY WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
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
    <asp:FormView ID="FormView1" CssClass="form-control text-start font-weight-bold" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            ADDRESS_ID:
            <asp:Label  ID="ADDRESS_IDLabel1" runat="server" Text='<%# Eval("ADDRESS_ID") %>' />
            <br />
            CITY:
            <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
            <br />
            STATE:
            <asp:TextBox ID="STATETextBox" runat="server" Text='<%# Bind("STATE") %>' />
            <br />
            STREET:
            <asp:TextBox ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />
            <br />
            COUNTRY:
            <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>

            CITY:
            <asp:TextBox  CssClass="form-control" ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
            <br />
            STATE:
            <asp:TextBox CssClass="form-control" ID="STATETextBox" runat="server" Text='<%# Bind("STATE") %>' />
            <br />
            STREET:
            <asp:TextBox CssClass="form-control" ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />
            <br />
            COUNTRY:
            <asp:TextBox CssClass="form-control" ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
            <br />
            <asp:LinkButton CssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
        <asp:LinkButton  CssClass="btn btn-success" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" AllowSorting="True" CssClass="table table-secondary-bg table striped table-bordered table-hover  " BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
    <Columns>
        <asp:CommandField  ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ControlStyle-CssClass="btn btn-success" ControlStyle-BackColor="#336666">
<ControlStyle BackColor="#336666" CssClass="btn btn-success"></ControlStyle>
        </asp:CommandField>
        <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
        <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
        <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
        <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
        <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
    </asp:Content>
