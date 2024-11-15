<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manageRepairs.aspx.cs" Inherits="Web_page_TechFix.manageRepairs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Repairs</title>
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .content {
            padding: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid content">
            <h2>Manage Repairs</h2>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addRepairModal">Add Repair</button>
            <table class="table table-striped mt-3">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Device</th>
                        <th>Customer Name</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Sample Data -->
                    <tr>
                        <td>1</td>
                        <td>Laptop</td>
                        <td>John Doe</td>
                        <td>In Progress</td>
                        <td>
                            <button class="btn btn-info">Edit</button>
                            <button class="btn btn-danger">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Smartphone</td>
                        <td>Jane Smith</td>
                        <td>Completed</td>
                        <td>
                            <button class="btn btn-info">Edit</button>
                            <button class="btn btn-danger">Delete</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>

    <script src="Helper/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Add Repair Modal -->
    <div class="modal fade" id="addRepairModal" tabindex="-1" role="dialog" aria-labelledby="addRepairModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addRepairModalLabel">Add Repair</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- Form for Adding Repair -->
                    <div class="form-group">
                        <label for="device">Device</label>
                        <input type="text" class="form-control" id="device" placeholder="Enter Device Type"/>
                    </div>
                    <div class="form-group">
                        <label for="customerName">Customer Name</label>
                        <input type="text" class="form-control" id="customerName" placeholder="Enter Customer Name"/>
                    </div>
                    <div class="form-group">
                        <label for="status">Status</label>
                        <select class="form-control" id="status">
                            <option>In Progress</option>
                            <option>Completed</option>
                            <option>Pending</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Add Repair</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>