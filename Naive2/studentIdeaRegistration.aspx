<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="studentIdeaRegistration.aspx.cs" Inherits="Naive2.studentIdeaRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" role="form" class="form-horizontal" runat="server">
        <div class="container">
            <p class="h1" id="mainHeading">Idea Registration</p>
            <br />
            <br />
            <div class="form-group row">
                <asp:Label for="ProjectTitle" class="col-sm-2 col-form-label" runat="server">Project Title</asp:Label>
                <div class="col-sm-8">
                    <asp:TextBox class="form-control" ID="ProjectTitle" placeholder="Project Title" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="ProjectDomain" class="col-sm-2 col-form-label" runat="server">Project Domain</asp:Label>
                <div class="col-sm-8">
                    <asp:DropDownList class="form-control" ID="ProjectDomain" runat="server"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="Description" class="col-sm-2 col-form-label" runat="server">Project Description</asp:Label>
                <div class="col-sm-8">
                    <textarea id="txtDescription" maxlength="1000" class="form-control" cols="50" rows="5" runat="server"></textarea>
                </div>
            </div>
            <fieldset>
                <legend>Group Members:</legend>
                <div class="form-group row">
                    <asp:Label for="Member1" class="col-sm-2 col-form-label" runat="server">Student 1</asp:Label>
                    <div class="col-sm-8">
                       <asp:Label id="Member1" runat="server">Student1</asp:Label>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label for="Member2" class="col-sm-2 col-form-label" runat="server">Student 2</asp:Label>
                    <div class="col-sm-8">
                       <asp:DropDownList id="Member2" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label for="Member3" class="col-sm-2 col-form-label" runat="server">Student 3</asp:Label>
                    <div class="col-sm-8">
                       <asp:DropDownList id="Member3" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="form-group row">
                    <asp:Label for="Member4" class="col-sm-2 col-form-label" runat="server">Student 4</asp:Label>
                    <div class="col-sm-8">
                       <asp:DropDownList id="Member4" runat="server"></asp:DropDownList>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Supervisor:</legend>
                <div class="form-group row">
                    <asp:Label for="Supervisor" class="col-sm-2 col-form-label" runat="server">Supervisor Name</asp:Label>
                    <div class="col-sm-8">
                       <asp:DropDownList id="Supervisor" runat="server"></asp:DropDownList>
                    </div>
                </div>
            </fieldset>

             <fieldset>
                <legend>CoSupervisor:</legend>
                <div class="form-group row">
                    <asp:Label for="CoSupervisor" class="col-sm-2 col-form-label" runat="server">CoSupervisor Name</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox class="form-control" ID="CoSupervisor" placeholder="CoSupervisor Name" runat="server"></asp:TextBox>
                    </div>
                </div>
            </fieldset>

            <div class="form-group row">
                <div class="col-sm-2"></div>
                <div class="col-sm-offset-2 col-sm-7">
                    <asp:Button class="btn btn-default" Text="Send Request" runat="server" />
                </div>
            </div>

        </div>
    </form>

</asp:Content>
