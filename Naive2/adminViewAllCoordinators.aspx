<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminViewAllCoordinators.aspx.cs" Inherits="Naive2.adminViewAllCoordinators" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" role="form" class="form-horizontal" runat="server">
    <div class="container">
       <p class="h1" id="mainHeading">View All Coordinators</p>
        <br/>
        <table class="table">
            <asp:Repeater ID="coordinatorRepeater" runat="server" OnItemCommand="coordinatorRepeater_ItemCommand">
                <HeaderTemplate>
                  <thead class="thead-dark">  
                    <tr>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Picture</th>
                        <th scope="col">Details</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                    </tr>
                  </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblFirstName" runat="server" Text='<%#Eval("FirstName") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblLastName" runat="server" Text='<%#Eval("LastName") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Image ImageUrl='<%#Eval("PicUrl") %>' Style="width:100px; height=100px;" runat="server"/>
                        </td>
                        <td>
                            <asp:Button ID="btnDetails" runat="server" Text="Details" CommandName="detailclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                        <td>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="editclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                        <td>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="deleteclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
</form>

</asp:Content>
