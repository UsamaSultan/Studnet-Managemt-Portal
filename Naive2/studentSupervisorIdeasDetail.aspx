<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="studentSupervisorIdeasDetail.aspx.cs" Inherits="Naive2.studentSupervisorIdeasDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" role="form" class="form-horizontal" runat="server">
        <div class="container">
            <p class="h1" id="mainHeading">Project Details</p>
            <br />
            <br />
            <div class="form-group row">
                <asp:Label for="ProjectTitle" class="col-sm-2 col-form-label" runat="server">Project Title</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" ID="ProjectTitle" runat="server"></asp:Label>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="ProjectDomain" class="col-sm-2 col-form-label" runat="server">Project Domain</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" ID="ProjectDomain" runat="server"></asp:Label>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="Description" class="col-sm-2 col-form-label" runat="server">Project Description</asp:Label>
                <div class="col-sm-8">
                    <textarea readonly id="txtDescription" maxlength="1000" class="form-control" cols="50" rows="5" runat="server"></textarea>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
