<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Update_Task_Status_To_Assigned.aspx.cs" Inherits="Update_Task_Status_To_Assigned" %>

<asp:content ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server" >
        <div>
            Update_Task_Status_To_Assigned<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 4px" Width="185px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" style="margin-left: 9px" Text="Update" />
        </div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" SelectCommand="Update_Task_Status_To_Assigned" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="employee" Name="employee" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:content>