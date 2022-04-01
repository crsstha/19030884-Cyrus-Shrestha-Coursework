<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Fees.aspx.cs" Inherits="_19030884_Cyrus_Shrestha_Coursework.Fees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:#336666">FEES</h1>
     <h5 style="color:#336666; height: 32px;">Student Name :
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="33px" DataSourceID="SqlDataSource2" DataTextField="NAME" DataValueField="STUDENT_ID" Width="398px">
        </asp:DropDownList>
         </h5>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FEE_ID,STUDENT_ID" DataSourceID="SqlDataSource1"  CssClass="table table-secondary-bg table striped table-bordered table-hover" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="FEE_ID" HeaderText="FEE ID" ReadOnly="True" SortExpression="FEE_ID" />
        <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT ID" ReadOnly="True" SortExpression="STUDENT_ID" />
        <asp:BoundField DataField="FULL_NAME" HeaderText="FULL NAME" SortExpression="FULL_NAME" />
        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        <asp:BoundField DataField="SECTION" HeaderText="SECTION" SortExpression="SECTION" />
        <asp:BoundField DataField="ADDMISSION_DATE" HeaderText="ADDMISSION DATE" SortExpression="ADDMISSION_DATE" />
        <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAYMENT DATE" SortExpression="PAYMENT_DATE" />
        <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
        <asp:BoundField DataField="PAYMENT_STATUS" HeaderText="PAYMENT STATUS" SortExpression="PAYMENT_STATUS" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="
SELECT S.STUDENT_ID,CM.FIRST_NAME|| ' '||CM.LAST_NAME AS NAME FROM STUDENT S 
JOIN COLLEGE_MEMBER CM ON S.STUDENT_ID = CM.PERSON_ID"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT F.FEE_ID,S.STUDENT_ID,CM.FIRST_NAME|| ' '||CM.LAST_NAME AS FULL_NAME , CM.EMAIL, S.SECTION , S.ADDMISSION_DATE, F.PAYMENT_DATE, F.AMOUNT, F.PAYMENT_STATUS FROM FEES F JOIN STUDENT S ON F.STUDENT_ID = S.STUDENT_ID JOIN COLLEGE_MEMBER CM ON F.STUDENT_ID=CM.PERSON_ID WHERE S.STUDENT_ID = :STUDENT_ID ORDER BY F.PAYMENT_STATUS DESC">

         <SelectParameters>
          <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue"/>
</SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
