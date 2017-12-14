<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <br /><br />
    <br /><br />
    <br /><br />

    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>Register with a Unique User Name</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            
                        </div>
                        <br /><br />
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Confirm Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password2" TextMode="Password" CssClass="form-control" />
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="first" CssClass="col-md-2 control-label">First Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="first" CssClass="form-control" />
                            
                        </div>
                        
                        <asp:Label runat="server" AssociatedControlID="middle" CssClass="col-md-2 control-label">Middle Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="middle" CssClass="form-control" />
                            
                        </div>
                        <asp:Label runat="server" AssociatedControlID="last" CssClass="col-md-2 control-label">Last Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="last" CssClass="form-control" />
                            
                        </div>
                        <asp:Label runat="server" AssociatedControlID="birth" CssClass="col-md-2 control-label">Birth Date</asp:Label>
                        <asp:TextBox runat="server" id="birth"  type="date" />
                        <br /><br />
                        <asp:Label runat="server" AssociatedControlID="exp" CssClass="col-md-2 control-label">Years of Experience</asp:Label>
                        <asp:TextBox runat="server" id="exp"  type="number" />
                        <br /><br />
                        <asp:Label runat="server" AssociatedControlID="pe" CssClass="col-md-2 control-label">Personal Email</asp:Label>
                        <asp:TextBox runat="server" ID="pe" CssClass="form-control" type="email"/>
                            
                        
                    </div>
                    
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server"  Text="Register" OnClick="register" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                
            </section>
        </div>

        
    </div>
</asp:Content>

