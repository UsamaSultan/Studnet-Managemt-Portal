<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor.Master" AutoEventWireup="true" CodeBehind="supervisorOtherSupervisorIdeas.aspx.cs" Inherits="Naive2.supervisorOtherSupervisorIdeas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" role="form" class="form-horizontal" runat="server">
    <div class="container">
       <p class="h1" id="mainHeading">Other Supervisor Ideas</p>
        <br/>
        <table class="table">
            <asp:Repeater ID="otherSupervisorIdeasRepeater" runat="server" OnItemCommand="otherSupervisorIdeasRepeater_ItemCommand">
                <HeaderTemplate>
                  <thead class="thead-dark">  
                    <tr>
                        <th scope="col">Title</th>
                        <th scope="col">Domain</th>
                        <th scope="col">Details</th>
                    </tr>
                  </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblTitle" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblDomain" runat="server" Text='<%#Eval("Domain") %>'></asp:Label>
                        </td>
                       
                        <td>
                            <asp:Button ID="btnDetails" runat="server" Text="Details" CommandName="detailclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
</form>
</asp:Content>
