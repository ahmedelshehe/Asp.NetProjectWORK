
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="viewinterviewquestions.aspx.cs" Inherits="viewinterviewquestions" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <div style="height: 504px">
            ViewInterviewQuestions<asp:button runat="server" text="View" OnClick="Unnamed1_Click" style="margin-left: 37px" />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="code" HeaderText="code" InsertVisible="False" ReadOnly="True" SortExpression="code" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="number" HeaderText="number" InsertVisible="False" ReadOnly="True" SortExpression="number" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" SelectCommand="viewinterviewquestions" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
    
