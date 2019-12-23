<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminAddField.aspx.cs" Inherits="Naive2.adminAddField" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <form id="form1" role="form" class="form-horizontal" runat="server">
            <p class="h1" id="mainHeading">Add Field</p>
            
            <br/>
            <div class="form-group row">
                <asp:Label for="Field" class="col-sm-2 col-form-label" runat="server">Field Name</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" id="Field" placeholder="Field Name" runat="server"></asp:Textbox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2"></div>
                <div class="col-sm-offset-2 col-sm-7">
                    <asp:Button class="btn btn-default" ID="btnAddFild" OnClick="btnAddFild_Click" Text="Add Field" runat="server"/>
                </div>
             </div>
        </form>
    </div>
</asp:Content>
