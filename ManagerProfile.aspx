<%@ Page Title="Manager Profile" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="ManagerProfile.aspx.cs" Inherits="ManagerProfile" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    
    <div id="form1" runat="server">
    <div>
    <br /> <br />
    <br /> <br />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="View new Requests" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            Text="View Applications" />
        <br />
        <br />
        <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
            Text="Create Project" />
        <br />
        <br />
        <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
            Text="Define Task" />
        <br />
        <br />
        <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
            Text="View Tasks" />
        <br />
        <br />
        <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
            Text="Delete Employee" />
    
    </div>
    <br />
    <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
        Text="Assign employee in project" />
    </div>
</asp:Content>
