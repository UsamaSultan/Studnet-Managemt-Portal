<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminSearchStudent.aspx.cs" Inherits="Naive2.adminSearchStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" role="form" class="form-horizontal" runat="server">
        <div class="container">
            <p class="h1" id="mainHeading">Search Student</p>

            <div class="form-check form-check-inline">
                <asp:Radiobutton class="form-check-input" id="searchRollNo" groupname="studentsearch" runat="server" />
                <label class="form-check-label" for="inlineRadio2">Search By Roll No</label>
            </div>
            <div class="form-check form-check-inline">
                <asp:Radiobutton class="form-check-input" id="searchName" groupname="studentsearch" runat="server" />
                <label class="form-check-label" for="inlineRadio2">Search By Name</label>
            </div>
            <br />
            <br />
            <div class="form-group row">
                <div class="form-check form-check-inline">
                    <div class="col-sm-8">
                        <asp:Textbox class="form-control" id="txtSearch" placeholder="Search" runat="server"></asp:Textbox>
                    </div>
                    <div class="col-sm-4">
                        <asp:Button  class="btn btn-default" Text="Search" id="btnSearch" runat="server"></asp:Button>
                    </div>
                </div>
            </div>

            <br />
            <table class="table">
                <asp:repeater id="studentRepeater" runat="server" onitemcommand="studentRepeater_ItemCommand">
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
                            <asp:Button ID="btnEdit"  runat="server" Text="Edit" CommandName="editclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                        <td>
                            <asp:Button ID="btnDelete"  runat="server" Text="Delete" CommandName="deleteclick" commandargument='<%#Eval("Id") %>'/>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:repeater>
            </table>
        </div>
    </form>

</asp:Content>
