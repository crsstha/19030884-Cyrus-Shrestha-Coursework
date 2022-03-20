<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="College_Person.aspx.cs" Inherits="_19030884_Cyrus_Shrestha_Coursework.College_Person" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label cssClass="btn btn-success" ID="Label1" runat="server" Text="College Person"></asp:Label>

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="255px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1060px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="PERSON_ID" HeaderText="PERSON_ID" ReadOnly="True" SortExpression="PERSON_ID" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
            <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM &quot;COLLEGE_PERSON&quot; WHERE &quot;PERSON_ID&quot; = :original_PERSON_ID AND ((&quot;FIRST_NAME&quot; = :original_FIRST_NAME) OR (&quot;FIRST_NAME&quot; IS NULL AND :original_FIRST_NAME IS NULL)) AND ((&quot;LAST_NAME&quot; = :original_LAST_NAME) OR (&quot;LAST_NAME&quot; IS NULL AND :original_LAST_NAME IS NULL)) AND ((&quot;PHONE_NUMBER&quot; = :original_PHONE_NUMBER) OR (&quot;PHONE_NUMBER&quot; IS NULL AND :original_PHONE_NUMBER IS NULL)) AND ((&quot;DOB&quot; = :original_DOB) OR (&quot;DOB&quot; IS NULL AND :original_DOB IS NULL)) AND ((&quot;GENDER&quot; = :original_GENDER) OR (&quot;GENDER&quot; IS NULL AND :original_GENDER IS NULL)) AND ((&quot;EMAIL&quot; = :original_EMAIL) OR (&quot;EMAIL&quot; IS NULL AND :original_EMAIL IS NULL))" InsertCommand="INSERT INTO &quot;COLLEGE_PERSON&quot; (&quot;PERSON_ID&quot;, &quot;FIRST_NAME&quot;, &quot;LAST_NAME&quot;, &quot;PHONE_NUMBER&quot;, &quot;DOB&quot;, &quot;GENDER&quot;, &quot;EMAIL&quot;) VALUES (:PERSON_ID, :FIRST_NAME, :LAST_NAME, :PHONE_NUMBER, :DOB, :GENDER, :EMAIL)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM &quot;COLLEGE_PERSON&quot;" UpdateCommand="UPDATE &quot;COLLEGE_PERSON&quot; SET &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;LAST_NAME&quot; = :LAST_NAME, &quot;PHONE_NUMBER&quot; = :PHONE_NUMBER, &quot;DOB&quot; = :DOB, &quot;GENDER&quot; = :GENDER, &quot;EMAIL&quot; = :EMAIL WHERE &quot;PERSON_ID&quot; = :original_PERSON_ID AND ((&quot;FIRST_NAME&quot; = :original_FIRST_NAME) OR (&quot;FIRST_NAME&quot; IS NULL AND :original_FIRST_NAME IS NULL)) AND ((&quot;LAST_NAME&quot; = :original_LAST_NAME) OR (&quot;LAST_NAME&quot; IS NULL AND :original_LAST_NAME IS NULL)) AND ((&quot;PHONE_NUMBER&quot; = :original_PHONE_NUMBER) OR (&quot;PHONE_NUMBER&quot; IS NULL AND :original_PHONE_NUMBER IS NULL)) AND ((&quot;DOB&quot; = :original_DOB) OR (&quot;DOB&quot; IS NULL AND :original_DOB IS NULL)) AND ((&quot;GENDER&quot; = :original_GENDER) OR (&quot;GENDER&quot; IS NULL AND :original_GENDER IS NULL)) AND ((&quot;EMAIL&quot; = :original_EMAIL) OR (&quot;EMAIL&quot; IS NULL AND :original_EMAIL IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_PERSON_ID" Type="Decimal" />
        <asp:Parameter Name="original_FIRST_NAME" Type="String" />
        <asp:Parameter Name="original_LAST_NAME" Type="String" />
        <asp:Parameter Name="original_PHONE_NUMBER" Type="String" />
        <asp:Parameter Name="original_DOB" Type="DateTime" />
        <asp:Parameter Name="original_GENDER" Type="String" />
        <asp:Parameter Name="original_EMAIL" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="PERSON_ID" Type="Decimal" />
        <asp:Parameter Name="FIRST_NAME" Type="String" />
        <asp:Parameter Name="LAST_NAME" Type="String" />
        <asp:Parameter Name="PHONE_NUMBER" Type="String" />
        <asp:Parameter Name="DOB" Type="DateTime" />
        <asp:Parameter Name="GENDER" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FIRST_NAME" Type="String" />
        <asp:Parameter Name="LAST_NAME" Type="String" />
        <asp:Parameter Name="PHONE_NUMBER" Type="String" />
        <asp:Parameter Name="DOB" Type="DateTime" />
        <asp:Parameter Name="GENDER" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="original_PERSON_ID" Type="Decimal" />
        <asp:Parameter Name="original_FIRST_NAME" Type="String" />
        <asp:Parameter Name="original_LAST_NAME" Type="String" />
        <asp:Parameter Name="original_PHONE_NUMBER" Type="String" />
        <asp:Parameter Name="original_DOB" Type="DateTime" />
        <asp:Parameter Name="original_GENDER" Type="String" />
        <asp:Parameter Name="original_EMAIL" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging">
    <EditItemTemplate>
        PERSON_ID:
        <asp:Label ID="PERSON_IDLabel1" runat="server" Text='<%# Eval("PERSON_ID") %>' />
        <br />
        FIRST_NAME:
        <asp:TextBox ID="FIRST_NAMETextBox" runat="server" Text='<%# Bind("FIRST_NAME") %>' />
        <br />
        LAST_NAME:
        <asp:TextBox ID="LAST_NAMETextBox" runat="server" Text='<%# Bind("LAST_NAME") %>' />
        <br />
        PHONE_NUMBER:
        <asp:TextBox ID="PHONE_NUMBERTextBox" runat="server" Text='<%# Bind("PHONE_NUMBER") %>' />
        <br />
        DOB:
        <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
        <br />
        GENDER:
        <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' />
        <br />
        EMAIL:
        <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
        <br />
        <asp:LinkButton cssClass="btn btn-success" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton cssClass="btn btn-success" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        PERSON_ID:
        <asp:TextBox ID="PERSON_IDTextBox" runat="server" Text='<%# Bind("PERSON_ID") %>' />
        <br />
        FIRST_NAME:
        <asp:TextBox ID="FIRST_NAMETextBox" runat="server" Text='<%# Bind("FIRST_NAME") %>' />
        <br />
        LAST_NAME:
        <asp:TextBox ID="LAST_NAMETextBox" runat="server" Text='<%# Bind("LAST_NAME") %>' />
        <br />
        PHONE_NUMBER:
        <asp:TextBox ID="PHONE_NUMBERTextBox" runat="server" Text='<%# Bind("PHONE_NUMBER") %>' />
        <br />
        DOB:
        <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
        <br />
        GENDER:
        <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' />
        <br />
        EMAIL:
        <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
        <br />
        <asp:LinkButton cssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton  cssClass="btn btn-success" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        &nbsp;<asp:LinkButton cssClass="btn btn-success" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="ADD NEW PERSON" />
    </ItemTemplate>
</asp:FormView>

</asp:Content>
