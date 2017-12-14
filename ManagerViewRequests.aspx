<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="ManagerViewRequests.aspx.cs" Inherits="ManagerViewRequests" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div id="form1" runat="server">
    <p>
        <br />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Manager profile" />
    </p>
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="View Requests"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enter your Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="173px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" Text="View" onclick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="start_date,applicant,username" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="start_date" HeaderText="start_date" ReadOnly="True" 
                    SortExpression="start_date" />
                <asp:BoundField DataField="applicant" HeaderText="applicant" ReadOnly="True" 
                    SortExpression="applicant" />
                <asp:BoundField DataField="end_date" HeaderText="end_date" 
                    SortExpression="end_date" />
                <asp:BoundField DataField="request_date" HeaderText="request_date" 
                    SortExpression="request_date" />
                <asp:BoundField DataField="total_days" HeaderText="total_days" ReadOnly="True" 
                    SortExpression="total_days" />
                <asp:BoundField DataField="hr_employee" HeaderText="hr_employee" 
                    SortExpression="hr_employee" />
                <asp:BoundField DataField="hr_response" HeaderText="hr_response" 
                    SortExpression="hr_response" />
                <asp:BoundField DataField="manager" HeaderText="manager" 
                    SortExpression="manager" />
                <asp:BoundField DataField="manager_response" HeaderText="manager_response" 
                    SortExpression="manager_response" />
                <asp:BoundField DataField="manager_reason" HeaderText="manager_reason" 
                    SortExpression="manager_reason" />
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" 
                    SortExpression="username" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyDbConn %>" 
            SelectCommand="View_New_Request" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="username" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Rspond To Reuests"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Enter Your username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="176px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Enter applicant username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="172px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Respond"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="175px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Reason"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" ontextchanged="TextBox5_TextChanged" 
            Width="176px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Respond" />
    
    </div>
    </div>
</asp:Content>


