<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StudentManagementSystem.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>School Management System</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <style>
        .login-section, .image-section {
            min-height: 100vh; /* Full viewport height */
        }

        .bg-image {
            background-image: url("../Image/login.jpg");
            background-size: cover;
            background-position: center;
        }

        .form-container {
            background-color: #f8f9fa; /* Light gray background */
            padding: 40px;
            border-radius: 10px;
        }

        h3 {
            margin-bottom: 20px;
        }

        .form-label {
            font-weight: bold;
        }

        .row > .col-md-6 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <!-- Image Section -->
                <div class="col-md-6 d-none d-md-flex bg-image">
                </div>

                <!-- Form Section -->
                <div class="col-md-6 login-section d-flex align-items-center justify-content-center">
                    <div class="form-container">
                        <div class="navbar-text">
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </div>
                        <h3 class="text-center">Sign Up</h3>

                        <div class="row">
                            <div class="col-md-6">
                                <label for="txtName" class="form-label">Name</label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Name" required></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name Should be in Characters" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]*$" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName"></asp:RegularExpressionValidator>
                            </div>

                            <div class="col-md-6">
                                <label for="txtDob" class="form-label">Date Of Birth</label>
                                <asp:TextBox ID="txtDob" runat="server" CssClass="form-control" TextMode="Date" required></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label for="ddlGender" class="form-label">Gender</label>
                                <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="0">Select Gender</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Gender Is Required" ForeColor="Red" ControlToValidate="ddlGender" Display="Dynamic" SetFocusOnError="true" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                            </div>

                            <div class="col-md-6">
                                <label for="txtMobile" class="form-label">Mobile Number</label>
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" TextMode="Number" placeholder="10 Digits Mobile No." required></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Mobile No." ForeColor="Red" ValidationExpression="^[0-9]{10}" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label for="txtEmail" class="form-label">Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email" TextMode="Email" required></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label for="txtPassword" class="form-label">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password" required></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label for="txtAddress" class="form-label">Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address" TextMode="MultiLine" required></asp:TextBox>
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-12">
                                <asp:Button ID="btnAdd" runat="server" Text="Submit" CssClass="btn btn-primary btn-block" BackColor="#5558C9" OnClick="btnAdd_Click" />
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-12">
                                <p class="sign_up">
                                    Already have an account? 
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign In</asp:LinkButton>
                                </p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
