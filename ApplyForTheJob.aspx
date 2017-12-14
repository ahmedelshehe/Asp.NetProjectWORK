<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="ApplyForTheJob.aspx.cs" Inherits="ApplyForTheJob" %>

    <asp:Content runat="server" ContentPlaceHolderID="MainContent">
        <div id="form1" runat="server" height="838px" >
        <div style="height: 185px">
            <br />
            username&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            yearsofexperience&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Width="171px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
        </div>
        title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Apply" style="margin-left: 0px" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource3">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConn %>" SelectCommand="applyforthejob" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
                <asp:SessionParameter Name="yearsofexperience" SessionField="yearsofexperience" Type="Int32" />
                <asp:SessionParameter Name="jobtitle" SessionField="jobtitle" Type="String" />
                <asp:SessionParameter Name="dcode" SessionField="dcode" Type="String" />
                <asp:SessionParameter Name="cemail" SessionField="cemail" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </asp:Content>
