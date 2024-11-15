<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Web_page_TechFix.signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup | TechFix</title>
    <link href="Helper/css/style.default.css" rel="stylesheet" />
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            height: 100vh;
        }
        .page-holder {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .container {
            background: rgba(255, 255, 255, 0.9);
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
        }
        .form-control {
            background: #f7f7f7;
            border: 1px solid #ddd;
            border-radius: 30px;
            padding: 15px 20px;
            font-size: 16px;
            transition: all 0.3s ease;
        }
        .btn-primary {
            background: linear-gradient(135deg, #667eea, #764ba2);
            border: none;
            border-radius: 30px;
            padding: 15px 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-5 col-lg-7 mx-auto">
                        <div class="pr-lg-5 text-center">
                            <img src="illustration.svg" alt="" class="img-fluid mb-5" />     
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <h1 class="text-base text-primary text-uppercase mb-4">Sign up Here</h1>
                        <h2 class="mb-4">Create your account</h2>

                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtid" runat="server" CssClass="form-control shadow form-control-lg text-base" placeholder="ID"></asp:TextBox>
                        </div>

                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtuser" runat="server" CssClass="form-control shadow form-control-lg text-base" placeholder="User Name"></asp:TextBox>
                        </div>

                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control shadow form-control-lg text-base" placeholder="Email"></asp:TextBox>
                        </div>

                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control shadow form-control-lg text-base" TextMode="Password" placeholder="Password"></asp:TextBox>
                        </div>

                        <div class="form-group mb-4">
                            <asp:TextBox ID="txtconpassword" runat="server" CssClass="form-control shadow form-control-lg text-base" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                        </div>

                        <asp:Button ID="btnSignup" runat="server" Text="Sign up" CssClass="btn btn-primary btn-block shadow-lg" OnClick="Unnamed7_Click" />
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label> <!-- Ensure the Label is declared -->
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
