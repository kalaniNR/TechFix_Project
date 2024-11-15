<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewOrders.aspx.cs" Inherits="Web_page_TechFix.viewOrders" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Orders</title>
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #eaeaea; /* Light gray background */
            font-family: Arial, sans-serif;
        }
        h2 {
            color: #ff6600; /* Bright orange for headings */
            text-align: center;
            margin-bottom: 30px;
        }
        .table {
            background-color: #ffffff; /* White background for table */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        thead {
            background-color: #007bff; /* Steel blue header background */
            color: white; /* White text for contrast */
        }
        tbody tr:hover {
            background-color: #f2f2f2; /* Light gray on row hover */
        }
        th, td {
            text-align: left;
            vertical-align: middle;
        }
        .table-responsive {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <h2>View Orders</h2>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer Name</th>
                            <th>Order Date</th>
                            <th>Total Amount</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody id="orderTable">
                        <!-- Orders will be dynamically loaded here -->
                    </tbody>
                </table>
            </div>
        </div>
    </form>

    <script>
        const orders = [
            { orderId: 1, customerName: "John Doe", date: "2024-09-20", amount: 40000, status: "Shipped" },
            { orderId: 2, customerName: "Jane Smith", date: "2024-09-18", amount: 20000, status: "Processing" },
            { orderId: 3, customerName: "kalani nadeesha", date: "2024-09-21", amount: 50000, status: "Processing" },
            { orderId: 4, customerName: "kasuni rajapaksha", date: "2024-09-21", amount: 30000, status: "Processing" },
            { orderId: 5, customerName: "Nadeesha rajapaksha", date: "2024-09-22", amount: 5000, status: "Processing" },
            { orderId: 6, customerName: "imandi samaraweera", date: "2024-09-23", amount: 3000, status: "Processing" },
            { orderId: 7, customerName: "John Doe", date: "2024-09-24", amount: 6000, status: "Shipped" },
            { orderId: 8, customerName: "piyumini samaraweera", date: "2024-09-25", amount: 21000, status: "Shipped" },
            { orderId: 9, customerName: "kanchana samaraweera", date: "2024-09-26", amount: 36000, status: "Shipped" },
            { orderId: 10, customerName: "kamal jayaweera", date: "2024-09-27", amount: 6000, status: "Shipped" },
            { orderId: 11, customerName: "nihal gunawardana", date: "2024-09-28", amount: 4000, status: "Shipped" },
            { orderId: 12, customerName: "keen jaye", date: "2024-09-29", amount: 3000, status: "Processing" },
            { orderId: 13, customerName: "pawani gune", date: "2024-10-02", amount: 4000, status: "Shipped" },
            { orderId: 14, customerName: "sasmith wijee", date: "2024-10-06", amount: 2000, status: "Processing" },
            { orderId: 15, customerName: "nimal wijekoon", date: "2024-10-08", amount: 45000, status: "Shipped" },
            { orderId: 16, customerName: "nimali chandrika", date: "2024-10-10", amount: 9000, status: "Shipped" }
        ];

        function loadOrders() {
            const orderTable = document.getElementById("orderTable");
            orderTable.innerHTML = "";

            orders.forEach(order => {
                const row = `<tr>
                                <td>${order.orderId}</td>
                                <td>${order.customerName}</td>
                                <td>${order.date}</td>
                                <td>Rs. ${order.amount}</td>
                                <td>${order.status}</td>
                            </tr>`;
                orderTable.innerHTML += row;
            });
        }

        // Load orders on page load
        window.onload = loadOrders;
    </script>

    <script src="Helper/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
