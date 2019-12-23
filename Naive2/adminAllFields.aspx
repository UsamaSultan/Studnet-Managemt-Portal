<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminAllFields.aspx.cs" Inherits="Naive2.adminAllFields" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" role="form" class="form-horizontal" runat="server">
    <div class="container">
       <p class="h1" id="mainHeading">View All Fields</p>
        <br/>
        <table class="table">
            <asp:Repeater ID="adminRepeater" runat="server" OnItemCommand="fieldRepeater_ItemCommand">
                <HeaderTemplate>
                  <thead class="thead-dark">  
                    <tr>
                        <th scope="col">Field Name</th>
                        <th scope="col">Edit</th>
                    </tr>
                  </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblField" runat="server" Text='<%#Eval("Fields") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="btnEdit"  runat="server" Text="Edit" CommandName="editclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>
</form>

</asp:Content>
