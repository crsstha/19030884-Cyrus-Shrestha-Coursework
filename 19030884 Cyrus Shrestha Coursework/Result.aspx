<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="_19030884_Cyrus_Shrestha_Coursework.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:#336666">RESULT</h1>

    <h5 style="color:#336666; height: 32px;">Student Name :  <asp:DropDownList ID="DropDownList1" cssClass="form-group " runat="server" DataSourceID="SqlDataSource2" AutoPostBack="true" DataTextField ="NAME" DataValueField="STUDENT_ID" Height="32px" Width="712px">
    </asp:DropDownList></h5>
   
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-secondary-bg table striped table-bordered table-hover" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" SortExpression="STUDENT_ID" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="SECTION" HeaderText="SECTION" SortExpression="SECTION" />
            <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
            <asp:BoundField DataField="ASSIGNMENT_TYPE" HeaderText="ASSIGNMENT_TYPE" SortExpression="ASSIGNMENT_TYPE" />
            <asp:BoundField DataField="GRADE" HeaderText="GRADE" SortExpression="GRADE" />
            <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT R.STUDENT_ID, CM.FIRST_NAME, S.SECTION, M.MODULE_NAME, A.ASSIGNMENT_TYPE, R.GRADE, G.STATUS FROM RESULT R
JOIN COLLEGE_MEMBER CM ON R.STUDENT_ID = CM.PERSON_ID
JOIN STUDENT S ON R.STUDENT_ID = S.STUDENT_ID
JOIN MODULES M ON R.MODULE_ID = M.MODULE_CODE
JOIN ASSIGNMENT A ON R.ASSIGNMENT_ID = A.ASSIGNMENT_ID
JOIN GRADE G ON R.GRADE=G.GRADE WHERE S.STUDENT_ID = :STUDENT_ID ORDER BY G.STATUS DESC">
        <SelectParameters>
          <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue"/>
</SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="
SELECT S.STUDENT_ID,CM.FIRST_NAME|| ' '||CM.LAST_NAME AS NAME FROM STUDENT S 
JOIN COLLEGE_MEMBER CM ON S.STUDENT_ID = CM.PERSON_ID">
    </asp:SqlDataSource>
</asp:Content>
