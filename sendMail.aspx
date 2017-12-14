<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sendMail.aspx.cs" Inherits="sendMail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server" ClientIDMode="Static">
    <br /> <br />
    <label>Send To :</label>
    <asp:TextBox runat="server" id="recipient"  type="text" Width="475px" />
    <br /> <br />
    <label>Subject :</label>
    <asp:TextBox runat="server" id="subject"  type="text" Width="475px" />
    <br /> <br />
    <br /> <br />
    <label>Body :</label>
    <asp:TextBox runat="server" id="body"  type="text" Height="143px" Width="489px" />
    <br /> <br />
    <asp:Button id="send" runat="server"   Text="Send" OnClick="sendm" CssClass="btn btn-default"  />
</asp:Content>

