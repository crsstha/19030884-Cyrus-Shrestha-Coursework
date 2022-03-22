<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="_19030884_Cyrus_Shrestha_Coursework.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:#336666">STUDENT</h1>
<asp:FormView ID="FormView1" CssClass="form-control text-start font-weight-bold" runat="server" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        STUDENT_ID:
        <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
        <br />
        ADDMISSION_DATE:
        <asp:TextBox ID="ADDMISSION_DATETextBox" runat="server" Text='<%# Bind("ADDMISSION_DATE") %>' />
        <br />
        COLLEGE_EMAIL:
        <asp:TextBox ID="COLLEGE_EMAILTextBox" runat="server" Text='<%# Bind("COLLEGE_EMAIL") %>' />
        <br />
        SECTION:
        <asp:TextBox ID="SECTIONTextBox" runat="server" Text='<%# Bind("SECTION") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        STUDENT_ID:
        <asp:DropDownList CssClass="form-select" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="NAME" DataValueField="PERSON_ID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" SelectedValue='<%# Bind("STUDENT_ID") %>'>
        </asp:DropDownList>
        <br />
        ADDMISSION_DATE:
        <asp:TextBox CssClass="form-control" ID="ADDMISSION_DATETextBox" runat="server" Text='<%# Bind("ADDMISSION_DATE") %>' />
        <br />
        COLLEGE_EMAIL:
        <asp:TextBox CssClass="form-control" ID="COLLEGE_EMAILTextBox" runat="server" Text='<%# Bind("COLLEGE_EMAIL") %>' />
        <br />
        SECTION:
        <asp:TextBox CssClass="form-control" ID="SECTIONTextBox" runat="server" Text='<%# Bind("SECTION") %>' />
        <br />
        <asp:LinkButton CssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>

        &nbsp;<asp:LinkButton CssClass="btn btn-success" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" CssClass="table table-secondary-bg table striped table-bordered table-hover" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
    <Columns>
        <asp:CommandField  ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ControlStyle-CssClass="btn btn-success" ControlStyle-BackColor="#336666"/>
        <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
        <asp:BoundField DataField="ADDMISSION_DATE" HeaderText="ADDMISSION_DATE" SortExpression="ADDMISSION_DATE" />
        <asp:BoundField DataField="COLLEGE_EMAIL" HeaderText="COLLEGE_EMAIL" SortExpression="COLLEGE_EMAIL" />
        <asp:BoundField DataField="SECTION" HeaderText="SECTION" SortExpression="SECTION" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND ((&quot;ADDMISSION_DATE&quot; = :original_ADDMISSION_DATE) OR (&quot;ADDMISSION_DATE&quot; IS NULL AND :original_ADDMISSION_DATE IS NULL)) AND ((&quot;COLLEGE_EMAIL&quot; = :original_COLLEGE_EMAIL) OR (&quot;COLLEGE_EMAIL&quot; IS NULL AND :original_COLLEGE_EMAIL IS NULL)) AND ((&quot;SECTION&quot; = :original_SECTION) OR (&quot;SECTION&quot; IS NULL AND :original_SECTION IS NULL))" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;ADDMISSION_DATE&quot;, &quot;COLLEGE_EMAIL&quot;, &quot;SECTION&quot;) VALUES (:STUDENT_ID, :ADDMISSION_DATE, :COLLEGE_EMAIL, :SECTION)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;ADDMISSION_DATE&quot; = :ADDMISSION_DATE, &quot;COLLEGE_EMAIL&quot; = :COLLEGE_EMAIL, &quot;SECTION&quot; = :SECTION WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND ((&quot;ADDMISSION_DATE&quot; = :original_ADDMISSION_DATE) OR (&quot;ADDMISSION_DATE&quot; IS NULL AND :original_ADDMISSION_DATE IS NULL)) AND ((&quot;COLLEGE_EMAIL&quot; = :original_COLLEGE_EMAIL) OR (&quot;COLLEGE_EMAIL&quot; IS NULL AND :original_COLLEGE_EMAIL IS NULL)) AND ((&quot;SECTION&quot; = :original_SECTION) OR (&quot;SECTION&quot; IS NULL AND :original_SECTION IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
        <asp:Parameter Name="original_ADDMISSION_DATE" Type="DateTime" />
        <asp:Parameter Name="original_COLLEGE_EMAIL" Type="String" />
        <asp:Parameter Name="original_SECTION" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
        <asp:Parameter Name="ADDMISSION_DATE" Type="DateTime" />
        <asp:Parameter Name="COLLEGE_EMAIL" Type="String" />
        <asp:Parameter Name="SECTION" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ADDMISSION_DATE" Type="DateTime" />
        <asp:Parameter Name="COLLEGE_EMAIL" Type="String" />
        <asp:Parameter Name="SECTION" Type="String" />
        <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
        <asp:Parameter Name="original_ADDMISSION_DATE" Type="DateTime" />
        <asp:Parameter Name="original_COLLEGE_EMAIL" Type="String" />
        <asp:Parameter Name="original_SECTION" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" OnSelecting="SqlDataSource2_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT &quot;FIRST_NAME&quot;|| ' '||&quot;LAST_NAME&quot; AS NAME , &quot;PERSON_ID&quot; FROM &quot;COLLEGE_MEMBER&quot; WHERE PERSON_ID NOT IN (SELECT STUDENT_ID FROM STUDENT)"></asp:SqlDataSource>
</asp:Content>
