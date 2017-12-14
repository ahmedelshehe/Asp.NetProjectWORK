<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="viewemployeetasks.aspx.cs" Inherits="viewemployeetasks" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <div style="height: 471px">
            Employee Tasks<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 11px" Text="View" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="name,company,project,username" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                    <asp:BoundField DataField="company" HeaderText="company" ReadOnly="True" SortExpression="company" />
                    <asp:BoundField DataField="project" HeaderText="project" ReadOnly="True" SortExpression="project" />
                    <asp:BoundField DataField="deadline" HeaderText="deadline" SortExpression="deadline" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:BoundField DataField="reg_employee" HeaderText="reg_employee" SortExpression="reg_employee" />
                    <asp:BoundField DataField="manager" HeaderText="manager" SortExpression="manager" />
                    <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" SelectCommand="Employee_Tasks" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
   

