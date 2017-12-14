<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="WebForm2.aspx.cs" Inherits="WebForm2" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <div>
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
    </div></asp:Content>

