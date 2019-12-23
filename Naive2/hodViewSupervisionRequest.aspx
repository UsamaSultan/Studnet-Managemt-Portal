<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="hodViewSupervisionRequest.aspx.cs" Inherits="Naive2.hodViewSupervisionRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
       <p class="h1" id="mainHeading">Supervision Requests</p>
        <br/>
        <table class="table">
            <asp:Repeater ID="supervisionRequestRepeater" runat="server" OnItemCommand="supervisionRequestRepeater_ItemCommand">
                <HeaderTemplate>
                  <thead class="thead-dark">  
                    <tr>
                        <th scope="col">Title</th>
                        <th scope="col">Details</th>
                        <th scope="col">Accept</th>
                        <th scope="col">Reject</th>
                    </tr>
                  </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblTitle" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="btnDetails" runat="server" Text="Details" CommandName="detailclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                        <td>
                            <asp:Button ID="btnAccept"  runat="server" Text="Accept" CommandName="acceptclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                        <td>
                            <asp:Button ID="btnReject"  runat="server" Text="Reject" CommandName="rejectclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>

</asp:Content>
