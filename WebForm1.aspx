<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="WebForm1.aspx.cs" Inherits="WebForm1" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <div style="height: 197px">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" SelectCommand="jobseekerscore" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="score" SessionField="score" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
