<%@ Page Title="" Language="C#" MasterPageFile="~/Coordinator.Master" AutoEventWireup="true" CodeBehind="coordinatorDetailRequest.aspx.cs" Inherits="Naive2.coordinatorDetailRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <form id="form1" role="form" class="form-horizontal" runat="server">
            <p class="h1" id="mainHeading">Request Details</p>
            <br />
            <br />
            <div class="form-group row">
                <asp:Label for="Titled" class="col-sm-2 col-form-label" runat="server">Title</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" ID="Titled" runat="server">Title</asp:Label>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="Domaind" class="col-sm-2 col-form-label" runat="server">Domain</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" ID="Domaind" runat="server">Domain</asp:Label>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="Description" class="col-sm-2 col-form-label" runat="server">Project Description</asp:Label>
                <div class="col-sm-8">
                    <textarea id="txtDescription" readonly maxlength="1000" class="form-control" cols="50" rows="5" runat="server"></textarea>
                </div>
            </div>
            <fieldset>
                <legend>Group Members:
                </legend>
                <div class="form-group row">
                    <asp:Label for="Member1" class="col-sm-2 col-form-label" runat="server">Student1</asp:Label>
                    <div class="col-sm-8">
                        <asp:Label class="form-control" ID="Member1" runat="server">Student1</asp:Label>
                    </div>
                </div>

                <div class="form-group row">
                    <asp:Label for="Member12" class="col-sm-2 col-form-label" runat="server">Student2</asp:Label>
                    <div class="col-sm-8">
                        <asp:Label class="form-control" ID="Member2" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="form-group row">
                    <asp:Label for="Member3" class="col-sm-2 col-form-label" runat="server">Student3</asp:Label>
                    <div class="col-sm-8">
                        <asp:Label class="form-control" ID="Member3" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="form-group row">
                    <asp:Label for="Member4" class="col-sm-2 col-form-label" runat="server">Student14</asp:Label>
                    <div class="col-sm-8">
                        <asp:Label class="form-control" ID="Member4" runat="server"></asp:Label>
                    </div>
                </div>
            </fieldset>
            <div class="form-check form-check-inline">
               <div class="col-sm-2">
               </div>
            </div>
            <div class="form-check form-check-inline">
                <asp:Button ID="btnAccept" class="btn btn-default" Text="Accept Request" runat="server" />
            </div>
            <div class="form-check form-check-inline">
                <asp:Button ID="btnReject" class="btn btn-default" Text="Reject Request" runat="server" />
            </div>
            <br/>
            <br/>
            <br/>
            <br/>
        </form>
    </div>
</asp:Content>
