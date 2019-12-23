<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="hodRegistrationRequestDetails.aspx.cs" Inherits="Naive2.hodRegistrationRequestDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <form id="form1" role="form" class="form-horizontal" runat="server">
           <p class="h1" id="mainHeading">Register FYP Details</p>
            
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
                <asp:Label for="RollNo" class="col-sm-2 col-form-label" runat="server">Roll NO</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="RollNo" runat="server">Roll No</asp:Label>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="FirstName" class="col-sm-2 col-form-label" runat="server">First Name</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="FirstName"  runat="server">First Name</asp:Label>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="LastName" class="col-sm-2 col-form-label" runat="server">Last Name</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" id="LastName"  runat="server">Last Name</asp:Label>
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
                    <asp:Label class="form-control" id="CNIC"  runat="server">CNIC</asp:Label>
                </div>
            </div>
                 <div class="form-group row">
                <asp:Label for="Batch" class="col-sm-2 col-form-label" runat="server">Batch</asp:Label>
                <div class="col-sm-8">
                    <asp:Label  class="form-control" ID="Batch"  runat="server">Batch</asp:Label>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="CGPA" class="col-sm-2 col-form-label" runat="server">CGPA</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" ID="CGPA"  runat="server">CGPA</asp:Label>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="WarningCount" class="col-sm-2 col-form-label" runat="server">Warning Count</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" ID="WarningCount"  runat="server">Warning Count</asp:Label>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="CreditHours" class="col-sm-2 col-form-label" runat="server">Earned Credit Hours</asp:Label>
                <div class="col-sm-8">
                    <asp:Label class="form-control" ID="CreditHours"  runat="server">Earned Credit Hours</asp:Label>
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
                    <asp:Label class="form-control" id="UserName" runat="server">User Name</asp:Label>
                </div>
            </div>
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
