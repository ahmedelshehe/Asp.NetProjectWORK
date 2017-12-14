<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="searchjobs.aspx.cs" Inherits="searchjobs" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <div id="form1" runat="server">
    <div>
    
    </div>
    <p>
        Search for job</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Enter job"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="152px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="search" />
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="email,code,email1,title,code1,email2" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" 
                SortExpression="email" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="domain" HeaderText="domain" 
                SortExpression="domain" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="vision" HeaderText="vision" 
                SortExpression="vision" />
            <asp:BoundField DataField="specialization" HeaderText="specialization" 
                SortExpression="specialization" />
            <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" 
                SortExpression="code" />
            <asp:BoundField DataField="name1" HeaderText="name1" SortExpression="name1" />
            <asp:BoundField DataField="email1" HeaderText="email1" ReadOnly="True" 
                SortExpression="email1" />
            <asp:BoundField DataField="title" HeaderText="title" ReadOnly="True" 
                SortExpression="title" />
            <asp:BoundField DataField="short_description" HeaderText="short_description" 
                SortExpression="short_description" />
            <asp:BoundField DataField="detailed_description" 
                HeaderText="detailed_description" SortExpression="detailed_description" />
            <asp:BoundField DataField="min_experience" HeaderText="min_experience" 
                SortExpression="min_experience" />
            <asp:BoundField DataField="salary" HeaderText="salary" 
                SortExpression="salary" />
            <asp:BoundField DataField="deadline" HeaderText="deadline" 
                SortExpression="deadline" />
            <asp:BoundField DataField="no_of_vacancies" HeaderText="no_of_vacancies" 
                SortExpression="no_of_vacancies" />
            <asp:BoundField DataField="working_hours" HeaderText="working_hours" 
                SortExpression="working_hours" />
            <asp:BoundField DataField="code1" HeaderText="code1" ReadOnly="True" 
                SortExpression="code1" />
            <asp:BoundField DataField="email2" HeaderText="email2" ReadOnly="True" 
                SortExpression="email2" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MyDbConn %>" 
        SelectCommand="lookforjob" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="keyword" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>


    

