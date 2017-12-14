<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="mailBox.aspx.cs" Inherits="mailBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server" ClientIDMode="Static">
    <h1>Mail Box</h1>
    <br /><br />
    <asp:Button id="Inbox" runat="server"  Text="Inbox" OnClick="view_inbox"  CssClass="btn btn-default" Enabled="true" Height="59px" Width="203px" BorderColor="#FFFF66"  />
    <br /> <br />
    <div id="form1" runat="server" visible="true" text-align="center">

    </div>
    <br /> <br />
    <asp:Button id="Outbox" runat="server"  Text="Outbox"  CssClass="btn btn-default" Enabled="true" Height="59px" Width="202px"  />
    <br /><br />
    <asp:Button id="SendEmail" runat="server"  Text="Send An Email"  CssClass="btn btn-default" OnClick="sendmail" Enabled="true" Height="59px" Width="198px"  />
    <br /><br />
    
</asp:Content>

