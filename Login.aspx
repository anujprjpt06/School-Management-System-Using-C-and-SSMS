<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>School Management System</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>

    <style>
        .login, .image {
            min-height: 100vh;
        }

        .bg-image {
            background-image: url("../Image/login.jpg");
            background-size: cover;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row no-gutters">
                <!-- The Image Half -->
                <div class="col-md-6 d-none d-md-flex bg-image"></div>

                <!-- The Content Half  -->
                <div class="col-md-6 bg-light">
                    <div class="login d-flex align-items-center py-5">

                        <!-- Demo Content -->

                        <div class="container">

                            <div class="row">

                                <div class="col-lg-10 col-xl-7 mx-auto">

                                    <h3 class="display-4 pb-3">Sign In</h3>
                                    <p class="text-muted mb-4">Login Page for Admin And Teacher</p>

                                    <div class="form-group mb-3">

                                        <input type="text" id="inputEmail" placeholder="Enter Email" required="" runat="server" autofocus="" class="form-control rounded-pill border-0 shadow-sm px-4" />

                                    </div>

                                    <div class="form-group mb-3 mb-2">
                                        <input type="password" id="inputPassword" placeholder="Password" required="" runat="server" class="form-control rounded-pill border-0 shadow-sm px-4 text-primary" />
                                    </div>

                                    <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn btn-primary btn-block text-uppercase mb-2 rounded-pill shadow-sm" BackColor="#5558C9" OnClick="btnLogin_Click" />

                                    <p class="sign_up">
                                        Don't have an account as Teacher? 
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Register</asp:LinkButton>
                                    </p>

                                    <p class="forgot-password text-center">
                                        <a href="ChangePassword.aspx"> Forgot Password </a>
                                    </p>
                                    


                                    <div class="text-center d-flex justify-content-between mt-4">

                                        <asp:Label ID="lblMsg" runat="server"></asp:Label>

                                    </div>


                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>
        </div>

    </form>
</body>
</html>
