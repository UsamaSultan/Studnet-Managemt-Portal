<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterFYP.aspx.cs" Inherits="Naive2.RegisterFYP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Naive</title>

    <link rel="stylesheet" href="CSS/registerFYPStyle.css" />
    <!-- Required meta tags -->
    <meta charset="utf-8/">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>
     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script type="text/javascript">
        function ShowImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#profilePic').prop('src', e.target.result)
                        .width(100)
                        .height(100);
                };
                reader.readAsDataURL(input.files[0]);
                }
        }
    </script>
</head>
<body>
    <div class="container">
        <form id="form1" role="form" class="form-horizontal" runat="server">
           <p class="h1" id="mainHeading">Register FYP</p>
            
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
                <asp:Label for="Batch" class="col-sm-2 col-form-label" runat="server">Batch</asp:Label>
                <div class="col-sm-8">
                    <asp:TextBox TextMode="Number" class="form-control" ID="Batch" placeholder="CNIC" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="CGPA" class="col-sm-2 col-form-label" runat="server">CGPA</asp:Label>
                <div class="col-sm-8">
                    <asp:TextBox TextMode="Number" class="form-control" ID="CGPA" placeholder="CGPA" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="WarningCount" class="col-sm-2 col-form-label" runat="server">Warning Count</asp:Label>
                <div class="col-sm-8">
                    <asp:TextBox TextMode="Number" class="form-control" ID="WarningCount" placeholder="Warning Count" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label for="CreditHours" class="col-sm-2 col-form-label" runat="server">Earned Credit Hours</asp:Label>
                <div class="col-sm-8">
                    <asp:TextBox TextMode="Number" class="form-control" ID="CreditHours" placeholder="Earned Credit Hours" runat="server"></asp:TextBox>
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
                    <asp:Button class="btn btn-default" Text="Send Regisrtation Request" runat="server"/>
                </div>
             </div> 
         </form>
    </div>
</body>
</html>
