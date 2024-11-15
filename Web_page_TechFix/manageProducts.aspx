<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manageProducts.aspx.cs" Inherits="Web_page_TechFix.manageProducts" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Products</title>
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f0f0f0; /* Light gray background */
            font-family: Arial, sans-serif;
        }
        h2 {
            color: #ff6600; /* Bright orange for main headings */
            text-align: center;
            margin-bottom: 20px;
        }9
        h4 {
            color: #343a40; /* Dark gray for subheadings */
        }
        .table {
            background-color: white; /* White background for the table */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .table th {
            background-color: #007bff; /* Steel blue for header */
            color: white; /* White text for contrast */
        }
        .table img {
            border-radius: 4px; /* Rounded corners for images */
        }
        .btn-primary {
            background-color: #ff6600; /* Bright orange for primary buttons */
            border: none;
        }
        .btn-primary:hover {
            background-color: #c75100; /* Darker orange on hover */
        }
        .btn-warning, .btn-danger {
            border: none; /* No borders for action buttons */
        }
        .btn-warning {
            background-color: #ffc107; /* Yellow for warning */
        }
        .btn-danger {
            background-color: #dc3545; /* Red for danger */
        }
        .btn-warning:hover {
            background-color: #e0a800; /* Darker yellow on hover */
        }
        .btn-danger:hover {
            background-color: #c82333; /* Darker red on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <h2>Manage Products</h2>
            <div class="mb-3">
                <h4>Add New Product</h4>
                <div class="row">
                    <div class="col-md-4">
                        <input type="text" id="txtProductName" class="form-control" placeholder="Product Name" />
                    </div>
                    <div class="col-md-4">
                        <input type="text" id="txtProductPrice" class="form-control" placeholder="Product Price" />
                    </div>
                    <div class="col-md-4">
                        <input type="file" id="fileProductImage" class="form-control" />
                    </div>
                    <div class="col-md-4 mt-2">
                        <button type="button" class="btn btn-primary" onclick="addProduct()">Add Product</button>
                    </div>
                </div>
            </div>

            <hr />

            <h4>Product List</h4>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>Price</th>
                            <th>Image</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="productTable">
                        <!-- Product rows will be dynamically generated here -->
                    </tbody>
                </table>
            </div>
        </div>
    </form>

    <script>
        const products = [];

        function addProduct() {
            const productName = document.getElementById("txtProductName").value;
            const productPrice = document.getElementById("txtProductPrice").value;
            const productImage = document.getElementById("fileProductImage").files[0];

            if (productName && productPrice && productImage) {
                products.push({ name: productName, price: productPrice, image: productImage.name });
                displayProducts();
                clearFields();
            } else {
                alert("Please fill all fields.");
            }
        }

        function clearFields() {
            document.getElementById("txtProductName").value = "";
            document.getElementById("txtProductPrice").value = "";
            document.getElementById("fileProductImage").value = "";
        }

        function displayProducts() {
            const productTable = document.getElementById("productTable");
            productTable.innerHTML = "";

            products.forEach((product, index) => {
                const row = `<tr>
                                <td>${product.name}</td>
                                <td>${product.price}</td>
                                <td><img src="Helper/img/${product.image}" width="100" /></td>
                                <td>
                                    <button class="btn btn-warning" onclick="editProduct(${index})">Edit</button>
                                    <button class="btn btn-danger" onclick="deleteProduct(${index})">Delete</button>
                                </td>
                            </tr>`;
                productTable.innerHTML += row;
            });
        }

        function editProduct(index) {
            const product = products[index];
            document.getElementById("txtProductName").value = product.name;
            document.getElementById("txtProductPrice").value = product.price;
        }

        function deleteProduct(index) {
            products.splice(index, 1);
            displayProducts();
        }
    </script>

    <script src="Helper/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
