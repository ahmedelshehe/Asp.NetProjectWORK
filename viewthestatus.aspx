<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewthestatus.aspx.cs" MasterPageFile="~/Site.master" Inherits="viewthestatus" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <div id="form1" runat="server">
        <p>
            hr_response<asp:TextBox ID="TextBox3" runat="server" style="margin-left: 42px"></asp:TextBox>
        </p>
        manager_response<asp:TextBox ID="TextBox4" runat="server" style="margin-left: 43px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<div style="height: 294px">
            score<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 15px" Width="349px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 4px" Text="View Score" />
            <br />
            score<asp:TextBox ID="TextBox2" runat="server" style="margin-left: 44px"></asp:TextBox>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" SelectCommand="jobseekerscore" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="score" SessionField="score" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="displaying status" Width="136px" />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="username,code,email,title" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                    <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="title" HeaderText="title" ReadOnly="True" SortExpression="title" />
                    <asp:BoundField DataField="score" HeaderText="score" SortExpression="score" />
                    <asp:BoundField DataField="hr_response" HeaderText="hr_response" SortExpression="hr_response" />
                    <asp:BoundField DataField="manager_response" HeaderText="manager_response" SortExpression="manager_response" />
                    <asp:BoundField DataField="score1" HeaderText="score1" SortExpression="score1" />
                    <asp:BoundField DataField="hr_response1" HeaderText="hr_response1" SortExpression="hr_response1" />
                    <asp:BoundField DataField="manager_response1" HeaderText="manager_response1" SortExpression="manager_response1" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" SelectCommand="displayingstatus" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="score" SessionField="score" Type="Int32" />
                    <asp:SessionParameter DefaultValue="" Name="hrresponse" SessionField="hrresponse" Type="String" />
                    <asp:Parameter DefaultValue="managerresponse" Name="managerresponse" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div></asp:Content>

