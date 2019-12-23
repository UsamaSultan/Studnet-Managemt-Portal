<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="hodViewRegistrationRequest.aspx.cs" Inherits="Naive2.hodViewRegistrationRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" role="form" class="form-horizontal" runat="server">
    <div class="container">
       <p class="h1" id="mainHeading">FYP Registration Requests</p>
        <br/>
        <table class="table">
            <asp:Repeater ID="supervisionRequestRepeater" runat="server" OnItemCommand="supervisionRequestRepeater_ItemCommand">
                <HeaderTemplate>
                  <thead class="thead-dark">  
                    <tr>
                        <th scope="col">Roll No</th>
                        <th scope="col">Batch</th>
                        <th scope="col">Earned Credits</th>
                        <th scope="col">Warning Count</th>
                        <th scope="col">Cgpa</th>
                        <th scope="col">Accept</th>
                        <th scope="col">Reject</th>
                    </tr>
                  </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblRollNO" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblBatch" runat="server" Text='<%#Eval("Batch") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblEarnedCredits" runat="server" Text='<%#Eval("EarnedCredits") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="WarningCount" runat="server" Text='<%#Eval("WarningCount") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Cgpa" runat="server" Text='<%#Eval("CGPA") %>'></asp:Label>
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
