<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Module.aspx.cs" Inherits="_19030884_Cyrus_Shrestha_Coursework.Module" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:#336666">MODULE</h1>
    <asp:FormView ID="FormView1" CssClass="form-control text-start font-weight-bold" runat="server" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            MODULE_CODE:
            <asp:Label ID="MODULE_CODELabel1" runat="server" Text='<%# Eval("MODULE_CODE") %>' />
            <br />
            MODULE_NAME:
            <asp:TextBox ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
            <br />
            CREDIT_HOUR:
            <asp:TextBox ID="CREDIT_HOURTextBox" runat="server" Text='<%# Bind("CREDIT_HOUR") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            MODULE_CODE:
            <asp:TextBox CssClass="form-control" ID="MODULE_CODETextBox" runat="server" Text='<%# Bind("MODULE_CODE") %>' />
            <br />
            MODULE_NAME:
            <asp:TextBox CssClass="form-control" ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
            <br />
            CREDIT_HOUR:
            <asp:TextBox CssClass="form-control" ID="CREDIT_HOURTextBox" runat="server" Text='<%# Bind("CREDIT_HOUR") %>' />
            <br />
            <asp:LinkButton cssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton cssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;<asp:LinkButton cssClass="btn btn-success" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1" GridLines="Horizontal" CssClass="table table-secondary-bg table striped table-bordered table-hover">
        <Columns>
            <asp:CommandField  ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True"  ControlStyle-CssClass="btn btn-success" ControlStyle-BackColor="#336666"/>
            <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
            <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
            <asp:BoundField DataField="CREDIT_HOUR" HeaderText="CREDIT_HOUR" SortExpression="CREDIT_HOUR" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM &quot;MODULES&quot; WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULES&quot; (&quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDIT_HOUR&quot;) VALUES (:MODULE_CODE, :MODULE_NAME, :CREDIT_HOUR)" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM &quot;MODULES&quot;" UpdateCommand="UPDATE &quot;MODULES&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDIT_HOUR&quot; = :CREDIT_HOUR WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE">
        <DeleteParameters>
            <asp:Parameter Name="MODULE_CODE" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MODULE_CODE" Type="String" />
            <asp:Parameter Name="MODULE_NAME" Type="String" />
            <asp:Parameter Name="CREDIT_HOUR" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MODULE_NAME" Type="String" />
            <asp:Parameter Name="CREDIT_HOUR" Type="Decimal" />
            <asp:Parameter Name="MODULE_CODE" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
