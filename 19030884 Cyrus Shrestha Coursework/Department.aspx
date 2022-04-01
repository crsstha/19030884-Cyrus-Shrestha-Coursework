<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="_19030884_Cyrus_Shrestha_Coursework.Department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:#336666">DEPARTMENT</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;HOD&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME, :HOD)" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME, &quot;HOD&quot; = :HOD WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">
    <DeleteParameters>
        <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
        <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
        <asp:Parameter Name="HOD" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
        <asp:Parameter Name="HOD" Type="Decimal" />
        <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:FormView ID="FormView1" CssClass="form-control text-start font-weight-bold"  runat="server" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        DEPARTMENT_ID:
        <asp:Label ID="DEPARTMENT_IDLabel1" runat="server" Text='<%# Eval("DEPARTMENT_ID") %>' />
        <br />
        DEPARTMENT_NAME:
        <asp:TextBox ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
        <br />
        HOD:
        <asp:TextBox ID="HODTextBox" runat="server" Text='<%# Bind("HOD") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        DEPARTMENT_ID:
        <asp:TextBox CssClass="form-control" ID="DEPARTMENT_IDTextBox" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' />
        <br />
        DEPARTMENT_NAME:
        <asp:TextBox CssClass="form-control" ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
        <br />
        HOD:
        <asp:TextBox CssClass="form-control" ID="HODTextBox" runat="server" Text='<%# Bind("HOD") %>' />
        <br />
        <asp:LinkButton  CssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton  CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        <asp:LinkButton CssClass="btn btn-success" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" CssClass="table table-secondary-bg table striped table-bordered table-hover">
    <Columns>
        <asp:CommandField  ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ControlStyle-CssClass="btn btn-success" ControlStyle-BackColor="#336666" >
<ControlStyle BackColor="#336666" CssClass="btn btn-success"></ControlStyle>
        </asp:CommandField>
        <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
        <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT NAME" SortExpression="DEPARTMENT_NAME" />
        <asp:BoundField DataField="HOD" HeaderText="HOD" SortExpression="HOD" />
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
