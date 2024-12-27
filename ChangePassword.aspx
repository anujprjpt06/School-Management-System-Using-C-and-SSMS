<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="StudentManagementSystem.ChangePassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Change Password</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row justify-content-center mt-5">
                <div class="col-md-6">
                    <h2 class="text-center">Change Password</h2>
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"></asp:Label>
                    
                    <div class="form-group">
                        <label for="txtEmail">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email" />
                    </div>
                    
                    <div class="form-group">
                        <label for="txtNewPassword">New Password</label>
                        <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter new password" />
                    </div>
                    
                    <div class="form-group">
                        <label for="txtConfirmPassword">Confirm Password</label>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm new password" />
                    </div>

                    <div class="text-center">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Change Password" OnClick="btnSubmit_Click" />
                        <br><br>
                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-secondary" Text="Login" OnClick="btnLogin_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>