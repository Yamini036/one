```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Modern E-Commerce</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap"
          rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --bg: #ffffff;
            --primary: #0a2540;
            --accent: #00bcd4;
            --muted: #7a7a7a;
            --card: #ffffff;
            --surface: #f6f9fc;
            --success: #28a745;
            --danger: #ff4757;
            --radius: 12px;
            --container: 1200px;
        }

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont,
                         "Segoe UI", Roboto, Arial, sans-serif;
            color: var(--primary);
            background: var(--bg);
            line-height: 1.5;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button,
        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 20px;
        }

        /* ================= HEADER ================= */

        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.97);
            border-bottom: 1px solid rgba(10, 37, 64, 0.08);
            backdrop-filter: blur(8px);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 14px 0;
        }

        .brand {
            font-family: Poppins, sans-serif;
            font-size: 22px;
            font-weight: 700;
            white-space: nowrap;
        }

        .brand .accent {
            color: var(--accent);
        }

        .main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .main-nav a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 9px 11px;
            border-radius: 8px;
            font-weight: 500;
            transition: 0.2s;
        }

        .main-nav a:hover {
            background: var(--surface);
            color: var(--accent);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .search {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--surface);
            padding: 8px 12px;
            border-radius: 999px;
            width: 260px;
        }

        .search input {
            border: 0;
            outline: none;
            background: transparent;
            width: 100%;
            font-size: 14px;
        }

        .icon-btn {
            background: transparent;
            border: 0;
            color: var(--primary);
            cursor: pointer;
            font-size: 16px;
        }

        .cart {
            position: relative;
            display: flex;
            align-items: center;
            padding: 8px;
        }

        .cart-count {
            position: absolute;
            top: -3px;
            right: -4px;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 700;
            display: grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 20px;
            cursor: pointer;
        }

        /* ================= HERO ================= */

        .hero {
            min-height: 430px;
            display: flex;
            align-items: center;
            text-align: center;
            color: white;

            background:
                linear-gradient(
                    rgba(10, 37, 64, 0.65),
                    rgba(10, 37, 64, 0.65)
                ),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80")
                center / cover no-repeat;

            border-radius: 0 0 var(--radius) var(--radius);
        }

        .hero-content {
            width: 100%;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: 42px;
            margin: 0 0 14px;
        }

        .hero p {
            max-width: 780px;
            margin: 0 auto 24px;
            opacity: 0.95;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            padding: 11px 20px;
            border-radius: 999px;
            font-weight: 600;
            cursor: pointer;
            border: 0;
            transition: 0.2s;
        }

        .btn:hover {
            transform: translateY(-2px);
        }

        .btn-primary {
            background: var(--accent);
            color: #042233;
        }

        .btn-ghost {
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.4);
            color: white;
            margin-left: 8px;
        }

        /* ================= SECTIONS ================= */

        .section {
            padding: 50px 0;
        }

        .title {
            text-align: center;
            margin-bottom: 25px;
        }

        .title h2 {
            margin-bottom: 7px;
            font-family: Poppins, sans-serif;
        }

        .muted {
            color: var(--muted);
        }

        /* ================= CATEGORIES ================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }

        .cat-card {
            background: var(--card);
            padding: 20px 12px;
            text-align: center;
            border-radius: var(--radius);
            box-shadow: 0 8px 20px rgba(10, 37, 64, 0.05);
            cursor: pointer;
            transition: 0.2s;
        }

        .cat-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(10, 37, 64, 0.1);
        }

        .cat-card .icon {
            color: var(--accent);
            font-size: 28px;
            margin-bottom: 9px;
        }

        .cat-card h4 {
            margin: 5px 0;
        }

        /* ================= PRODUCTS ================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            position: relative;
            background: white;
            border-radius: var(--radius);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            box-shadow: 0 8px 20px rgba(10, 37, 64, 0.05);
            transition: 0.2s;
        }

        .product:hover {
            transform: translateY(-4px);
            box-shadow: 0 15px 35px rgba(10, 37, 64, 0.1);
        }

        .product-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            color: white;
            padding: 5px 8px;
            border-radius: 7px;
            font-size: 12px;
            font-weight: 700;
            z-index: 2;
        }

        .badge-new {
            background: var(--success);
        }

        .badge-sale {
            background: var(--danger);
        }

        .product-body {
            padding: 14px;
            display: flex;
            flex-direction: column;
            gap: 9px;
            flex: 1;
        }

        .product h3 {
            margin: 0;
            font-size: 16px;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 8px;
        }

        .price {
            font-size: 18px;
            font-weight: 700;
        }

        .old-price {
            margin-left: 5px;
            color: var(--muted);
            text-decoration: line-through;
            font-size: 13px;
        }

        .rating {
            color: #ffc107;
            font-size: 13px;
        }

        .product-footer {
            display: flex;
            gap: 8px;
            padding: 12px;
        }

        .add-btn {
            flex: 1;
            border: 0;
            border-radius: 8px;
            padding: 10px;
            background: var(--primary);
            color: white;
            cursor: pointer;
            font-weight: 600;
        }

        .add-btn:hover {
            opacity: 0.9;
        }

        .wish-btn {
            border: 1px solid rgba(10, 37, 64, 0.1);
            background: white;
            border-radius: 8px;
            width: 42px;
            cursor: pointer;
        }

        /* ================= DEAL ================= */

        .deal {
            display: flex;
            overflow: hidden;
            background: var(--surface);
            border-radius: var(--radius);
        }

        .deal img {
            width: 50%;
            min-height: 320px;
            object-fit: cover;
        }

        .deal-content {
            padding: 30px;
            flex: 1;
        }

        .deal-content h3 {
            font-family: Poppins, sans-serif;
            font-size: 28px;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 20px 0;
        }

        .time-box {
            min-width: 70px;
            padding: 10px;
            border-radius: 8px;
            background: var(--primary);
            color: white;
            text-align: center;
        }

        .deal-price {
            font-size: 26px;
            font-weight: 700;
        }

        /* ================= TESTIMONIALS ================= */

        .testimonials {
            display: flex;
            gap: 16px;
            overflow-x: auto;
            padding: 10px 2px 20px;
        }

        .testimonial {
            min-width: 320px;
            padding: 20px;
            border-radius: var(--radius);
            background: white;
            box-shadow: 0 8px 20px rgba(10, 37, 64, 0.05);
        }

        .testimonial-avatar {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
        }

        /* ================= NEWSLETTER ================= */

        .newsletter {
            background: var(--primary);
            color: white;
            border-radius: var(--radius);
            padding: 35px 20px;
            text-align: center;
        }

        .newsletter input {
            width: 320px;
            max-width: 100%;
            padding: 12px 15px;
            border: 0;
            border-radius: 999px;
            outline: none;
        }

        .newsletter-form {
            display: flex;
            justify-content: center;
            gap: 8px;
            flex-wrap: wrap;
        }

        /* ================= FOOTER ================= */

        footer {
            margin-top: 25px;
            padding: 40px 0;
            border-top: 1px solid rgba(10, 37, 64, 0.08);
        }

        .footer-inner {
            display: flex;
            justify-content: space-between;
            gap: 30px;
            flex-wrap: wrap;
        }

        .footer-links {
            display: flex;
            gap: 60px;
        }

        /* ================= MOBILE ================= */

        @media (max-width: 1100px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media (max-width: 900px) {
            .main-nav {
                display: none;
            }

            .mobile-toggle {
                display: block;
            }

            .header-right {
                margin-left: auto;
            }

            .search {
                width: 200px;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 650px) {
            .header-inner {
                flex-wrap: wrap;
            }

            .header-right {
                width: 100%;
            }

            .search {
                flex: 1;
            }

            .hero {
                min-height: 390px;
            }

            .hero h1 {
                font-size: 29px;
            }

            .hero p {
                font-size: 14px;
            }

            .products,
            .categories {
                grid-template-columns: 1fr;
            }

            .deal {
                flex-direction: column;
            }

            .deal img {
                width: 100%;
                min-height: 220px;
            }

            .deal-content {
                padding: 22px;
            }

            .timer {
                flex-wrap: wrap;
            }

            .footer-links {
                gap: 30px;
            }
        }
    </style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>
    <div class="container header-inner">

        <div style="display:flex;align-items:center;gap:15px;">

            <button class="mobile-toggle"
                    id="mobileToggle"
                    aria-label="Open menu">
                <i class="fas fa-bars"></i>
            </button>

            <a class="brand" href="#">
                Nexus<span class="accent">Shop</span>
            </a>

        </div>

        <nav class="main-nav">
            <ul>
                <li>
                    <a href="#">
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#categories">
                        <i class="fas fa-th-large"></i>
                        Categories
                    </a>
                </li>

                <li>
                    <a href="#products">
                        <i class="fas fa-fire"></i>
                        Trending
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        <i class="fas fa-tag"></i>
                        Deals
                    </a>
                </li>

                <li>
                    <a href="#about">
                        <i class="fas fa-info-circle"></i>
                        About
                    </a>
                </li>
            </ul>
        </nav>

        <div class="header-right">

            <div class="search">
                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    aria-label="Search products">

                <button class="icon-btn"
                        id="searchBtn"
                        aria-label="Search">
                    <i class="fas fa-search"></i>
                </button>
            </div>

            <button class="icon-btn" title="Account">
                <i class="far fa-user"></i>
            </button>

            <button class="icon-btn" title="Wishlist">
                <i class="far fa-heart"></i>
            </button>

            <button class="cart icon-btn" id="cartBtn">
                <i class="fas fa-shopping-cart"></i>
                <span class="cart-count" id="cartCount">0</span>
            </button>

        </div>
    </div>

    <!-- Mobile Menu -->

    <div id="mobileMenu"
         style="display:none;background:white;border-top:1px solid #eee;">

        <div class="container" style="padding:15px 20px;">

            <nav>
                <a href="#" style="display:block;padding:8px;">Home</a>
                <a href="#categories" style="display:block;padding:8px;">Categories</a>
                <a href="#products" style="display:block;padding:8px;">Trending</a>
                <a href="#deals" style="display:block;padding:8px;">Deals</a>
                <a href="#about" style="display:block;padding:8px;">About</a>
            </nav>

        </div>
    </div>
</header>


<!-- ================= MAIN ================= -->

<main>

    <!-- HERO -->

    <section class="hero">

        <div class="container hero-content">

            <h1>
                New Winter Collection
                Premium Picks
            </h1>

            <p>
                Discover the latest trends in fashion, technology
                and accessories. Enjoy limited-time deals and
                free shipping on selected items.
            </p>

            <button class="btn btn-primary" id="shopNow">
                Shop Now
                <i class="fas fa-arrow-right"></i>
            </button>

            <button class="btn btn-ghost" id="exploreDeals">
                Explore Deals
            </button>

        </div>

    </section>


    <!-- CATEGORIES -->

    <section class="section container"
             id="categories">

        <div class="title">

            <h2>Shop by Category</h2>

            <p class="muted">
                Browse our wide range of products.
            </p>

        </div>

        <div class="categories"
             id="categoriesGrid">
        </div>

    </section>


    <!-- PRODUCTS -->

    <section class="section container"
             id="products">

        <div class="title">

            <h2>Trending Products</h2>

            <p class="muted">
                Popular picks based on recent activity.
            </p>

        </div>

        <div class="products"
             id="productsGrid">
        </div>

    </section>


    <!-- DEAL -->

    <section class="section container"
             id="deals">

        <div class="title">

            <h2>Flash Sale</h2>

            <p class="muted">
                Limited-time offers — don't miss out!
            </p>

        </div>

        <div class="deal">

            <img
                src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80"
                alt="MacBook deal">

            <div class="deal-content">

                <h3>MacBook Air M2</h3>

                <p class="muted">
                    Thin, light and powerful with M2 performance.
                </p>

                <div class="timer">

                    <div class="time-box">
                        <strong id="dealDays">0</strong>
                        <small>Days</small>
                    </div>

                    <div class="time-box">
                        <strong id="dealHours">00</strong>
                        <small>Hours</small>
                    </div>

                    <div class="time-box">
                        <strong id="dealMinutes">00</strong>
                        <small>Minutes</small>
                    </div>

                    <div class="time-box">
                        <strong id="dealSeconds">00</strong>
                        <small>Seconds</small>
                    </div>

                </div>

                <div class="deal-price">
                    $999
                    <span class="old-price">$1,199</span>
                </div>

                <p>
                    Only <strong>12</strong> items left at this price!
                </p>

                <button class="btn btn-primary"
                        id="buyDeal">
                    Buy Now
                </button>

            </div>

        </div>

    </section>


    <!-- TESTIMONIALS -->

    <section class="section container">

        <div class="title">

            <h2>What Our Customers Say</h2>

            <p class="muted">
                Real reviews from verified buyers.
            </p>

        </div>

        <div class="testimonials">

            <div class="testimonial">

                <div class="rating">
                    ★★★★★
                </div>

                <p>
                    "Fast shipping and excellent customer support.
                    The product exceeded my expectations!"
                </p>

                <div style="display:flex;align-items:center;gap:10px;">

                    <img
                        class="testimonial-avatar"
                        src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80"
                        alt="Ava Martin">

                    <div>
                        <strong>Ava Martin</strong>
                        <div class="muted">
                            Verified buyer
                        </div>
                    </div>

                </div>

            </div>


            <div class="testimonial">

                <div class="rating">
                    ★★★★☆
                </div>

                <p>
                    "Great selection and the checkout was smooth.
                    Will shop again."
                </p>

                <div style="display:flex;align-items:center;gap:10px;">

                    <img
                        class="testimonial-avatar"
                        src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80"
                        alt="Michael Lee">

                    <div>
                        <strong>Michael Lee</strong>
                        <div class="muted">
                            Frequent buyer
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- NEWSLETTER -->

    <section class="section container">

        <div class="newsletter">

            <h2>Stay in the Loop</h2>

            <p>
                Subscribe to get exclusive offers and new arrivals.
            </p>

            <form class="newsletter-form"
                  id="newsletterForm">

                <input
                    type="email"
                    id="newsletterEmail"
                    placeholder="Enter your email"
                    required>

                <button class="btn btn-primary"
                        type="submit">
                    Subscribe
                </button>

            </form>

            <div id="newsletterMsg"
                 style="margin-top:12px;">
            </div>

        </div>

    </section>

</main>


<!-- ================= FOOTER ================= -->

<footer id="about">

    <div class="container footer-inner">

        <div style="max-width:360px;">

            <div style="font-size:20px;font-weight:700;">
                NexusShop
            </div>

            <p class="muted">
                A modern e-commerce demo built with
                HTML, CSS and JavaScript.
            </p>

            <div style="display:flex;gap:14px;">

                <button class="icon-btn">
                    <i class="fab fa-facebook"></i>
                </button>

                <button class="icon-btn">
                    <i class="fab fa-twitter"></i>
                </button>

                <button class="icon-btn">
                    <i class="fab fa-instagram"></i>
                </button>

            </div>

        </div>

        <div class="footer-links">

            <div>
                <strong>Company</strong>

                <p class="muted">
                    About<br>
                    Careers<br>
                    Press
                </p>
            </div>

            <div>
                <strong>Support</strong>

                <p class="muted">
                    Help Center<br>
                    Shipping & Returns<br>
                    Contact
                </p>
            </div>

        </div>

    </div>

    <div class="text-center"
         style="margin-top:25px;font-size:13px;">

        © <span id="year"></span>
        NexusShop. All rights reserved.

    </div>

</footer>


<!-- ================= JAVASCRIPT ================= -->

<script>

    /* ================= DATA ================= */

    const CATEGORIES = [
        {
            id: "phones",
            name: "Smartphones",
            icon: "fa-mobile-alt"
        },
        {
            id: "laptops",
            name: "Laptops",
            icon: "fa-laptop"
        },
        {
            id: "clothing",
            name: "Clothing",
            icon: "fa-tshirt"
        },
        {
            id: "gadgets",
            name: "Gadgets",
            icon: "fa-headphones"
        },
        {
            id: "footwear",
            name: "Footwear",
            icon: "fa-shoe-prints"
        },
        {
            id: "accessories",
            name: "Accessories",
            icon: "fa-clock"
        }
    ];


    const PRODUCTS = [

        {
            id: 1,
            title: "iPhone 14 Pro Max",
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: "New",
            img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80",
            category: "phones"
        },

        {
            id: 2,
            title: "MacBook Pro 14",
            price: 1999,
            rating: 4,
            reviews: 86,
            img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80",
            category: "laptops"
        },

        {
            id: 3,
            title: "Apple Watch Series 8",
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 214,
            badge: "-25%",
            img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80",
            category: "accessories"
        },

        {
            id: 4,
            title: "Nike Air Max 270",
            price: 150,
            rating: 4,
            reviews: 53,
            img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80",
            category: "footwear"
        },

        {
            id: 5,
            title: "Sony A7 IV Camera",
            price: 2499,
            rating: 5,
            reviews: 42,
            img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80",
            category: "gadgets"
        },

        {
            id: 6,
            title: "Chanel No. 5",
            price: 120,
            rating: 5,
            reviews: 189,
            img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80",
            category: "accessories"
        },

        {
            id: 7,
            title: "Travel Backpack",
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 67,
            img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80",
            category: "accessories"
        },

        {
            id: 8,
            title: "Sony WH-1000XM5",
            price: 399,
            rating: 5,
            reviews: 156,
            img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80",
            category: "gadgets"
        }

    ];


    /* ================= DOM ================= */

    const categoriesGrid =
        document.getElementById("categoriesGrid");

    const productsGrid =
        document.getElementById("productsGrid");

    const cartCountEl =
        document.getElementById("cartCount");

    const searchInput =
        document.getElementById("searchInput");

    let cartCount = 0;


    /* ================= CATEGORIES ================= */

    function renderCategories() {

        categoriesGrid.innerHTML = "";

        CATEGORIES.forEach(category => {

            const card = document.createElement("div");

            card.className = "cat-card";

            card.innerHTML = `
                <div class="icon">
                    <i class="fas ${category.icon}"></i>
                </div>

                <h4>${category.name}</h4>

                <div class="muted"
                     style="font-size:13px;">
                    Explore ${category.name}
                </div>
            `;

            card.addEventListener("click", () => {

                filterProducts(category.id);

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });

            categoriesGrid.appendChild(card);

        });
    }


    /* ================= PRODUCTS ================= */

    function renderProducts(products) {

        productsGrid.innerHTML = "";

        if (products.length === 0) {

            productsGrid.innerHTML = `
                <div style="grid-column:1/-1;text-align:center;padding:40px;">
                    <h3>No products found</h3>
                    <p class="muted">
                        Try searching for another product.
                    </p>
                </div>
            `;

            return;
        }


        products.forEach(product => {

            const card = document.createElement("article");

            card.className = "product";

            let badgeHTML = "";

            if (product.badge) {

                badgeHTML = `
                    <span class="badge ${
                        product.badge.startsWith("-")
                            ? "badge-sale"
                            : "badge-new"
                    }">
                        ${product.badge}
                    </span>
                `;
            }


            card.innerHTML = `

                ${badgeHTML}

                <img
                    class="product-image"
                    src="${product.img}"
                    alt="${escapeHtml(product.title)}"
                    loading="lazy">

                <div class="product-body">

                    <h3>
                        ${escapeHtml(product.title)}
                    </h3>

                    <div class="muted">
                        ${product.category}
                    </div>

                    <div class="price-row">

                        <div>

                            <div class="price">
                                $${product.price.toLocaleString()}
                            </div>

                            ${
                                product.oldPrice
                                    ? `
                                    <span class="old-price">
                                        $${product.oldPrice.toLocaleString()}
                                    </span>
                                    `
                                    : ""
                            }

                        </div>

                        <div class="rating">

                            ${"★".repeat(product.rating)}

                            <span class="muted">
                                (${product.reviews})
                            </span>

                        </div>

                    </div>

                </div>

                <div class="product-footer">

                    <button
                        class="add-btn"
                        data-id="${product.id}">

                        <i class="fas fa-cart-plus"></i>
                        Add to Cart

                    </button>

                    <button
                        class="wish-btn"
                        aria-label="Add to wishlist">

                        <i class="far fa-heart"></i>

                    </button>

                </div>
            `;

            productsGrid.appendChild(card);

        });


        /* Add cart listeners */

        productsGrid
            .querySelectorAll(".add-btn")
            .forEach(button => {

                button.addEventListener("click", () => {

                    addToCart(
                        Number(button.dataset.id),
                        button
                    );

                });

            });


        /* Wishlist listeners */

        productsGrid
            .querySelectorAll(".wish-btn")
            .forEach(button => {

                button.addEventListener("click", () => {

                    const icon =
                        button.querySelector("i");

                    icon.classList.toggle("far");
                    icon.classList.toggle("fas");

                });

            });

    }


    /* ================= CART ================= */

    function addToCart(productId, button) {

        const product =
            PRODUCTS.find(p => p.id === productId);

        if (!product) return;

        cartCount++;

        cartCountEl.textContent = cartCount;

        const original =
            button.innerHTML;

        button.innerHTML =
            "Added ✓";

        button.disabled = true;

        setTimeout(() => {

            button.innerHTML = original;

            button.disabled = false;

        }, 1200);

    }


    /* ================= SEARCH ================= */

    function filterProducts(query) {

        const search =
            String(query)
                .trim()
                .toLowerCase();

        if (!search) {

            renderProducts(PRODUCTS);

            return;
        }


        const filtered =
            PRODUCTS.filter(product =>

                product.title
                    .toLowerCase()
                    .includes(search)

                ||

                product.category
                    .toLowerCase()
                    .includes(search)

            );

        renderProducts(filtered);

    }


    document
        .getElementById("searchBtn")
        .addEventListener("click", () => {

            filterProducts(searchInput.value);

        });


    searchInput
        .addEventListener("keydown", event => {

            if (event.key === "Enter") {

                filterProducts(event.target.value);

            }

        });


    /* ================= MOBILE MENU ================= */

    const mobileToggle =
        document.getElementById("mobileToggle");

    const mobileMenu =
        document.getElementById("mobileMenu");


    mobileToggle.addEventListener("click", () => {

        const isHidden =
            mobileMenu.style.display === "none";

        mobileMenu.style.display =
            isHidden ? "block" : "none";

    });


    /* ================= SHOP NOW ================= */

    document
        .getElementById("shopNow")
        .addEventListener("click", () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    /* ================= DEALS ================= */

    document
        .getElementById("exploreDeals")
        .addEventListener("click", () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    /* ================= DEAL BUTTON ================= */

    document
        .getElementById("buyDeal")
        .addEventListener("click", () => {

            cartCount++;

            cartCountEl.textContent =
                cartCount;

            alert(
                "MacBook Air M2 added to cart!"
            );

        });


    /* ================= COUNTDOWN ================= */

    function setupDealTimer() {

        const target =
            new Date().getTime()
            +
            (24 * 60 + 36) * 60 * 1000;


        const timer =
            setInterval(() => {

                const difference =
                    target - new Date().getTime();


                if (difference <= 0) {

                    clearInterval(timer);

                    return;
                }


                const days =
                    Math.floor(
                        difference /
                        (1000 * 60 * 60 * 24)
                    );

                const hours =
                    Math.floor(
                        (difference %
                        (1000 * 60 * 60 * 24))
                        /
                        (1000 * 60 * 60)
                    );

                const minutes =
                    Math.floor(
                        (difference %
                        (1000 * 60 * 60))
                        /
                        (1000 * 60)
                    );

                const seconds =
                    Math.floor(
                        (difference %
                        (1000 * 60))
                        /
                        1000
                    );


                document.getElementById("dealDays")
                    .textContent = days;

                document.getElementById("dealHours")
                    .textContent =
                    String(hours).padStart(2, "0");

                document.getElementById("dealMinutes")
                    .textContent =
                    String(minutes).padStart(2, "0");

                document.getElementById("dealSeconds")
                    .textContent =
                    String(seconds).padStart(2, "0");

            }, 1000);

        }

        setupDealTimer();


    /* ================= NEWSLETTER ================= */

    document
        .getElementById("newsletterForm")
        .addEventListener("submit", event => {

            event.preventDefault();

            const email =
                document
                    .getElementById("newsletterEmail")
                    .value
                    .trim();

            const message =
                document.getElementById(
                    "newsletterMsg"
                );


            if (!email.includes("@")) {

                message.textContent =
                    "Please enter a valid email address.";

                return;
            }


            message.textContent =
                "Thanks! You are subscribed.";

            document
                .getElementById("newsletterEmail")
                .value = "";

            setTimeout(() => {

                message.textContent = "";

            }, 3000);

        });


    /* ================= UTILITY ================= */

    function escapeHtml(text) {

        return String(text)
            .replace(/[&<>"']/g, character => ({

                "&": "&amp;",
                "<": "&lt;",
                ">": "&gt;",
                '"': "&quot;",
                "'": "&#39;"

            }[character]));

    }


    /* ================= INITIALIZATION ================= */

    renderCategories();

    renderProducts(PRODUCTS);

    cartCountEl.textContent =
        cartCount;

    document.getElementById("year")
        .textContent =
        new Date().getFullYear();

</script>

</body>
</html>
```
