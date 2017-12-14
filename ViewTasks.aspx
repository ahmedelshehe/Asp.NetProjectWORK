<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="ViewTasks.aspx.cs" Inherits="ViewTasks" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server" direction="ltr" >
        <br /> <br />
        <br /><br />

    <p>
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            Text="Manager Profile" />
        <br />
    </p>
    <div>
    
        View Tasks<br />
    
    </div>
    <asp:Label ID="Label2" runat="server" Text="Enter Project name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Enter status"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Width="181px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="View" onclick="Button1_Click" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="name,company,project" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" 
                SortExpression="name" />
            <asp:BoundField DataField="company" HeaderText="company" ReadOnly="True" 
                SortExpression="company" />
            <asp:BoundField DataField="project" HeaderText="project" ReadOnly="True" 
                SortExpression="project" />
            <asp:BoundField DataField="deadline" HeaderText="deadline" 
                SortExpression="deadline" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:BoundField DataField="reg_employee" HeaderText="reg_employee" 
                SortExpression="reg_employee" />
            <asp:BoundField DataField="manager" HeaderText="manager" 
                SortExpression="manager" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MyDbConn %>" 
        SelectCommand="View_Tasks" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="project" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="Status" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Accept" />
    
    <br />
    <p>
        <asp:Label ID="Label3" runat="server" Text="Enter new deadline"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="174px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Reject" 
            Width="60px" />
    
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Change Employee "></asp:Label>
    
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Enter username"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Change" />
    
    </p>
    <p>
        &nbsp;</p>
    </div>
</asp:Content>
