<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="_19030884_Cyrus_Shrestha_Coursework.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:#336666">TEACHER</h1>
<asp:FormView ID="FormView1" CssClass="form-control text-start font-weight-bold" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
    <InsertItemTemplate>
        TEACHER_ID:
        <asp:DropDownList ID="DropDownList1" CssClass="form-select" runat="server" DataSourceID="SqlDataSource2" DataTextField="NAME" DataValueField="PERSON_ID" Width="219px" SelectedValue='<%# Bind("TEACHER_ID") %>' Height="41px">
        </asp:DropDownList>
        <br />
        SALARY:
        <asp:TextBox CssClass="form-control" ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
        <br />
        JOINED_DATE:
        <asp:TextBox CssClass="form-control" ID="JOINED_DATETextBox" runat="server" Text='<%# Bind("JOINED_DATE") %>' />
        <br />
        COLLEGE_EMAIL:
        <asp:TextBox CssClass="form-control" ID="COLLEGE_EMAILTextBox" runat="server" Text='<%# Bind("COLLEGE_EMAIL") %>' />
        <br />
        <asp:LinkButton cssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton cssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT &quot;FIRST_NAME&quot;|| ' '||&quot;LAST_NAME&quot; AS NAME , &quot;PERSON_ID&quot; FROM &quot;COLLEGE_MEMBER&quot; WHERE PERSON_ID NOT IN (SELECT TEACHER_ID FROM TEACHER)"></asp:SqlDataSource>
    </InsertItemTemplate>
    <ItemTemplate>
        &nbsp;<asp:LinkButton cssClass="btn btn-success" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" CssClass="table table-secondary-bg table striped table-bordered table-hover">
    <Columns>
        <asp:CommandField  ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ControlStyle-CssClass="btn btn-success" ControlStyle-BackColor="#336666" />
        <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
        <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
        <asp:BoundField DataField="JOINED_DATE" HeaderText="JOINED_DATE" SortExpression="JOINED_DATE" />
        <asp:BoundField DataField="COLLEGE_EMAIL" HeaderText="COLLEGE_EMAIL" SortExpression="COLLEGE_EMAIL" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM &quot;TEACHER&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TEACHER&quot; (&quot;TEACHER_ID&quot;, &quot;SALARY&quot;, &quot;JOINED_DATE&quot;, &quot;COLLEGE_EMAIL&quot;) VALUES (:TEACHER_ID, :SALARY, :JOINED_DATE, :COLLEGE_EMAIL)" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHER&quot;" UpdateCommand="UPDATE &quot;TEACHER&quot; SET &quot;SALARY&quot; = :SALARY, &quot;JOINED_DATE&quot; = :JOINED_DATE, &quot;COLLEGE_EMAIL&quot; = :COLLEGE_EMAIL WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID">
    <DeleteParameters>
        <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
        <asp:Parameter Name="SALARY" Type="Decimal" />
        <asp:Parameter Name="JOINED_DATE" Type="DateTime" />
        <asp:Parameter Name="COLLEGE_EMAIL" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="SALARY" Type="Decimal" />
        <asp:Parameter Name="JOINED_DATE" Type="DateTime" />
        <asp:Parameter Name="COLLEGE_EMAIL" Type="String" />
        <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
