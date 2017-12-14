<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="deletejobapplication.aspx.cs" Inherits="deletejobapplication" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <div style="height: 489px">
            username<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 69px"></asp:TextBox>
            <br />
            <br />
            yearsofexperience<asp:TextBox ID="TextBox2" runat="server" style="margin-left: 66px"></asp:TextBox>
            <br />
            <br />
            jobtitle<asp:TextBox ID="TextBox3" runat="server" style="margin-left: 63px"></asp:TextBox>
            <br />
            <br />
            dcode<asp:TextBox ID="TextBox4" runat="server" style="margin-left: 63px; margin-bottom: 0px"></asp:TextBox>
            <br />
            <br />
            cemail<asp:TextBox ID="TextBox5" runat="server" style="margin-left: 65px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" />
            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" SelectCommand="deletejobapplication" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
                    <asp:SessionParameter Name="yearsofexperience" SessionField="yearsofexperience" Type="Int32" />
                    <asp:SessionParameter Name="jobtitle" SessionField="jobtitle" Type="String" />
                    <asp:SessionParameter Name="dcode" SessionField="dcode" Type="String" />
                    <asp:Parameter DefaultValue="email" Name="cemail" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
