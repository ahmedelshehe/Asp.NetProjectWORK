<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update_Task_Status_To_Fixed.aspx.cs" MasterPageFile="~/Site.master" Inherits="Update_Task_Status_To_Fixed" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <br /><br />
        <br /><br />
        <br /><br />

        <div style="height: 38px">
            Update_Task_Status_To_Fixed
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 9px" Width="155px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 11px" Text="Update" />
        </div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" SelectCommand="Update_Task_Status_To_Fixed" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="employee" SessionField="employee" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>