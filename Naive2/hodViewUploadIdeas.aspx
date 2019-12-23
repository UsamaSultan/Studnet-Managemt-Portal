<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="hodViewUploadIdeas.aspx.cs" Inherits="Naive2.hodViewUploadIdeas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
       <p class="h1" id="mainHeading">Uploaded Ideas</p>
        <br/>
        <table class="table">
            <asp:Repeater ID="uploadedIdeasRepeater" runat="server" OnItemCommand="uploadedIdeasRepeater_ItemCommand">
                <HeaderTemplate>
                  <thead class="thead-dark">  
                    <tr>
                        <th scope="col">Title</th>
                        <th scope="col">Domain</th>
                        <th scope="col">Details</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
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
                        <td>
                            <asp:Button ID="btnEdit"  runat="server" Text="Edit" CommandName="editclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                        <td>
                            <asp:Button ID="btnDelete"  runat="server" Text="Delete" CommandName="deleteclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
        </div>

</asp:Content>
