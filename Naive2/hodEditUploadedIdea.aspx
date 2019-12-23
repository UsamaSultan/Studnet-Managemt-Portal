<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="hodEditUploadedIdea.aspx.cs" Inherits="Naive2.hodEditUploadedIdea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <p class="h1" id="mainHeading">Edit Uploaded Project Idea</p>
            <br />
            <br />
            <div class="form-group row">
                <asp:Label for="ProjectTitle" class="col-sm-2 col-form-label" runat="server">Project Title</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" id="ProjectTitle" placeholder="Project Title" runat="server"></asp:Textbox>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="ProjectDomain" class="col-sm-2 col-form-label" runat="server">Project Domain</asp:Label>
                <div class="col-sm-8">
                    <asp:DropDownList class="form-control" id="ProjectDomain" runat="server"></asp:DropDownList>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="Description" class="col-sm-2 col-form-label" runat="server">Project Description</asp:Label>
                <div class="col-sm-8">
                    <textarea id="txtDescription" maxlength="1000" class="form-control" cols="50" rows="5" runat="server"></textarea>
                </div>
            </div>
             <div class="form-group row">
                <div class="col-sm-2"></div>
                <div class="col-sm-offset-2 col-sm-7">
                    <asp:Button class="btn btn-default" Text="Edit Idea" runat="server"/>
                </div>
             </div>
        </div>
</asp:Content>
