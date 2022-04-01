<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Teacher_Module.aspx.cs" Inherits="_19030884_Cyrus_Shrestha_Coursework.Teacher_Module" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:#336666">TEACHER MODULE</h1>
     <h5 style="color:#336666; height: 32px;">Student Name :
         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NAME" DataValueField="TEACHER_ID" Height="34px" Width="564px">
    </asp:DropDownList>
     </h5>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT T.TEACHER_ID, CM.FIRST_NAME ||' '||CM.LAST_NAME  AS NAME,M.MODULE_CODE,M.MODULE_NAME,M.CREDIT_HOUR FROM TEACHER T
JOIN TEACHER_MODULES TM ON TM.TEACHER_ID=T.TEACHER_ID
JOIN MODULES M ON M.MODULE_CODE= TM.MODULE_ID
JOIN COLLEGE_MEMBER CM ON CM.PERSON_ID=T.TEACHER_ID WHERE T.TEACHER_ID = :TEACHER_ID ">
        <SelectParameters>
          <asp:ControlParameter ControlID="DropDownList1" Name="TEACHER_ID" PropertyName="SelectedValue"/>
</SelectParameters>
    </asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID,MODULE_CODE" DataSourceID="SqlDataSource1" cssClass="table table-secondary-bg table striped table-bordered table-hover" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER ID" SortExpression="TEACHER_ID" ReadOnly="True" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE CODE" SortExpression="MODULE_CODE" ReadOnly="True" />
            <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE NAME" SortExpression="MODULE_NAME" />
            <asp:BoundField DataField="CREDIT_HOUR" HeaderText="CREDIT HOUR" SortExpression="CREDIT_HOUR" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT T.TEACHER_ID,CM.FIRST_NAME|| ' '||CM.LAST_NAME AS NAME FROM TEACHER T
JOIN COLLEGE_MEMBER CM ON T.TEACHER_ID = CM.PERSON_ID
"></asp:SqlDataSource>
</asp:Content>
