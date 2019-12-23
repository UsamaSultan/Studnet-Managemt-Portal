<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminDetailCoordinator.aspx.cs" Inherits="Naive2.adminDetailCoordinator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <form id="form1" role="form" class="form-horizontal" runat="server">
            <p class="h1" id="mainHeading">Coordinaor Details</p>
            
             <div class="row">
                <div class="col-sm-9">
                </div>
                <div class="col-sm-3">
                    <a class="thumbnail">
                        <asp:Image Id="profilePic" ImageUrl="~/Assets/person.jpg" runat="server" />
                    </a>
                </div>
            </div>
            <br/>
            <div class="form-group row">
                <asp:Label for="FirstName" class="col-sm-2 col-form-label" runat="server">First Name</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="FirstName" runat="server">First Name</asp:Label>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="LastName" class="col-sm-2 col-form-label" runat="server">Last Name</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="LastName" runat="server">Last Name</asp:Label>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="DOB" class="col-sm-2 col-form-label" runat="server">DOB</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="DOB"  runat="server">DOB</asp:Label>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="CNIC" class="col-sm-2 col-form-label" runat="server">CNIC</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="CNIC" runat="server">CNIC</asp:Label>
                </div>
            </div>
               <div class="form-group row">
                <asp:Label for="Field" class="col-sm-2 col-form-label" runat="server">Field</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="Field"  runat="server">Field</asp:Label>                    
                </div>
            </div>
               <div class="form-group row">
                <asp:Label for="CoordinatedFYP" class="col-sm-2 col-form-label" runat="server">Coordinated FYP</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="CoordinatedFYP"  runat="server">Coordinated FYP</asp:Label>                    
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="Email" class="col-sm-2 col-form-label" runat="server">Email</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="Email" runat="server">Email</asp:Label>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="Contact" class="col-sm-2 col-form-label" runat="server">Contact</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="Contact"  runat="server">Contact</asp:Label>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="UserName" class="col-sm-2 col-form-label" runat="server">User Name</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="UserName" placeholder="User Name" runat="server">User Name</asp:Label>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
