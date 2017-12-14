<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="DeleteEmp.aspx.cs" Inherits="DeleteEmp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Delete employee"></asp:Label>
    
    </div>
    <asp:Label ID="Label2" runat="server" Text="Enter Employee username"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Delete" />
    </div>
</asp:Content>
