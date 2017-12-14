<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="viewApplication.aspx.cs" Inherits="viewApplication" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="View Applications"></asp:Label>
    
    </div>
    <asp:Label ID="Label2" runat="server" Text="Enter Job"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="155px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" style="margin-left: 0px" Text="View" 
        Width="58px" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="first_name" HeaderText="first_name" 
                SortExpression="first_name" />
            <asp:BoundField DataField="lastname_name" HeaderText="lastname_name" 
                SortExpression="lastname_name" />
            <asp:BoundField DataField="age" HeaderText="age" ReadOnly="True" 
                SortExpression="age" />
            <asp:BoundField DataField="years_of_experience" 
                HeaderText="years_of_experience" SortExpression="years_of_experience" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="min_experience" HeaderText="min_experience" 
                SortExpression="min_experience" />
            <asp:BoundField DataField="score" HeaderText="score" SortExpression="score" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MyDbConn %>" 
        SelectCommand="View_Application" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="job" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Application respond"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Job seeker username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
        Width="172px"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Response"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Width="170px"></asp:TextBox>
    <br />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="Respond" />
    <br />
    <br />
    </div>
</asp:Content>
