<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="beingastaffmember.aspx.cs" Inherits="beingastaffmember" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <div style="height: 653px">
            username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 38px"></asp:TextBox>
            <br />
            <br />
            annual_leave&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 36px"></asp:TextBox>
            <br />
            <br />
            company_email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 37px"></asp:TextBox>
            <br />
            <br />
            day_off&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 37px"></asp:TextBox>
            <br />
            <br />
            <br />
            salary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 35px"></asp:TextBox>
            <br />
            <br />
            <br />
            code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 40px"></asp:TextBox>
            <br />
            <br />
            email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 37px"></asp:TextBox>
            <br />
            <br />
            title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 37px"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="code" HeaderText="code" InsertVisible="False" ReadOnly="True" SortExpression="code" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" SelectCommand="beingastaffmember" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                    <asp:SessionParameter Name="annual_leave" SessionField="annual_leave" Type="Int32" />
                    <asp:SessionParameter Name="company_email" SessionField="company_email" Type="String" />
                    <asp:SessionParameter Name="day_off" SessionField="day_off" Type="String" />
                    <asp:SessionParameter Name="salary" SessionField="salary" Type="Decimal" />
                    <asp:SessionParameter Name="code" SessionField="code" Type="Int32" />
                    <asp:SessionParameter Name="email" SessionField="email" Type="String" />
                    <asp:SessionParameter Name="title" SessionField="title" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Click" />
        </div>
    </div>
</asp:Content>
