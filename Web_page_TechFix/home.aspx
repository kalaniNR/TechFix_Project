<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Web_page_TechFix.home" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TechFix Shop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Helper/css/style.default.css" rel="stylesheet" />
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

   <style>
    .body {
        background-color: #e0e0e0; /* Soft light grey */
        color: #444; /* Darker grey for text */
    }
    .sidebar {
        background: linear-gradient(180deg, #007bff 0%, #00aaff 100%); /* Blue gradient */
        color: #fff;
    }
    .sidebar h5 {
        font-weight: bold;
    }
    .btn-group-vertical .btn {
        margin-bottom: 10px;
        border-radius: 25px;
    }
    .btn-outline-secondary {
        color: #fff;
        border-color: rgba(255, 255, 255, 0.5);
    }
    .btn-outline-secondary:hover {
        background-color: rgba(255, 255, 255, 0.2);
    }
    .card {
        border: none;
        transition: transform 0.3s;
    }
    .card:hover {
        transform: scale(1.05);
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    }
    .card img {
        border-radius: 15px 15px 0 0;
        height: 200px;
        object-fit: cover;
    }
    .card-title {
        color: #007bff; /* Blue for card titles */
    }
    .card-text {
        color: #333; /* Darker grey for text */
    }
    .btn-success {
        background-color: #17a2b8; /* Lighter teal */
        border: none;
    }
    .btn-success:hover {
        background-color: #138496; /* Darker teal */
    }
    .footer {
        background-color: #444; /* Darker grey */
        color: #fff;
        text-align: center;
        padding: 10px 0;
        margin-top: 20px;
    }
</style>

        


    </style>
</head>
<body>
 <form id="form1" runat="server">
    <header class="header">
        <nav class="navbar navbar-expand-lg px-4 py-4 bg-dark shadow">
            <a class="navbar-brand" href="#">
                <h1 style="color: #ff6600;">TECHFIX COMPUTER SHOP</h1>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <img src="#" alt="Home" class="nav-icon">
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="adminDashboard.aspx" class="nav-link">
                            Admin 
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link" data-bs-toggle="modal" data-bs-target="#cartModal">
                            <img src="Helper/img/addtocart1.png"> (<span id="cartCount">0</span>)
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="supplier.aspx" class="nav-link">
                            <img src="#" alt="Supplier" class="nav-icon">
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <img src="#" alt="Logout" class="nav-icon">
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- Start of Carousel for Background Image -->
    <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <!-- Slide 1: Background Image -->
            <div class="carousel-item active" style="background-image: url('Helper/img/hhh.jpg'); background-size: cover; height: 500px;">
                <div class="carousel-caption d-none d-md-block text-white">
                    <h5 style="font-size: 50px;">Welcome to TechFix</h5>
                    <p style="font-size: 30px; background-color: rgba(0, 0, 0, 0.5);">Your one-stop shop for computer hardware and accessories.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- End of Carousel -->
</form>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-3 sidebar py-4">
            <h5>Product Categories</h5>
            <div class="btn-group-vertical w-100" role="group" aria-label="Product Categories">
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('laptops')">Laptops</button>
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('processors')">Processors</button>
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('memory')">Memory</button>
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('graphicsCards')">Graphics Cards</button>
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('ssds')">SSDs</button>
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('storage')">Storage</button>
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('pcCases')">PC Cases</button>
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('ups')">UPS</button>
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('monitors')">Monitors</button>
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('mousePads')">Mouse Pads</button>
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('speakers')">Speakers</button>
                <button type="button" class="btn btn-outline-secondary" onclick="showProducts('adapters')">Adapters</button>
            </div>
        </div>

        <!-- Product List Section -->
        <div class="col-md-9">
            <section class="py-5">
                <div class="row">
                    <div class="col-12 mb-4">
                        <h2 class="text-center" style="color: #ff6600;">Latest Products</h2>
                    </div>

                    <!-- Product Cards -->
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card">
                            <img class="card-img-top" src="Helper/img/laptop.jpg" alt="Laptop">
                            <div class="card-body">
                                <h5 class="card-title">Laptop</h5>
                                <p class="card-text">High-performance laptops for all your needs.</p>
                                <p class="card-text"><strong>Price:</strong> Rs 294000</p>
                                <a href="#" class="btn btn-success mt-2" onclick="addToCart('Laptop', 194000)">Add to Cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card">
                            <img class="card-img-top" src="Helper/img/monitor.jpg" alt="Monitor">
                            <div class="card-body">
                                <h5 class="card-title">Monitor</h5>
                                <p class="card-text">HD and 4K monitors for a sharp viewing experience.</p>
                                <p class="card-text"><strong>Price:</strong> Rs 4400</p>
                                <a href="#" class="btn btn-success mt-2" onclick="addToCart('Monitor', 400)">Add to Cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card">
                            <img class="card-img-top" src="Helper/img/keyboard1.jpg" alt="Keyboard">
                            <div class="card-body">
                                <h5 class="card-title">Keyboard</h5>
                                <p class="card-text">Mechanical and wireless keyboards.</p>
                                <p class="card-text"><strong>Price:</strong> Rs 2450</p>
                                <a href="#" class="btn btn-success mt-2" onclick="addToCart('Keyboard', 70)">Add to Cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card">
                            <img class="card-img-top" src="Helper/img/mouse.jpg" alt="Mouse">
                            <div class="card-body">
                                <h5 class="card-title">Mouse</h5>
                                <p class="card-text">Ergonomic and gaming mice.</p>
                                <p class="card-text"><strong>Price:</strong> Rs 1750</p>
                                <a href="#" class="btn btn-success mt-2" onclick="addToCart('Mouse', 50)">Add to Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>

<footer class="footer">
    <p>© 2024 TechFix. All rights reserved.</p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    function showProducts(category) {
        // Implement your product filter logic here
        console.log('Show products for category:', category);
    }

    function addToCart(product, price) {
        // Implement your add to cart logic here
        console.log('Added to cart:', product, 'Price:', price);
    }
</script>


<!-- Cart Modal -->
<div class="modal fade" id="cartModal" tabindex="-1" aria-labelledby="cartModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content bg-dark text-white">
            <div class="modal-header">
                <h5 class="modal-title" id="cartModalLabel">Shopping Cart</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <table class="table table-striped text-white">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody id="cartItems">
                        <tr>
                            <td colspan="2" class="text-center">No items in cart.</td>
                        </tr>
                    </tbody>
                </table>
                <div class="text-end">
                    <strong>Total:</strong> <span id="totalPrice">Rs. 0</span>
                </div>
            </div>
            <div class="modal-footer">
                
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Receipt Modal -->
<div class="modal fade" id="receiptModal" tabindex="-1" aria-labelledby="receiptModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content bg-light text-dark">
            <div class="modal-header">
                <h5 class="modal-title" id="receiptModalLabel">Receipt</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody id="receiptItems">
                        <!-- Receipt items will be dynamically added here -->
                    </tbody>
                </table>
                <div class="text-end">
                    <strong>Total:</strong> <span id="receiptTotal">Rs. 0</span>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>




        <script>
            const products = {
                laptops: [
                    { name: "Asus VivoBook X1504Z i5-1235U ", price:194000, img: "Helper/img/laptop.jpg" },
                    { name: "HP Victus 15-FB2082WM Ryzen 5-8645HS", price: 3000000, img: "Helper/img/download.jpg" },
                    { name: "HP Victus 15-FB0016", price: 263000, img: "Helper/img/download1.jpg" },
                    { name: "Acer Nitro V15 ANV15", price: 390000 , img: "Helper/img/dow.jpg" }
                ],
                processors: [
                    { name: "AMD Ryzen™ 5 5600G Processor", price: 41500, img: "Helper/img/p1.jpg" },
                    { name: "INTEL I5 12400F Processor", price: 40000, img: "Helper/img/p2.jpg" },
                    { name: "AMD Ryzen 5 8500G Processor", price: 59500, img: "Helper/img/p3.jpg" },
                    { name: "AMD A6 7480 Radeon VEGA R5 Graphics Processor", price: 10000, img: "Helper/img/p4.jpg" }
                ],
                memory: [
                    { name: "Thermaltake Toughram Z-One 8GB DDR4 3600MHZ C18 Ram", price: 9000, img: "Helper/img/m1.jpg" },
                    { name: "Corsair Vengeance LPX 16GB 3200MHZ DDR4 Ram", price: 13500, img: "Helper/img/m2.jpg" },
                    { name: "Thermaltake Toughram Z-One RGB D5 16GB DDR5 5600MHZ C36 Ram", price: 26000, img: "Helper/img/m3.jpg" },
                    { name: "Thermaltake Toughram XG RGB D5 16GB DDR5 5600MHZ C36 Ram", price: 30500, img: "Helper/img/m4.jpg" }
                ],
                graphicsCards: [
                    { name: "MSI GTX 1650 4GB Ventus XS OCV3", price: 68000, img: "Helper/img/g1.jpg" },
                    { name: "Thermaltake Premium PCI Express 4.0 16x/300mm Black Riser Cable", price: 28000, img: "Helper/img/g2.jpg" },
                    { name: "MSI RTX 3050 VENTUS 2X 6G OC GRAPHICS CARD", price: 89500, img: "Helper/img/g3.jpg" },
                    { name: "ZOTAC GAMING RTX 3050 ECO 8GB", price: 97000, img: "Helper/img/g4.jpg" }
                ],
                ssds: [
                    { name: "Lexar NS100 128GB 2.5 6Gb/s Sata SSD", price: 6500, img: "Helper/img/s1.jpg" },
                    { name: "Lexar NS100 256GB 2.5 6Gb/s Sata SSD", price: 9500, img: "Helper/img/s2.jpg" },
                    { name: "Lexar NM620 512GB GEN3x4 NVME M.2", price: 14000, img: "Helper/img/s3.jpg" },
                    { name: "MSI SPATIUM M450 500GB PCIE 4.0 NVME M.2 SOLID STATE DRIVE", price: 20000, img: "Helper/img/s4.jpg" }
                ],
                storage: [
                    { name: "Kingston Data Traveler Exodia ONYX 128GB 3.2 Pen Drive", price: 3600, img: "Helper/img/st1.jpg" },
                    { name: "Seagate 2TB 7200RPM Barracuda Desktop Hard Drive", price: 26000, img: "Helper/img/st2.jpg" },
                    { name: "Lexar 64GB JumpDrive Fingerprint F35USM 3.0 Flash Drive", price: 9500, img: "Helper/img/st3.jpg" },
                    { name: "Seagate 1TB 7200RPM Barracuda Hard Drive", price: 19500, img: "Helper/img/st4.jpg" }
                ],
                pcCases: [
                    { name: "Thermaltake Ceres 300 TG ARGB Mid Tower Black Gaming Casing With 02 ARGB 140MM Fans & 01 Exhaust Fan", price: 34000, img: "Helper/img/pc1.jpg" },
                    { name: "TIAN Black Micro Casing", price: 6000, img: "Helper/img/pc2.jpg" },
                    { name: "Segotep Lumi II Mid - Tower Black With 03 A-RGB Fans", price: 20000, img: "Helper/img/pc3.jpg" },
                    { name: "Segotep Gank 240S Mid - Tower White With 04 RGB Fans", price: 17500, img: "Helper/img/pc4.jpg" }
                ],
                ups: [
                    { name: "Prolink PRO701SFC 650VA Super Fast Charging UPS", price: 11000, img: "Helper/img/up1.jpg" },
                    { name: "EMARK GM4 MINI DC 12V UPS", price: 13900, img: "Helper/img/up2.jpg" },
                    { name: "PROLINK PRO902ES ONLINE UPS", price: 145000, img: "Helper/img/up3.jpg" },
                    { name: "EAST 6KV UPS", price: 420000, img: "Helper/img/up4.jpg" }
                ],
                monitors: [
                    { name: "Asus Tuf Gaming 27 VG279Q3A FAST IPS 180HZ FHD Monitor", price: 96000, img: "Helper/img/mo1.jpg" },
                    { name: "MSI G255F 24.5” 180HZ FHD IPS Gaming Monitor", price: 55000, img: "Helper/img/mo2.jpg" },
                    { name: "Samsung 24 LS24S31C FHD 75HZ Gaming Monitor", price: 47500, img: "Helper/img/mo3.jpg" },
                    { name: "ACER K243YE 24 IPS 100HZ FRAMELESS MONITOR", price: 36000, img: "Helper/img/mo4.jpg" }
                ],
                mousePads: [
                    { name: "GAMDIAS ZEUS M3+NYX E1 Gaming Mouse & Mouse Pad", price: 7000, img: "Helper/img/pad1.jpg" },
                    { name: "Fantech Sven MP80 Gaming Mouse Pad", price: 2000, img: "Helper/img/pad2.jpg" },
                    { name: "COUGAR CONTROL EX GAMING MOUSE PAD", price: 3900, img: "Helper/img/pad3.jpg" },
                    { name: "Armaggeddon AS-29 Assault Mouse Pad", price: 3200, img: "Helper/img/pad4.jpg" }
                ],
                speakers: [
                    { name: "HAVIT SK563 RGB LIGHT SPEAKER", price: 2500, img: "Helper/img/spe1.jpg" },
                    { name: "LOGITECH Z313 RICH BALANCED SOUND SPEAKER", price: 14900, img: "Helper/img/spe2.jpg" },
                    { name: "Sonicgear Titan 5 Bluetooth Multimedia Speaker System With Huge Bass", price: 15000, img: "Helper/img/spe3.jpg" },
                    { name: "Micro Lab MS212 Sound Bar", price: 10000, img: "Helper/img/spe4.jpg" }
                ],
                adapters: [
                    { name: "Prolink DH-5102U AC650 650mbps 2.4ghz Wireless USB Wifi Adapter", price: 5500, img: "Helper/img/ad1.jpg" },
                    { name: "TP-Link Tl-Wn821n 300mbps Wifi Usb Adapter", price: 5000, img: "Helper/img/ad2.jpg" }
                    
                ],
                
            };

            const productListElement = document.querySelector('.row .col-md-9 .row'); 

            function showProducts(category) {
                productListElement.innerHTML = ''; 

                if (products[category] && products[category].length > 0) {
                    products[category].forEach(product => {
                        productListElement.innerHTML += `
                <div class="col-lg-3 col-md-6 mb-4">
                    <div class="card">
                        <img class="card-img-top" src="${product.img}" alt="${product.name}">
                        <div class="card-body">
                            <h5 class="card-title">${product.name}</h5>
                            <p class="card-text">Price: Rs.${product.price}</p>
                            
                            <a href="#" class="btn btn-success mt-2" onclick="addToCart('${product.name}', ${product.price})">Add to Cart</a>
                        </div>
                    </div>
                </div>`;
                    });
                } else {
                    productListElement.innerHTML = '<p class="text-center">No products available in this category.</p>';
                }
            }
        </script>


        <script>
            let cart = [];
            let cartCountElement = document.getElementById('cartCount');
            let cartItemsElement = document.getElementById('cartItems');
            let totalPriceElement = document.getElementById('totalPrice');
            let receiptItemsElement = document.getElementById('receiptItems');
            let receiptTotalElement = document.getElementById('receiptTotal');

            function addToCart(productName, productPrice) {
                cart.push({ name: productName, price: productPrice });
                cartCountElement.innerText = cart.length;
                updateCartModal();
            }

            function updateCartModal() {
                let total = 0;
                cartItemsElement.innerHTML = ''; 

                if (cart.length > 0) {
                    cart.forEach(item => {
                        cartItemsElement.innerHTML += `
                    <tr>
                        <td>${item.name}</td>
                        <td>Rs.${item.price}</td>
                    </tr>`;
                        total += item.price; 
                    });
                } else {
                    cartItemsElement.innerHTML = '<tr><td colspan="2" class="text-center">No items in cart.</td></tr>';
                }

                totalPriceElement.innerText = `Rs. ${total}`; 
            }

            function Checkout() {
                let total = 0;
                receiptItemsElement.innerHTML = ''; 

                if (cart.length > 0) {
                    cart.forEach(item => {
                        receiptItemsElement.innerHTML += `
                    <tr>
                        <td>${item.name}</td>
                        <td>$${item.price}</td>
                    </tr>`;
                        total += item.price; 
                    });
                }

                receiptTotalElement.innerText = `Rs. ${total}`; 
                $('#receiptModal').modal('show'); 
            }

           



        </script>


       <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
        
    </form>
</body>
</html>
