<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sProfile.aspx.cs" Inherits="sProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server" ClientIDMode="Static">
    <div>
        <h1>Your Profile</h1>
    </div>
    <div id="form1" runat="server">
        <h2>Attendance</h2>

    <asp:label id="warning" runat="server" ForeColor="Maroon">No Check in Today</asp:label>  
        
        <br /> <br />
    <div class="col-md-offset-2 col-md-10">
        <asp:Button id="checkin" runat="server"  Text="Check in" OnClick="checkIn" CssClass="btn btn-default" Enabled="true" BorderColor="Lime" />
        <asp:Button id="checkout" runat="server"  Text="Check Out" OnClick="checkOut" CssClass="btn btn-default" Enabled="false" BorderColor="#FF3300" />
        
    </div>
        <br /> <br />
        
            
        
        </div>
    <asp:Button  runat="server"  Text="Attendance Records" OnClick="viewAttendance" CssClass="btn btn-default" BorderColor="Black" />
            <asp:TextBox runat="server" id="date1"  type="date" BorderColor="#00CC00" >Start Date </asp:TextBox>
            <asp:TextBox runat="server" id="date2"  type="date" BorderColor="#CC0000" >End Date</asp:TextBox>
    <div id="form2" runat="server" visible="false">
        

    </div>
     <br /> 
    <asp:Button ID="Button4" runat="server" BackColor="#66CCFF" BorderColor="Black" Height="67px" OnClick="viewAnn" Text="Announcements" Width="268px" />
    <br />
    <div id="form3" runat="server">
        
        <div class="col-md-offset-2 col-md-10">
            <h2>Requests</h2>
            <br /> <br />        
            </div>
        <br /> <br />
        <label>Submit A Request</label>
        <br /> <br />
        <asp:Button ID="Button1" runat="server" Text="Requests Page" OnClick="request" CssClass="btn btn-default" BorderColor="Yellow" Height="90px" Width="257px" />
        <br /> <br />
        
    </div>
    <div id="form4" runat="server">
        <div class="col-md-offset-2 col-md-10">
            <asp:Button ID="Button2" runat="server" Text="View Request" OnClick="viewRequest" CssClass="btn btn-default" Height="82px" Width="257px" />
        </div>

    </div>
    <br /><br />
    <div >
            <asp:Button ID="Button3" runat="server" Text="Delete Outdated " OnClick="deleteRequests" CssClass="btn btn-default" BorderColor="Red" Height="69px" Width="259px" />
        </div>


</asp:Content>

