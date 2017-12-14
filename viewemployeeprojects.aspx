<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="viewemployeeprojects.aspx.cs" Inherits="viewemployeeprojects" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <div style="height: 215px">
            <asp:Label ID="Label1" runat="server" Text="EmployeeProjects"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 17px" Text="View" />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Height="173px" Width="229px">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" SelectCommand="EmployeeProjects" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
