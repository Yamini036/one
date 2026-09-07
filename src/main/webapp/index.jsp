```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Modern E-Commerce</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    >

    <style>
        :root {
            --bg: #ffffff;
            --primary: #0a2540;
            --primary-light: #163b5c;
            --accent: #00cfff;
            --accent-dark: #00a9d4;
            --muted: #718096;
            --surface: #f5f8fb;
            --card: #ffffff;
            --border: #e6edf3;
            --danger: #ff4757;
            --success: #28a745;
            --warning: #ffc107;
            --shadow: 0 10px 30px rgba(10, 37, 64, 0.08);
            --radius: 16px;
            --container: 1200px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont,
                "Segoe UI", sans-serif;
            color: var(--primary);
            background: var(--bg);
            line-height: 1.5;
            transition: background .3s ease, color .3s ease;
        }

        body.no-scroll {
            overflow: hidden;
        }

        body.dark {
            --bg: #081521;
            --primary: #f3f7fa;
            --primary-light: #d8e4ec;
            --muted: #9aabb8;
            --surface: #102331;
            --card: #102331;
            --border: #1d394c;
            --shadow: 0 10px 30px rgba(0, 0, 0, .25);
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        img {
            max-width: 100%;
        }

        .container {
            width: min(100% - 40px, var(--container));
            margin: auto;
        }

        .muted {
            color: var(--muted);
        }

        /* =========================
           HEADER
        ========================== */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255,255,255,.94);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(15px);
        }

        body.dark header {
            background: rgba(8,21,33,.94);
        }

        .header-inner {
            min-height: 76px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 9px;
            font-family: Poppins, sans-serif;
            font-size: 23px;
            font-weight: 800;
            white-space: nowrap;
        }

        .brand i {
            color: var(--accent);
        }

        .brand-accent {
            color: var(--accent);
        }

        .main-nav ul {
            display: flex;
            list-style: none;
            gap: 4px;
        }

        .main-nav a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 10px 12px;
            border-radius: 9px;
            font-size: 14px;
            font-weight: 600;
            transition: .2s;
        }

        .main-nav a:hover,
        .main-nav a.active {
            background: var(--surface);
            color: var(--accent-dark);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search {
            display: flex;
            align-items: center;
            width: 260px;
            padding: 8px 12px;
            background: var(--surface);
            border: 1px solid transparent;
            border-radius: 999px;
            transition: .2s;
        }

        .search:focus-within {
            border-color: var(--accent);
            background: var(--bg);
        }

        .search input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;
            color: var(--primary);
            padding: 2px 8px;
            font-size: 13px;
        }

        .search button,
        .icon-btn {
            border: 0;
            background: transparent;
            color: var(--primary);
        }

        .icon-btn {
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            transition: .2s;
        }

        .icon-btn:hover {
            background: var(--surface);
            color: var(--accent-dark);
        }

        .cart-button {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            min-width: 19px;
            height: 19px;
            padding: 0 5px;
            display: grid;
            place-items: center;
            background: var(--accent);
            color: #062132;
            font-size: 10px;
            font-weight: 800;
            border-radius: 20px;
        }

        .mobile-toggle {
            display: none;
        }

        /* =========================
           HERO
        ========================== */

        .hero {
            min-height: 510px;
            display: flex;
            align-items: center;
            color: white;
            background:
                linear-gradient(90deg, rgba(5,20,35,.92), rgba(5,20,35,.55)),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
                center/cover;
        }

        .hero-content {
            max-width: 760px;
            padding: 80px 0;
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 13px;
            border-radius: 999px;
            background: rgba(0,207,255,.15);
            border: 1px solid rgba(0,207,255,.3);
            color: #bff5ff;
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: clamp(36px, 6vw, 64px);
            line-height: 1.08;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: var(--accent);
        }

        .hero p {
            max-width: 680px;
            color: rgba(255,255,255,.88);
            font-size: 17px;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            border: 0;
            border-radius: 999px;
            padding: 12px 20px;
            font-weight: 700;
            transition: transform .2s, background .2s, box-shadow .2s;
        }

        .btn:hover {
            transform: translateY(-2px);
        }

        .btn-primary {
            background: var(--accent);
            color: #062132;
        }

        .btn-primary:hover {
            background: #30dcff;
            box-shadow: 0 10px 25px rgba(0,207,255,.25);
        }

        .btn-outline {
            background: transparent;
            color: white;
            border: 1px solid rgba(255,255,255,.35);
        }

        .btn-outline:hover {
            background: rgba(255,255,255,.1);
        }

        /* =========================
           SECTIONS
        ========================== */

        .section {
            padding: 75px 0;
        }

        .section-heading {
            text-align: center;
            margin-bottom: 35px;
        }

        .section-heading h2 {
            font-family: Poppins, sans-serif;
            font-size: 30px;
            margin-bottom: 8px;
        }

        .section-heading p {
            color: var(--muted);
        }

        /* =========================
           CATEGORIES
        ========================== */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }

        .category-card {
            padding: 25px 15px;
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            text-align: center;
            cursor: pointer;
            transition: .25s;
        }

        .category-card:hover {
            transform: translateY(-6px);
            border-color: var(--accent);
            box-shadow: var(--shadow);
        }

        .category-icon {
            width: 58px;
            height: 58px;
            display: grid;
            place-items: center;
            margin: auto;
            border-radius: 50%;
            background: rgba(0,207,255,.1);
            color: var(--accent-dark);
            font-size: 23px;
            margin-bottom: 13px;
        }

        .category-card h3 {
            font-size: 14px;
            margin-bottom: 4px;
        }

        .category-card p {
            color: var(--muted);
            font-size: 12px;
        }

        /* =========================
           PRODUCTS
        ========================== */

        .products-toolbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 15px;
            margin-bottom: 22px;
        }

        .results-count {
            color: var(--muted);
            font-size: 14px;
        }

        .sort-select {
            padding: 10px 14px;
            border: 1px solid var(--border);
            border-radius: 9px;
            background: var(--card);
            color: var(--primary);
            outline: none;
        }

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            position: relative;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            transition: .25s;
        }

        .product:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .product-image {
            position: relative;
            height: 220px;
            overflow: hidden;
            background: var(--surface);
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform .4s;
        }

        .product:hover .product-image img {
            transform: scale(1.05);
        }

        .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            z-index: 2;
            padding: 5px 9px;
            border-radius: 7px;
            background: var(--accent);
            color: #062132;
            font-size: 11px;
            font-weight: 800;
        }

        .badge.sale {
            background: var(--danger);
            color: white;
        }

        .wishlist {
            position: absolute;
            top: 10px;
            right: 10px;
            z-index: 3;
            width: 37px;
            height: 37px;
            border: 0;
            border-radius: 50%;
            background: rgba(255,255,255,.92);
            color: #445;
            display: grid;
            place-items: center;
            transition: .2s;
        }

        .wishlist.active {
            color: var(--danger);
        }

        .product-body {
            padding: 17px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-category {
            color: var(--accent-dark);
            text-transform: uppercase;
            font-size: 10px;
            font-weight: 800;
            letter-spacing: .08em;
            margin-bottom: 6px;
        }

        .product-title {
            font-size: 15px;
            margin-bottom: 8px;
        }

        .rating {
            color: #ffc107;
            font-size: 12px;
            margin-bottom: 13px;
        }

        .rating span {
            color: var(--muted);
            margin-left: 4px;
        }

        .price-row {
            display: flex;
            align-items: center;
            gap: 9px;
            margin-top: auto;
            margin-bottom: 15px;
        }

        .price {
            font-size: 18px;
            font-weight: 800;
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 13px;
        }

        .product-actions {
            display: flex;
            gap: 8px;
        }

        .add-btn {
            flex: 1;
            padding: 10px;
            border: 0;
            border-radius: 9px;
            background: var(--primary);
            color: var(--bg);
            font-weight: 700;
            transition: .2s;
        }

        .add-btn:hover {
            background: var(--accent);
            color: #062132;
        }

        .view-btn {
            width: 43px;
            border: 1px solid var(--border);
            border-radius: 9px;
            background: transparent;
            color: var(--primary);
        }

        .empty-state {
            grid-column: 1 / -1;
            text-align: center;
            padding: 60px 20px;
            color: var(--muted);
        }

        .empty-state i {
            font-size: 45px;
            margin-bottom: 15px;
        }

        /* =========================
           FLASH DEAL
        ========================== */

        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;
            overflow: hidden;
            border-radius: var(--radius);
            background: var(--surface);
            border: 1px solid var(--border);
        }

        .deal-image {
            min-height: 390px;
        }

        .deal-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 50px;
            display: flex;
            justify-content: center;
            flex-direction: column;
        }

        .deal-label {
            color: var(--danger);
            text-transform: uppercase;
            font-size: 12px;
            font-weight: 800;
            letter-spacing: .1em;
            margin-bottom: 10px;
        }

        .deal h2 {
            font-family: Poppins, sans-serif;
            font-size: 35px;
            margin-bottom: 10px;
        }

        .deal-description {
            color: var(--muted);
            margin-bottom: 20px;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 15px 0 25px;
            flex-wrap: wrap;
        }

        .time-box {
            min-width: 70px;
            padding: 10px 8px;
            border-radius: 9px;
            background: var(--primary);
            color: var(--bg);
            text-align: center;
        }

        .time-box strong {
            display: block;
            font-size: 21px;
        }

        .time-box span {
            display: block;
            font-size: 10px;
            opacity: .7;
        }

        .deal-price {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 20px;
        }

        .deal-price strong {
            font-size: 30px;
        }

        .discount {
            background: var(--danger);
            color: white;
            padding: 5px 9px;
            border-radius: 7px;
            font-size: 12px;
            font-weight: 800;
        }

        /* =========================
           TESTIMONIALS
        ========================== */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .testimonial {
            padding: 25px;
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
        }

        .testimonial-stars {
            color: #ffc107;
            margin-bottom: 14px;
        }

        .testimonial p {
            color: var(--muted);
            font-size: 14px;
            margin-bottom: 20px;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .customer img {
            width: 43px;
            height: 43px;
            object-fit: cover;
            border-radius: 50%;
        }

        .customer strong {
            display: block;
            font-size: 13px;
        }

        .customer span {
            font-size: 11px;
            color: var(--muted);
        }

        /* =========================
           NEWSLETTER
        ========================== */

        .newsletter {
            padding: 55px 25px;
            border-radius: var(--radius);
            background: var(--primary);
            color: var(--bg);
            text-align: center;
        }

        .newsletter h2 {
            font-family: Poppins, sans-serif;
            font-size: 30px;
            margin-bottom: 8px;
        }

        .newsletter p {
            opacity: .75;
            margin-bottom: 23px;
        }

        .newsletter-form {
            max-width: 510px;
            margin: auto;
            display: flex;
            gap: 8px;
        }

        .newsletter-form input {
            flex: 1;
            min-width: 0;
            padding: 13px 17px;
            border: 0;
            outline: 0;
            border-radius: 999px;
        }

        .newsletter-message {
            margin-top: 12px;
            font-size: 13px;
            display: none;
        }

        /* =========================
           FOOTER
        ========================== */

        footer {
            padding: 55px 0 25px;
            border-top: 1px solid var(--border);
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 35px;
        }

        .footer-brand p {
            max-width: 350px;
            color: var(--muted);
            font-size: 13px;
            margin: 13px 0 18px;
        }

        .socials {
            display: flex;
            gap: 8px;
        }

        .socials a {
            width: 35px;
            height: 35px;
            border: 1px solid var(--border);
            border-radius: 50%;
            display: grid;
            place-items: center;
            transition: .2s;
        }

        .socials a:hover {
            background: var(--accent);
            color: #062132;
        }

        .footer-col h4 {
            margin-bottom: 13px;
        }

        .footer-col a {
            display: block;
            color: var(--muted);
            font-size: 13px;
            margin: 8px 0;
        }

        .footer-col a:hover {
            color: var(--accent-dark);
        }

        .copyright {
            border-top: 1px solid var(--border);
            margin-top: 35px;
            padding-top: 20px;
            text-align: center;
            color: var(--muted);
            font-size: 12px;
        }

        /* =========================
           CART DRAWER
        ========================== */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.5);
            z-index: 1998;
            opacity: 0;
            pointer-events: none;
            transition: .3s;
        }

        .overlay.show {
            opacity: 1;
            pointer-events: auto;
        }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: -440px;
            z-index: 2000;
            width: min(430px, 100%);
            height: 100vh;
            background: var(--card);
            box-shadow: -10px 0 35px rgba(0,0,0,.15);
            display: flex;
            flex-direction: column;
            transition: right .3s ease;
        }

        .cart-drawer.open {
            right: 0;
        }

        .cart-header {
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 1px solid var(--border);
        }

        .cart-header h3 {
            font-family: Poppins, sans-serif;
        }

        .close-btn {
            border: 0;
            background: transparent;
            color: var(--primary);
            font-size: 20px;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 15px;
        }

        .cart-item {
            display: grid;
            grid-template-columns: 70px 1fr auto;
            gap: 12px;
            align-items: center;
            padding: 12px 0;
            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 70px;
            height: 70px;
            object-fit: cover;
            border-radius: 9px;
        }

        .cart-item h4 {
            font-size: 13px;
            margin-bottom: 4px;
        }

        .cart-item-price {
            font-size: 12px;
            color: var(--muted);
        }

        .quantity {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 8px;
        }

        .quantity button {
            width: 25px;
            height: 25px;
            border: 1px solid var(--border);
            background: transparent;
            color: var(--primary);
            border-radius: 5px;
        }

        .remove-item {
            border: 0;
            background: transparent;
            color: var(--danger);
        }

        .cart-empty {
            text-align: center;
            padding: 70px 20px;
            color: var(--muted);
        }

        .cart-empty i {
            display: block;
            font-size: 45px;
            margin-bottom: 15px;
        }

        .cart-footer {
            padding: 20px;
            border-top: 1px solid var(--border);
        }

        .subtotal {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
            font-weight: 800;
        }

        .checkout-btn {
            width: 100%;
        }

        /* =========================
           PRODUCT MODAL
        ========================== */

        .modal {
            position: fixed;
            inset: 0;
            z-index: 3000;
            background: rgba(0,0,0,.6);
            display: none;
            place-items: center;
            padding: 20px;
        }

        .modal.show {
            display: grid;
        }

        .modal-card {
            width: min(850px, 100%);
            max-height: 90vh;
            overflow-y: auto;
            background: var(--card);
            border-radius: var(--radius);
            position: relative;
        }

        .modal-close {
            position: absolute;
            top: 15px;
            right: 15px;
            z-index: 3;
            width: 38px;
            height: 38px;
            border: 0;
            border-radius: 50%;
            background: rgba(0,0,0,.55);
            color: white;
        }

        .modal-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
        }

        .modal-image {
            min-height: 400px;
        }

        .modal-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: var(--radius) 0 0 var(--radius);
        }

        .modal-info {
            padding: 40px;
        }

        .modal-info h2 {
            font-family: Poppins, sans-serif;
            margin-bottom: 10px;
        }

        .modal-info .description {
            color: var(--muted);
            margin: 18px 0;
        }

        /* =========================
           TOAST
        ========================== */

        .toast {
            position: fixed;
            left: 50%;
            bottom: 25px;
            z-index: 5000;
            transform: translate(-50%, 100px);
            background: var(--primary);
            color: var(--bg);
            padding: 12px 18px;
            border-radius: 999px;
            font-size: 13px;
            box-shadow: var(--shadow);
            opacity: 0;
            transition: .3s;
        }

        .toast.show {
            transform: translate(-50%, 0);
            opacity: 1;
        }

        /* =========================
           RESPONSIVE
        ========================== */

        @media (max-width: 1100px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .search {
                width: 210px;
            }
        }

        @media (max-width: 900px) {
            .main-nav {
                display: none;
            }

            .mobile-toggle {
                display: grid;
                place-items: center;
            }

            .header-inner {
                gap: 10px;
            }

            .header-right {
                margin-left: auto;
            }

            .search {
                width: 190px;
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 280px;
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 2fr 1fr 1fr;
            }

            .footer-col:last-child {
                display: none;
            }
        }

        @media (max-width: 650px) {
            .container {
                width: min(100% - 28px, var(--container));
            }

            .header-inner {
                min-height: 65px;
            }

            .brand {
                font-size: 19px;
            }

            .search {
                width: 145px;
            }

            .header-right .theme-btn {
                display: none;
            }

            .hero {
                min-height: 520px;
            }

            .hero-content {
                padding: 55px 0;
            }

            .hero p {
                font-size: 15px;
            }

            .section {
                padding: 55px 0;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr;
            }

            .products-toolbar {
                align-items: stretch;
                flex-direction: column;
            }

            .sort-select {
                width: 100%;
            }

            .deal-content {
                padding: 30px 20px;
            }

            .deal h2 {
                font-size: 28px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter-form input,
            .newsletter-form button {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }

            .footer-brand {
                grid-column: 1 / -1;
            }

            .modal-content {
                grid-template-columns: 1fr;
            }

            .modal-image {
                min-height: 280px;
            }

            .modal-image img {
                border-radius: var(--radius) var(--radius) 0 0;
            }

            .modal-info {
                padding: 25px;
            }
        }

        @media (max-width: 450px) {
            .search {
                width: 125px;
            }

            .header-right {
                gap: 2px;
            }

            .categories {
                gap: 10px;
            }

            .category-card {
                padding: 18px 8px;
            }

            .category-icon {
                width: 48px;
                height: 48px;
            }
        }
    </style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>
    <div class="container header-inner">

        <div style="display:flex;align-items:center;gap:8px;">

            <button
                class="icon-btn mobile-toggle"
                id="mobileToggle"
                aria-label="Open menu"
            >
                <i class="fas fa-bars"></i>
            </button>

            <a href="#" class="brand">
                <i class="fas fa-bag-shopping"></i>
                Nexus<span class="brand-accent">Shop</span>
            </a>

        </div>

        <nav class="main-nav">
            <ul>
                <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
            </ul>
        </nav>

        <div class="header-right">

            <div class="search">
                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    aria-label="Search products"
                >
                <button id="searchBtn" aria-label="Search">
                    <i class="fas fa-search"></i>
                </button>
            </div>

            <button
                class="icon-btn theme-btn"
                id="themeToggle"
                title="Toggle dark mode"
                aria-label="Toggle dark mode"
            >
                <i class="fas fa-moon"></i>
            </button>

            <button
                class="icon-btn"
                id="wishlistHeader"
                title="Wishlist"
                aria-label="Wishlist"
            >
                <i class="far fa-heart"></i>
            </button>

            <button
                class="icon-btn cart-button"
                id="cartBtn"
                title="Shopping cart"
                aria-label="Shopping cart"
            >
                <i class="fas fa-shopping-cart"></i>
                <span class="cart-count" id="cartCount">0</span>
            </button>

        </div>
    </div>

    <!-- Mobile Menu -->
    <div id="mobileMenu" style="display:none;border-top:1px solid var(--border);">
        <div class="container" style="padding:15px 0;">
            <nav>
                <a href="#" style="display:block;padding:10px;">Home</a>
                <a href="#categories" style="display:block;padding:10px;">Categories</a>
                <a href="#products" style="display:block;padding:10px;">Trending</a>
                <a href="#deals" style="display:block;padding:10px;">Deals</a>
                <a href="#about" style="display:block;padding:10px;">About</a>
            </nav>
        </div>
    </div>
</header>


<main>

<!-- ================= HERO ================= -->

<section class="hero">
    <div class="container">
        <div class="hero-content">

            <div class="hero-tag">
                <i class="fas fa-sparkles"></i>
                NEW SEASON COLLECTION
            </div>

            <h1>
                Premium Picks.<br>
                <span>Better Shopping.</span>
            </h1>

            <p>
                Discover the latest trends in fashion, technology and
                accessories. Curated products, amazing prices and fast delivery.
            </p>

            <div class="hero-buttons">
                <button class="btn btn-primary" id="shopNow">
                    Shop Now
                    <i class="fas fa-arrow-right"></i>
                </button>

                <button class="btn btn-outline" id="exploreDeals">
                    Explore Deals
                </button>
            </div>

        </div>
    </div>
</section>


<!-- ================= CATEGORIES ================= -->

<section class="section" id="categories">
    <div class="container">

        <div class="section-heading">
            <h2>Shop by Category</h2>
            <p>Find exactly what you're looking for.</p>
        </div>

        <div class="categories" id="categoriesGrid"></div>

    </div>
</section>


<!-- ================= PRODUCTS ================= -->

<section class="section" id="products">
    <div class="container">

        <div class="section-heading">
            <h2>Trending Products</h2>
            <p>Popular picks selected for you.</p>
        </div>

        <div class="products-toolbar">

            <div class="results-count" id="resultsCount">
                Showing all products
            </div>

            <select class="sort-select" id="sortSelect">
                <option value="default">Sort: Recommended</option>
                <option value="low">Price: Low to High</option>
                <option value="high">Price: High to Low</option>
                <option value="rating">Highest Rated</option>
            </select>

        </div>

        <div class="products" id="productsGrid"></div>

    </div>
</section>


<!-- ================= FLASH SALE ================= -->

<section class="section" id="deals">
    <div class="container">

        <div class="section-heading">
            <h2>Flash Sale</h2>
            <p>Limited-time offers you don't want to miss.</p>
        </div>

        <div class="deal">

            <div class="deal-image">
                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
                    alt="MacBook Air"
                >
            </div>

            <div class="deal-content">

                <div class="deal-label">
                    <i class="fas fa-bolt"></i>
                    Limited Time Deal
                </div>

                <h2>MacBook Air M2</h2>

                <p class="deal-description">
                    Thin, light and powerful. Experience incredible performance
                    with Apple's M2 chip.
                </p>

                <div class="timer">

                    <div class="time-box">
                        <strong id="dealDays">00</strong>
                        <span>Days</span>
                    </div>

                    <div class="time-box">
                        <strong id="dealHours">00</strong>
                        <span>Hours</span>
                    </div>

                    <div class="time-box">
                        <strong id="dealMinutes">00</strong>
                        <span>Minutes</span>
                    </div>

                    <div class="time-box">
                        <strong id="dealSeconds">00</strong>
                        <span>Seconds</span>
                    </div>

                </div>

                <div class="deal-price">
                    <strong>$999</strong>
                    <span class="old-price">$1,199</span>
                    <span class="discount">-17%</span>
                </div>

                <button class="btn btn-primary" id="buyDeal">
                    <i class="fas fa-cart-plus"></i>
                    Add Deal to Cart
                </button>

            </div>
        </div>

    </div>
</section>


<!-- ================= TESTIMONIALS ================= -->

<section class="section">
    <div class="container">

        <div class="section-heading">
            <h2>What Customers Say</h2>
            <p>Real experiences from our shoppers.</p>
        </div>

        <div class="testimonials">

            <article class="testimonial">
                <div class="testimonial-stars">★★★★★</div>

                <p>
                    "Fast shipping and excellent customer support.
                    The product exceeded my expectations!"
                </p>

                <div class="customer">
                    <img
                        src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                        alt="Ava Martin"
                    >

                    <div>
                        <strong>Ava Martin</strong>
                        <span>Verified Buyer</span>
                    </div>
                </div>
            </article>

            <article class="testimonial">
                <div class="testimonial-stars">★★★★★</div>

                <p>
                    "Great selection and the checkout was incredibly smooth.
                    I'll definitely shop here again."
                </p>

                <div class="customer">
                    <img
                        src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                        alt="Michael Lee"
                    >

                    <div>
                        <strong>Michael Lee</strong>
                        <span>Frequent Buyer</span>
                    </div>
                </div>
            </article>

            <article class="testimonial">
                <div class="testimonial-stars">★★★★☆</div>

                <p>
                    "Excellent quality and prices. The website is easy to use
                    and my order arrived earlier than expected."
                </p>

                <div class="customer">
                    <img
                        src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                        alt="Sophia Wilson"
                    >

                    <div>
                        <strong>Sophia Wilson</strong>
                        <span>Verified Buyer</span>
                    </div>
                </div>
            </article>

        </div>

    </div>
</section>


<!-- ================= NEWSLETTER ================= -->

<section class="section">
    <div class="container">

        <div class="newsletter">

            <h2>Stay in the Loop</h2>

            <p>
                Subscribe for exclusive offers, new arrivals and special discounts.
            </p>

            <form class="newsletter-form" id="newsletterForm">

                <input
                    type="email"
                    id="newsletterEmail"
                    placeholder="Enter your email address"
                    required
                >

                <button class="btn btn-primary" type="submit">
                    Subscribe
                </button>

            </form>

            <div
                class="newsletter-message"
                id="newsletterMessage"
            ></div>

        </div>

    </div>
</section>

</main>


<!-- ================= FOOTER ================= -->

<footer id="about">

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#" class="brand">
                    <i class="fas fa-bag-shopping"></i>
                    Nexus<span class="brand-accent">Shop</span>
                </a>

                <p>
                    A modern e-commerce experience built for discovering
                    quality products at great prices.
                </p>

                <div class="socials">
                    <a href="#" aria-label="Facebook">
                        <i class="fab fa-facebook-f"></i>
                    </a>

                    <a href="#" aria-label="Twitter">
                        <i class="fab fa-x-twitter"></i>
                    </a>

                    <a href="#" aria-label="Instagram">
                        <i class="fab fa-instagram"></i>
                    </a>

                    <a href="#" aria-label="LinkedIn">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div>

            </div>

            <div class="footer-col">
                <h4>Company</h4>
                <a href="#about">About Us</a>
                <a href="#">Careers</a>
                <a href="#">Press</a>
            </div>

            <div class="footer-col">
                <h4>Support</h4>
                <a href="#">Help Center</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
            </div>

            <div class="footer-col">
                <h4>Shop</h4>
                <a href="#categories">Categories</a>
                <a href="#products">Products</a>
                <a href="#deals">Deals</a>
            </div>

        </div>

        <div class="copyright">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>


<!-- ================= CART ================= -->

<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">
        <h3>
            <i class="fas fa-shopping-cart"></i>
            Your Cart
        </h3>

        <button class="close-btn" id="closeCart">
            <i class="fas fa-xmark"></i>
        </button>
    </div>

    <div class="cart-items" id="cartItems"></div>

    <div class="cart-footer">

        <div class="subtotal">
            <span>Subtotal</span>
            <span id="cartTotal">$0.00</span>
        </div>

        <button class="btn btn-primary checkout-btn" id="checkoutBtn">
            Proceed to Checkout
            <i class="fas fa-arrow-right"></i>
        </button>

    </div>

</aside>


<!-- ================= PRODUCT MODAL ================= -->

<div class="modal" id="productModal">

    <div class="modal-card">

        <button class="modal-close" id="modalClose">
            <i class="fas fa-xmark"></i>
        </button>

        <div class="modal-content">

            <div class="modal-image">
                <img id="modalImage" src="" alt="">
            </div>

            <div class="modal-info">

                <div class="product-category" id="modalCategory"></div>

                <h2 id="modalTitle"></h2>

                <div class="rating" id="modalRating"></div>

                <div class="price-row">
                    <span class="price" id="modalPrice"></span>
                    <span class="old-price" id="modalOldPrice"></span>
                </div>

                <p class="description" id="modalDescription"></p>

                <button class="btn btn-primary" id="modalAdd">
                    <i class="fas fa-cart-plus"></i>
                    Add to Cart
                </button>

            </div>

        </div>

    </div>

</div>


<!-- ================= TOAST ================= -->

<div class="toast" id="toast"></div>


<script>
"use strict";

/* =====================================================
   PRODUCT DATA
===================================================== */

const CATEGORIES = [
    {
        id: "phones",
        name: "Smartphones",
        icon: "fa-mobile-screen-button"
    },
    {
        id: "laptops",
        name: "Laptops",
        icon: "fa-laptop"
    },
    {
        id: "clothing",
        name: "Clothing",
        icon: "fa-shirt"
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
        icon: "fa-watch"
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
        image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",
        category: "phones",
        description:
            "Premium smartphone with an advanced camera system, powerful performance and a stunning display."
    },
    {
        id: 2,
        title: "MacBook Pro 14",
        price: 1999,
        rating: 4,
        reviews: 86,
        image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",
        category: "laptops",
        description:
            "High-performance professional laptop designed for demanding creative and productivity workloads."
    },
    {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "-25%",
        sale: true,
        image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85",
        category: "accessories",
        description:
            "Smartwatch with health tracking, fitness features, notifications and an elegant everyday design."
    },
    {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85",
        category: "footwear",
        description:
            "Comfortable everyday sneakers featuring responsive cushioning and a modern athletic silhouette."
    },
    {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85",
        category: "gadgets",
        description:
            "Professional mirrorless camera delivering excellent image quality and versatile video performance."
    },
    {
        id: 6,
        title: "Chanel No. 5",
        price: 120,
        rating: 5,
        reviews: 189,
        image: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85",
        category: "accessories",
        description:
            "An elegant fragrance with a timeless character, perfect for special occasions and everyday luxury."
    },
    {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "Sale",
        sale: true,
        image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85",
        category: "accessories",
        description:
            "Durable and spacious backpack designed for travel, work and everyday adventures."
    },
    {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        image: "https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=700&q=85",
        category: "gadgets",
        description:
            "Premium wireless headphones with immersive sound, comfortable fit and advanced noise cancellation."
    }
];


/* =====================================================
   STATE
===================================================== */

let cart = JSON.parse(localStorage.getItem("nexusCart")) || [];
let wishlist = JSON.parse(localStorage.getItem("nexusWishlist")) || [];

let currentProducts = [...PRODUCTS];
let selectedProductId = null;


/* =====================================================
   DOM ELEMENTS
===================================================== */

const productsGrid = document.getElementById("productsGrid");
const categoriesGrid = document.getElementById("categoriesGrid");
const searchInput = document.getElementById("searchInput");
const searchBtn = document.getElementById("searchBtn");
const resultsCount = document.getElementById("resultsCount");
const sortSelect = document.getElementById("sortSelect");

const cartBtn = document.getElementById("cartBtn");
const cartDrawer = document.getElementById("cartDrawer");
const closeCart = document.getElementById("closeCart");
const overlay = document.getElementById("overlay");
const cartItems = document.getElementById("cartItems");
const cartCount = document.getElementById("cartCount");
const cartTotal = document.getElementById("cartTotal");
const checkoutBtn = document.getElementById("checkoutBtn");

const productModal = document.getElementById("productModal");
const modalClose = document.getElementById("modalClose");
const modalImage = document.getElementById("modalImage");
const modalTitle = document.getElementById("modalTitle");
const modalCategory = document.getElementById("modalCategory");
const modalPrice = document.getElementById("modalPrice");
const modalOldPrice = document.getElementById("modalOldPrice");
const modalRating = document.getElementById("modalRating");
const modalDescription = document.getElementById("modalDescription");
const modalAdd = document.getElementById("modalAdd");

const toast = document.getElementById("toast");


/* =====================================================
   HELPERS
===================================================== */

function formatPrice(price) {
    return "$" + Number(price).toLocaleString("en-US", {
        minimumFractionDigits: 2,
        maximumFractionDigits: 2
    });
}

function escapeHTML(text) {
    return String(text).replace(/[&<>"']/g, char => ({
        "&": "&amp;",
        "<": "&lt;",
        ">": "&gt;",
        '"': "&quot;",
        "'": "&#039;"
    }[char]));
}

function saveState() {
    localStorage.setItem("nexusCart", JSON.stringify(cart));
    localStorage.setItem("nexusWishlist", JSON.stringify(wishlist));
}

function showToast(message) {
    toast.textContent = message;
    toast.classList.add("show");

    clearTimeout(showToast.timeout);

    showToast.timeout = setTimeout(() => {
        toast.classList.remove("show");
    }, 2200);
}


/* =====================================================
   CATEGORIES
===================================================== */

function renderCategories() {

    categoriesGrid.innerHTML = CATEGORIES.map(category => {

        const count = PRODUCTS.filter(
            product => product.category === category.id
        ).length;

        return `
            <div class="category-card" data-category="${category.id}">
                <div class="category-icon">
                    <i class="fas ${category.icon}"></i>
                </div>

                <h3>${escapeHTML(category.name)}</h3>

                <p>${count} Products</p>
            </div>
        `;

    }).join("");

    document.querySelectorAll(".category-card").forEach(card => {

        card.addEventListener("click", () => {

            const category = card.dataset.category;

            searchInput.value = "";

            currentProducts = PRODUCTS.filter(
                product => product.category === category
            );

            renderProducts(currentProducts);

            document.getElementById("products").scrollIntoView({
                behavior: "smooth"
            });

        });

    });
}


/* =====================================================
   PRODUCTS
===================================================== */

function renderProducts(list) {

    productsGrid.innerHTML = "";

    resultsCount.textContent =
        `Showing ${list.length} product${list.length !== 1 ? "s" : ""}`;

    if (!list.length) {

        productsGrid.innerHTML = `
            <div class="empty-state">
                <i class="fas fa-box-open"></i>
                <h3>No products found</h3>
                <p>Try a different search term or category.</p>
            </div>
        `;

        return;
    }

    list.forEach(product => {

        const isWishlisted = wishlist.includes(product.id);

        const card = document.createElement("article");

        card.className = "product";

        card.innerHTML = `
            <div class="product-image">

                ${
                    product.badge
                        ? `
                        <span class="badge ${product.sale ? "sale" : ""}">
                            ${escapeHTML(product.badge)}
                        </span>
                        `
                        : ""
                }

                <button
                    class="wishlist ${isWishlisted ? "active" : ""}"
                    data-wishlist="${product.id}"
                    aria-label="Wishlist"
                >
                    <i class="${isWishlisted ? "fas" : "far"} fa-heart"></i>
                </button>

                <img
                    src="${product.image}"
                    alt="${escapeHTML(product.title)}"
                    loading="lazy"
                >

            </div>

            <div class="product-body">

                <div class="product-category">
                    ${escapeHTML(product.category)}
                </div>

                <h3 class="product-title">
                    ${escapeHTML(product.title)}
                </h3>

                <div class="rating">
                    ${"★".repeat(product.rating)}
                    ${"☆".repeat(5 - product.rating)}
                    <span>(${product.reviews})</span>
                </div>

                <div class="price-row">

                    <span class="price">
                        ${formatPrice(product.price)}
                    </span>

                    ${
                        product.oldPrice
                            ? `
                            <span class="old-price">
                                ${formatPrice(product.oldPrice)}
                            </span>
                            `
                            : ""
                    }

                </div>

                <div class="product-actions">

                    <button
                        class="add-btn"
                        data-add="${product.id}"
                    >
                        <i class="fas fa-cart-plus"></i>
                        Add to Cart
                    </button>

                    <button
                        class="view-btn"
                        data-view="${product.id}"
                        aria-label="View product"
                    >
                        <i class="fas fa-eye"></i>
                    </button>

                </div>

            </div>
        `;

        productsGrid.appendChild(card);
    });

    attachProductListeners();
}


/* =====================================================
   PRODUCT LISTENERS
===================================================== */

function attachProductListeners() {

    document.querySelectorAll("[data-add]").forEach(button => {

        button.addEventListener("click", () => {

            const id = Number(button.dataset.add);

            addToCart(id);

        });

    });


    document.querySelectorAll("[data-view]").forEach(button => {

        button.addEventListener("click", () => {

            openProductModal(Number(button.dataset.view));

        });

    });


    document.querySelectorAll("[data-wishlist]").forEach(button => {

        button.addEventListener("click", () => {

            toggleWishlist(Number(button.dataset.wishlist));

        });

    });
}


/* =====================================================
   SEARCH
===================================================== */

function searchProducts() {

    const query = searchInput.value.trim().toLowerCase();

    currentProducts = PRODUCTS.filter(product => {

        return (
            product.title.toLowerCase().includes(query) ||
            product.category.toLowerCase().includes(query) ||
            product.description.toLowerCase().includes(query)
        );

    });

    sortProducts();

    document.getElementById("products").scrollIntoView({
        behavior: "smooth"
    });
}

searchBtn.addEventListener("click", searchProducts);

searchInput.addEventListener("keydown", event => {

    if (event.key === "Enter") {
        searchProducts();
    }

});


/* =====================================================
   SORT
===================================================== */

sortSelect.addEventListener("change", sortProducts);

function sortProducts() {

    const value = sortSelect.value;

    let sorted = [...currentProducts];

    if (value === "low") {

        sorted.sort((a, b) => a.price - b.price);

    } else if (value === "high") {

        sorted.sort((a, b) => b.price - a.price);

    } else if (value === "rating") {

        sorted.sort((a, b) => b.rating - a.rating);

    }

    renderProducts(sorted);
}


/* =====================================================
   CART
===================================================== */

function addToCart(productId) {

    const product = PRODUCTS.find(
        item => item.id === productId
    );

    if (!product) return;

    const existing = cart.find(
        item => item.id === productId
    );

    if (existing) {

        existing.quantity += 1;

    } else {

        cart.push({
            id: productId,
            quantity: 1
        });

    }

    saveState();
    updateCart();

    showToast(`${product.title} added to cart`);

}


function removeFromCart(productId) {

    cart = cart.filter(
        item => item.id !== productId
    );

    saveState();
    updateCart();

}


function changeQuantity(productId, amount) {

    const item = cart.find(
        cartItem => cartItem.id === productId
    );

    if (!item) return;

    item.quantity += amount;

    if (item.quantity <= 0) {

        removeFromCart(productId);
        return;

    }

    saveState();
    updateCart();
}


function getCartTotal() {

    return cart.reduce((total, item) => {

        const product = PRODUCTS.find(
            p => p.id === item.id
        );

        return total + (
            product ? product.price * item.quantity : 0
        );

    }, 0);

}


function getCartCount() {

    return cart.reduce(
        (total, item) => total + item.quantity,
        0
    );

}


function updateCart() {

    cartCount.textContent = getCartCount();

    const total = getCartTotal();

    cartTotal.textContent = formatPrice(total);

    if (!cart.length) {

        cartItems.innerHTML = `
            <div class="cart-empty">
                <i class="fas fa-cart-shopping"></i>
                <h3>Your cart is empty</h3>
                <p>Add some products to get started.</p>
            </div>
        `;

        return;
    }

    cartItems.innerHTML = cart.map(item => {

        const product = PRODUCTS.find(
            p => p.id === item.id
        );

        if (!product) return "";

        return `
            <div class="cart-item">

                <img
                    src="${product.image}"
                    alt="${escapeHTML(product.title)}"
                >

                <div>

                    <h4>
                        ${escapeHTML(product.title)}
                    </h4>

                    <div class="cart-item-price">
                        ${formatPrice(product.price)}
                    </div>

                    <div class="quantity">

                        <button
                            data-minus="${product.id}"
                        >
                            −
                        </button>

                        <strong>
                            ${item.quantity}
                        </strong>

                        <button
                            data-plus="${product.id}"
                        >
                            +
                        </button>

                    </div>

                </div>

                <button
                    class="remove-item"
                    data-remove="${product.id}"
                    aria-label="Remove item"
                >
                    <i class="fas fa-trash"></i>
                </button>

            </div>
        `;

    }).join("");

    attachCartListeners();
}


function attachCartListeners() {

    document.querySelectorAll("[data-minus]").forEach(button => {

        button.addEventListener("click", () => {

            changeQuantity(
                Number(button.dataset.minus),
                -1
            );

        });

    });


    document.querySelectorAll("[data-plus]").forEach(button => {

        button.addEventListener("click", () => {

            changeQuantity(
                Number(button.dataset.plus),
                1
            );

        });

    });


    document.querySelectorAll("[data-remove]").forEach(button => {

        button.addEventListener("click", () => {

            removeFromCart(
                Number(button.dataset.remove)
            );

        });

    });

}


/* =====================================================
   CART DRAWER
===================================================== */

function openCart() {

    cartDrawer.classList.add("open");
    overlay.classList.add("show");
    document.body.classList.add("no-scroll");

}


function closeCartDrawer() {

    cartDrawer.classList.remove("open");
    overlay.classList.remove("show");
    document.body.classList.remove("no-scroll");

}


cartBtn.addEventListener("click", openCart);

closeCart.addEventListener("click", closeCartDrawer);

overlay.addEventListener("click", closeCartDrawer);


/* =====================================================
   CHECKOUT
===================================================== */

checkoutBtn.addEventListener("click", () => {

    if (!cart.length) {

        showToast("Your cart is empty");
        return;

    }

    showToast("Checkout demo — payment integration can be added here");

});


/* =====================================================
   WISHLIST
===================================================== */

function toggleWishlist(productId) {

    const index = wishlist.indexOf(productId);

    const product = PRODUCTS.find(
        p => p.id === productId
    );

    if (index === -1) {

        wishlist.push(productId);

        showToast(`${product.title} added to wishlist`);

    } else {

        wishlist.splice(index, 1);

        showToast(`${product.title} removed from wishlist`);

    }

    saveState();

    renderProducts(currentProducts);

}


/* Show only wishlist products */

document.getElementById("wishlistHeader")
    .addEventListener("click", () => {

        if (!wishlist.length) {

            showToast("Your wishlist is empty");
            return;

        }

        currentProducts = PRODUCTS.filter(
            product => wishlist.includes(product.id)
        );

        renderProducts(currentProducts);

        document.getElementById("products").scrollIntoView({
            behavior: "smooth"
        });

    });


/* =====================================================
   PRODUCT MODAL
===================================================== */

function openProductModal(productId) {

    const product = PRODUCTS.find(
        p => p.id === productId
    );

    if (!product) return;

    selectedProductId = productId;

    modalImage.src = product.image;
    modalImage.alt = product.title;

    modalTitle.textContent = product.title;

    modalCategory.textContent = product.category;

    modalPrice.textContent = formatPrice(product.price);

    modalOldPrice.textContent =
        product.oldPrice
            ? formatPrice(product.oldPrice)
            : "";

    modalRating.innerHTML =
        "★".repeat(product.rating) +
        "☆".repeat(5 - product.rating) +
        `<span> (${product.reviews} reviews)</span>`;

    modalDescription.textContent =
        product.description;

    productModal.classList.add("show");

}


function closeProductModal() {

    productModal.classList.remove("show");

}


modalClose.addEventListener(
    "click",
    closeProductModal
);

productModal.addEventListener("click", event => {

    if (event.target === productModal) {
        closeProductModal();
    }

});


modalAdd.addEventListener("click", () => {

    if (selectedProductId) {

        addToCart(selectedProductId);

        closeProductModal();

    }

});


/* =====================================================
   MOBILE MENU
===================================================== */

const mobileToggle = document.getElementById("mobileToggle");
const mobileMenu = document.getElementById("mobileMenu");

mobileToggle.addEventListener("click", () => {

    const open = mobileMenu.style.display === "block";

    mobileMenu.style.display = open
        ? "none"
        : "block";

});


mobileMenu.querySelectorAll("a").forEach(link => {

    link.addEventListener("click", () => {

        mobileMenu.style.display = "none";

    });

});


/* =====================================================
   HERO BUTTONS
===================================================== */

document.getElementById("shopNow")
    .addEventListener("click", () => {

        document.getElementById("products").scrollIntoView({
            behavior: "smooth"
        });

    });


document.getElementById("exploreDeals")
    .addEventListener("click", () => {

        document.getElementById("deals").scrollIntoView({
            behavior: "smooth"
        });

    });


document.getElementById("buyDeal")
    .addEventListener("click", () => {

        /*
            Deal product uses a real product already in
            the catalog for this demo.
        */

        addToCart(2);

        openCart();

    });


/* =====================================================
   NEWSLETTER
===================================================== */

document.getElementById("newsletterForm")
    .addEventListener("submit", event => {

        event.preventDefault();

        const email =
            document.getElementById("newsletterEmail")
                .value
                .trim();

        const message =
            document.getElementById("newsletterMessage");

        if (!email || !email.includes("@")) {

            message.style.display = "block";
            message.style.color = "#ff8b8b";
            message.textContent =
                "Please enter a valid email address.";

            return;

        }

        message.style.display = "block";
        message.style.color = "#7ee7a8";
        message.textContent =
            "Thanks! You're successfully subscribed.";

        document.getElementById("newsletterEmail").value = "";

        setTimeout(() => {

            message.style.display = "none";

        }, 3500);

    });


/* =====================================================
   DARK MODE
===================================================== */

const themeToggle = document.getElementById("themeToggle");

const savedTheme =
    localStorage.getItem("nexusTheme");

if (savedTheme === "dark") {

    document.body.classList.add("dark");

    themeToggle.innerHTML =
        '<i class="fas fa-sun"></i>';

}


themeToggle.addEventListener("click", () => {

    document.body.classList.toggle("dark");

    const dark =
        document.body.classList.contains("dark");

    localStorage.setItem(
        "nexusTheme",
        dark ? "dark" : "light"
    );

    themeToggle.innerHTML = dark
        ? '<i class="fas fa-sun"></i>'
        : '<i class="fas fa-moon"></i>';

});


/* =====================================================
   COUNTDOWN TIMER
===================================================== */

(function setupCountdown() {

    const target =
        Date.now() + (
            1 * 24 * 60 * 60 * 1000
        ) + (
            6 * 60 * 60 * 1000
        );

    function updateCountdown() {

        let difference =
            target - Date.now();

        if (difference < 0) {
            difference = 0;
        }

        const days =
            Math.floor(
                difference /
                (1000 * 60 * 60 * 24)
            );

        const hours =
            Math.floor(
                (difference %
                    (1000 * 60 * 60 * 24)) /
                (1000 * 60 * 60)
            );

        const minutes =
            Math.floor(
                (difference %
                    (1000 * 60 * 60)) /
                (1000 * 60)
            );

        const seconds =
            Math.floor(
                (difference %
                    (1000 * 60)) /
                1000
            );

        document.getElementById("dealDays")
            .textContent =
            String(days).padStart(2, "0");

        document.getElementById("dealHours")
            .textContent =
            String(hours).padStart(2, "0");

        document.getElementById("dealMinutes")
            .textContent =
            String(minutes).padStart(2, "0");

        document.getElementById("dealSeconds")
            .textContent =
            String(seconds).padStart(2, "0");

    }

    updateCountdown();

    setInterval(updateCountdown, 1000);

})();


/* =====================================================
   KEYBOARD
===================================================== */

document.addEventListener("keydown", event => {

    if (event.key === "Escape") {

        closeCartDrawer();
        closeProductModal();

    }

});


/* =====================================================
   INITIALIZE
===================================================== */

(function init() {

    renderCategories();

    renderProducts(PRODUCTS);

    updateCart();

    document.getElementById("year")
        .textContent =
        new Date().getFullYear();

})();
</script>

</body>
</html>
```
