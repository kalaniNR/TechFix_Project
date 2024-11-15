<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="Web_page_TechFix.adminDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Add your custom CSS here -->
    <style>
        body {
            background-color: #f8f9fa; /* Light gray background */
            font-family: Arial, sans-serif;
        }

        .navbar {
            background-color: #343a40; /* Dark charcoal for navbar */
            color: white; /* White text */
        }

        .sidebar {
            background-color: #343a40; /* Dark charcoal for sidebar */
            height: 100vh;
            padding-top: 20px;
            color: white; /* White text */
        }

        .sidebar h4 {
            color: #ff6600; /* Bright orange for heading */
            text-align: center;
        }

        .sidebar a {
            padding: 10px;
            text-decoration: none;
            font-size: 18px;
            display: block;
            color: #ffffff; /* White text */
            transition: background-color 0.3s;
        }

        .sidebar a:hover {
            background-color: #007bff; /* Steel blue on hover */
            color: white;
        }

        .content {
            padding: 20px;
            background-color: #ffffff; /* White background for content */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-left: 15px; /* Adds space between sidebar and content */
        }

        .content h2 {
            color: #ff6600; /* Bright orange for headings */
        }

        .content p {
            color: #333333; /* Dark gray for paragraph text */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation Bar -->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">TechFix Admin</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="adminDashboard.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="manageProducts.aspx">Manage Products</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="viewOrders.aspx">View Orders</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

      
    </form>

    <!-- Bootstrap Bundle JS -->
    <script src="Helper/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Font Awesome Icons (if used) -->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
