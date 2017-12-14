<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br /> <br />
    <h1>Choose Request Type</h1>
    <br /> <br />
    <div class="col-md-offset-2 col-md-10">
        <asp:Button id="tripRequest" runat="server"  Text="Trip Request" OnClick="trip_request" CssClass="btn btn-default" Height="63px" Width="184px" BorderColor="#0033CC"  />
        <asp:Button id="leaveRequest" runat="server"  Text="Leave Request" OnClick="leave_request" CssClass="btn btn-default" Height="61px" Width="208px" BorderColor="#FFFF66"  />
        
    </div>
    <br /> <br />
    <div id="form1" runat="server" visible="false">
    <h1><strong>Submit Trip Request</strong></h1>
    <br /> <br />
    <label>Start Date:</label>
    <asp:TextBox runat="server" id="startdate"  type="date" />
    <br /> <br />
    <label>End Date:</label>
    <asp:TextBox runat="server" id="enddate"  type="date" />
    <br /> <br />
    <label>Destination :</label>
    <asp:TextBox runat="server" id="destination"  type="text" />
    <br /> <br />
    <label>Purpose :</label>
    <asp:TextBox runat="server" id="purpose"  type="text" />
    <br /> <br />
    <asp:Button id="trequest" runat="server"  OnClick="submit_trip_request" Text="Submit Request"  CssClass="btn btn-default"  />
        </div>
    <div id="form2" runat="server" visible="false">
    <h1><strong>Submit Leave Request</strong></h1>
    <br /> <br />
    <label>Start Date:</label>
    <asp:TextBox runat="server" id="startdate2"  type="date" />
    <br /> <br />
    <label>End Date:</label>
    <asp:TextBox runat="server" id="enddate2"  type="date" />
    <br /> <br />
    <label>Type :</label>
    <asp:TextBox runat="server" id="type"  type="text" />
    
    <br /> <br />
    <asp:Button id="Button2" runat="server"  OnClick="submit_leave_request" Text="Submit Request"  CssClass="btn btn-default"  />
        </div>

</asp:Content>

