<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="WebForm3.aspx.cs" Inherits="WebForm3" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource3">
            </asp:GridView>
            <br />
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
    </div></asp:Content>

