<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminAddStudent.aspx.cs" Inherits="Naive2.adminAddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script type="text/javascript">
        function ShowImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=profilePic.ClientID%>').prop('src', e.target.result)
                        .width(100)
                        .height(100);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
    </script>
    <div class="container">
        <form id="form1" role="form" class="form-horizontal" runat="server">
            <p class="h1" id="mainHeading">Add Student</p>
            
             <div class="row">
                <div class="col-sm-9">
                </div>
                <div class="col-sm-3">
                    <a class="thumbnail">
                        <asp:Image Id="profilePic" ImageUrl="~/Assets/person.jpg" runat="server" />
                    </a>
                    <asp:FileUpload  ID="FileUpload1" runat="server" onchange="ShowImagePreview(this);"  />
                </div>
            </div>
            <br/>
            <div class="form-group row">
                <asp:Label for="RollNo" class="col-sm-2 col-form-label" runat="server">Roll NO</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" id="RollNo" placeholder="Roll No" runat="server"></asp:Textbox>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="FirstName" class="col-sm-2 col-form-label" runat="server">First Name</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" id="FirstName" placeholder="First Name" runat="server"></asp:Textbox>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="LastName" class="col-sm-2 col-form-label" runat="server">Last Name</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" id="LastName" placeholder="Last Name" runat="server"></asp:Textbox>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="DOB" class="col-sm-2 col-form-label" runat="server">DOB</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" TextMode="Date" id="DOB"  runat="server"></asp:Textbox>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="CNIC" class="col-sm-2 col-form-label" runat="server">CNIC</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" id="CNIC" placeholder="CNIC" runat="server"></asp:Textbox>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="Email" class="col-sm-2 col-form-label" runat="server">Email</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" id="Email" placeholder="Email" runat="server"></asp:Textbox>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="Contact" class="col-sm-2 col-form-label" runat="server">Contact</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" id="Contact" placeholder="Contact" runat="server"></asp:Textbox>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="UserName" class="col-sm-2 col-form-label" runat="server">User Name</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" id="UserName" placeholder="User Name" runat="server"></asp:Textbox>
                </div>
            </div>
             <div class="form-group row">
                <asp:Label for="Password" class="col-sm-2 col-form-label" runat="server">Password</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" id="Password" TextMode="Password" placeholder="Password" runat="server"></asp:Textbox>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="ConfirmPassword" class="col-sm-2 col-form-label" runat="server">Confirm Password</asp:Label>
                <div class="col-sm-8">
                    <asp:Textbox class="form-control" id="ConfirmPassword" TextMode="Password" placeholder="Confirm Password" runat="server"></asp:Textbox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2"></div>
                <div class="col-sm-offset-2 col-sm-7">
                    <asp:Button class="btn btn-default" Text="Add Student" runat="server"/>
                </div>
             </div>
        </form>
    </div>
</asp:Content>
