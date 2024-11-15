<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="supplier.aspx.cs" Inherits="Web_page_TechFix.supplier" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Supplier Products</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f4f4f9; /* Light soft off-white background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        h2 {
            color: #343a40; /* Dark gray for headings */
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: #fdfdfd; /* Light white for the table background */
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #d1d1d1; /* Light gray borders */
        }
        th {
            background-color: #6c757d; /* Muted dark gray-blue header background */
            color: white; /* White text for contrast */
        }
        #container {
            display: flex;
            justify-content: space-between;
            padding: 20px;
        }
        #productSection {
            width: 65%;
            background-color: #ffffff; /* White background for the product section */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
        }
        #chatSection {
            width: 30%;
            background-color: #495057; /* Dark gray background */
            color: white;
            border-radius: 8px;
            padding: 20px;
        }
        #chatBox {
            width: 100%;
            height: 400px;
            border: 1px solid #ccc;
            background-color: #212529; /* Very dark background for chat */
            overflow-y: auto;
            margin-top: 20px;
            border-radius: 4px;
            padding: 10px;
        }
        #chatInput {
            margin-top: 10px;
        }
        .chatMessage {
            padding: 5px;
            border-bottom: 1px solid #ddd;
        }
        .btn-primary {
            background-color: #17a2b8; /* Light blue for buttons */
            border: none;
        }
        .btn-primary:hover {
            background-color: #138496; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <!-- Product Section -->
            <div id="productSection">
                <h2>Supplier Product Information</h2>
                <asp:GridView ID="SupplierProductGrid" runat="server" AutoGenerateColumns="False" GridLines="None" CellPadding="4" ForeColor="#333333">
                    <Columns>
                        <asp:BoundField DataField="pcode" HeaderText="Product Code" />
                        <asp:BoundField DataField="pdesc" HeaderText="Description" />
                        <asp:BoundField DataField="bid" HeaderText="Brand ID" />
                        <asp:BoundField DataField="cid" HeaderText="Category ID" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="qty" HeaderText="Quantity" />
                        <asp:BoundField DataField="barcode" HeaderText="Barcode" />
                    </Columns>
                </asp:GridView>
            </div>

            <!-- Chat Box Section -->
            <div id="chatSection">
                <h2>Chat with Supplier</h2>
                <div id="chatBox" runat="server"></div>

                <div id="chatInput">
                    <asp:TextBox ID="txtMessage" runat="server" Width="100%" placeholder="Type a message" style="border-radius: 4px;"></asp:TextBox>
                    <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="SendMessage" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
