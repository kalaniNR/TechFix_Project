<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Web_page_TechFix.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TechFix Computer Shop</title>
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        /* Custom styles */
        body {
            background: linear-gradient(135deg, #f8f9fa, #007bff);
            font-family: 'Poppins', sans-serif;
        }
        .page-holder {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            max-width: 600px;
            background: #ffffff;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            border-radius: 15px;
            padding: 50px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-control-lg {
            height: 50px;
            font-size: 16px;
            border-radius: 10px;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            font-size: 18px;
            padding: 10px 20px;
            border-radius: 10px;
            transition: all 0.3s;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .text-primary {
            color: #007bff;
        }
        .text-danger {
            color: #dc3545;
        }
        .card {
            border: none;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        .img-fluid {
            border-radius: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-holder">
            <div class="container">
                <div class="card">
                    <div class="row align-items-center">
                        <div class="col-md-6 d-none d-md-block">
                            <img src="Helper/img/store.jpg" alt="TechFix Computer Shop" class="img-fluid" />
                        </div>
                        <div class="col-md-6">
                            <div class="text-center mb-4">
                                <h1 class="text-primary">Login</h1>
                                <h4>Welcome Back!</h4>
                            </div>
                            <div class="form-group">
                                <asp:TextBox required="true" CssClass="form-control form-control-lg" placeholder="Username" runat="server" ID="txtuser"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox required="true" TextMode="Password" CssClass="form-control form-control-lg" placeholder="Password" runat="server" ID="txtpass"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList runat="server" ID="ddlUserType" CssClass="form-control form-control-lg">
                                    <asp:ListItem Text="Admin" Value="Admin" />
                                    <asp:ListItem Text="Supplier" Value="Supplier" />
                                </asp:DropDownList>
                            </div>
                            
                            <div class="form-group">
                                <asp:Button Text="LOGIN" CssClass="btn btn-primary btn-block" runat="server" ID="btnLogin" OnClick="btnLogin_Click" />
                            </div>
                            <asp:Label ID="lblErrorMessage" runat="server" Text="" CssClass="text-danger text-center"></asp:Label>
                            <div class="text-center mt-3">
                                <p>Don't have an account? <a href="signup.aspx" class="text-primary">Sign up here</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
