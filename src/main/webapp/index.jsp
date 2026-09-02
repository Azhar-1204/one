<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kohinoor — Premium Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>
        :root {
            --black: #0c0c0d;
            --black-2: #151516;
            --black-3: #202021;
            --gold: #d7ad5c;
            --gold-light: #f1d99c;
            --white: #ffffff;
            --cream: #f7f3eb;
            --gray: #969696;
            --gray-dark: #555;
            --green: #4caf88;
            --red: #e26d5a;
            --border: rgba(255,255,255,.09);
            --shadow: 0 20px 50px rgba(0,0,0,.10);
            --radius: 22px;
            --radius-sm: 13px;
            --container: 1280px;
            --transition: .3s ease;
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
            font-family: "DM Sans", sans-serif;
            background: var(--cream);
            color: var(--black);
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

        button {
            border: 0;
            cursor: pointer;
        }

        img {
            display: block;
            max-width: 100%;
        }

        .container {
            width: min(100% - 40px, var(--container));
            margin: auto;
        }

        /* ================= HEADER ================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(12,12,13,.94);
            backdrop-filter: blur(18px);
            color: white;
            border-bottom: 1px solid var(--border);
        }

        .header {
            min-height: 76px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 25px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 12px;
            font-weight: 700;
            font-size: 21px;
            letter-spacing: 1px;
            flex-shrink: 0;
        }

        .logo-mark {
            width: 39px;
            height: 39px;
            display: grid;
            place-items: center;
            border: 1px solid var(--gold);
            color: var(--gold);
            border-radius: 12px;
            transform: rotate(45deg);
        }

        .logo-mark i {
            transform: rotate(-45deg);
        }

        .logo span {
            color: var(--gold);
        }

        .nav {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .nav a {
            color: #aaa;
            font-size: 14px;
            padding: 10px 14px;
            border-radius: 10px;
            transition: var(--transition);
        }

        .nav a:hover,
        .nav a.active {
            color: white;
            background: rgba(255,255,255,.07);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search {
            width: 230px;
            height: 42px;
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 0 15px;
            background: #1a1a1b;
            border: 1px solid var(--border);
            border-radius: 100px;
        }

        .search i {
            color: var(--gray);
        }

        .search input {
            width: 100%;
            border: 0;
            outline: 0;
            color: white;
            background: transparent;
            font-size: 13px;
        }

        .search input::placeholder {
            color: #777;
        }

        .head-btn {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            color: #aaa;
            background: #1a1a1b;
            border: 1px solid var(--border);
            position: relative;
            transition: var(--transition);
        }

        .head-btn:hover {
            color: var(--gold);
            border-color: rgba(215,173,92,.5);
        }

        .cart-badge {
            position: absolute;
            right: -3px;
            top: -3px;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            background: var(--gold);
            color: var(--black);
            font-size: 10px;
            font-weight: 800;
        }

        .mobile-menu-btn {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: #1a1a1b;
            color: white;
        }

        #mobileMenu {
            display: none;
            padding: 12px 0 20px;
            border-top: 1px solid var(--border);
        }

        #mobileMenu a {
            display: block;
            padding: 13px;
            color: #aaa;
            border-radius: 10px;
        }

        #mobileMenu a:hover {
            background: rgba(255,255,255,.06);
            color: white;
        }

        /* ================= HERO ================= */

        .hero {
            margin-top: 22px;
            min-height: 570px;
            border-radius: 28px;
            overflow: hidden;
            position: relative;
            background:
                linear-gradient(90deg, rgba(5,5,5,.92) 0%, rgba(5,5,5,.68) 45%, rgba(5,5,5,.15) 100%),
                url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85")
                center/cover;
            display: flex;
            align-items: center;
        }

        .hero-content {
            color: white;
            max-width: 650px;
            padding: 60px;
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            color: var(--gold-light);
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 18px;
        }

        .eyebrow::before {
            content: "";
            width: 30px;
            height: 1px;
            background: var(--gold);
        }

        .hero h1 {
            font-family: "Playfair Display", serif;
            font-size: clamp(44px, 6vw, 76px);
            line-height: 1.02;
            font-weight: 600;
            margin-bottom: 22px;
        }

        .hero h1 span {
            color: var(--gold);
        }

        .hero p {
            color: rgba(255,255,255,.72);
            font-size: 16px;
            max-width: 520px;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 13px 25px;
            border-radius: 100px;
            font-size: 14px;
            font-weight: 700;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            transition: var(--transition);
        }

        .btn-gold {
            background: var(--gold);
            color: var(--black);
        }

        .btn-gold:hover {
            background: var(--gold-light);
            transform: translateY(-2px);
        }

        .btn-dark {
            background: rgba(255,255,255,.08);
            color: white;
            border: 1px solid rgba(255,255,255,.22);
        }

        .btn-dark:hover {
            background: rgba(255,255,255,.16);
        }

        /* ================= TRUST BAR ================= */

        .trust-bar {
            margin-top: 20px;
            background: var(--black);
            border-radius: var(--radius);
            color: white;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            overflow: hidden;
        }

        .trust-item {
            padding: 22px;
            display: flex;
            align-items: center;
            gap: 13px;
            border-right: 1px solid var(--border);
        }

        .trust-item:last-child {
            border-right: 0;
        }

        .trust-item i {
            color: var(--gold);
            font-size: 20px;
        }

        .trust-item strong {
            display: block;
            font-size: 13px;
        }

        .trust-item small {
            color: #777;
            font-size: 11px;
        }

        /* ================= SECTIONS ================= */

        .section {
            padding: 80px 0;
        }

        .section-head {
            display: flex;
            justify-content: space-between;
            align-items: end;
            margin-bottom: 32px;
            gap: 20px;
        }

        .section-head small {
            display: block;
            color: var(--gold);
            text-transform: uppercase;
            letter-spacing: 2px;
            font-weight: 700;
            font-size: 11px;
            margin-bottom: 7px;
        }

        .section-head h2 {
            font-family: "Playfair Display", serif;
            font-size: 38px;
            font-weight: 600;
        }

        .section-head p {
            color: #777;
            margin-top: 5px;
            font-size: 14px;
        }

        .view-all {
            color: var(--black);
            font-weight: 700;
            font-size: 13px;
            border-bottom: 1px solid var(--black);
            padding-bottom: 3px;
        }

        /* ================= CATEGORIES ================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 14px;
        }

        .category {
            min-height: 170px;
            border-radius: 18px;
            background: white;
            border: 1px solid #e9e4da;
            padding: 22px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            transition: var(--transition);
            cursor: pointer;
        }

        .category:hover {
            background: var(--black);
            color: white;
            transform: translateY(-6px);
            box-shadow: var(--shadow);
        }

        .category-icon {
            width: 48px;
            height: 48px;
            border-radius: 14px;
            background: #f3ead8;
            color: #8d6c2e;
            display: grid;
            place-items: center;
            font-size: 20px;
        }

        .category:hover .category-icon {
            background: rgba(215,173,92,.15);
            color: var(--gold);
        }

        .category h4 {
            font-size: 14px;
            margin-top: 15px;
        }

        .category small {
            color: #999;
            font-size: 11px;
        }

        .category:hover small {
            color: #777;
        }

        /* ================= PRODUCTS ================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }

        .product {
            background: white;
            border-radius: 20px;
            overflow: hidden;
            border: 1px solid #e9e4da;
            transition: var(--transition);
        }

        .product:hover {
            transform: translateY(-7px);
            box-shadow: var(--shadow);
        }

        .product-image {
            height: 300px;
            position: relative;
            overflow: hidden;
            background: #eee;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .5s ease;
        }

        .product:hover .product-image img {
            transform: scale(1.06);
        }

        .product-label {
            position: absolute;
            left: 13px;
            top: 13px;
            background: var(--black);
            color: white;
            padding: 5px 10px;
            border-radius: 100px;
            font-size: 10px;
            font-weight: 800;
            text-transform: uppercase;
        }

        .product-label.sale {
            background: var(--gold);
            color: var(--black);
        }

        .heart {
            position: absolute;
            right: 13px;
            top: 13px;
            width: 37px;
            height: 37px;
            border-radius: 50%;
            background: rgba(255,255,255,.92);
            color: #555;
            transition: var(--transition);
        }

        .heart:hover {
            color: var(--red);
            transform: scale(1.08);
        }

        .product-info {
            padding: 18px;
        }

        .product-category {
            color: #aaa;
            font-size: 10px;
            font-weight: 700;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .product-title {
            margin: 6px 0 10px;
            font-size: 15px;
            font-weight: 700;
        }

        .product-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .price {
            font-size: 19px;
            font-weight: 800;
        }

        .old-price {
            color: #aaa;
            text-decoration: line-through;
            font-size: 12px;
            margin-left: 5px;
        }

        .rating {
            color: #d39c2f;
            font-size: 12px;
        }

        .rating span {
            color: #aaa;
            margin-left: 2px;
        }

        .add {
            width: 100%;
            margin-top: 15px;
            height: 43px;
            border-radius: 11px;
            background: var(--black);
            color: white;
            font-weight: 700;
            font-size: 13px;
            transition: var(--transition);
        }

        .add:hover {
            background: var(--gold);
            color: var(--black);
        }

        .add.added {
            background: var(--green);
        }

        /* ================= DEAL ================= */

        .deal {
            min-height: 470px;
            border-radius: 26px;
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            background: var(--black);
            color: white;
        }

        .deal-image {
            min-height: 470px;
        }

        .deal-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 55px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-tag {
            display: inline-flex;
            width: fit-content;
            padding: 6px 12px;
            border-radius: 100px;
            background: rgba(215,173,92,.14);
            color: var(--gold);
            font-size: 10px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 18px;
        }

        .deal-content h3 {
            font-family: "Playfair Display", serif;
            font-size: 43px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .deal-content p {
            color: #888;
            max-width: 440px;
            font-size: 14px;
        }

        .deal-price {
            margin-top: 20px;
            font-size: 32px;
            font-weight: 800;
            color: white;
        }

        .deal-price span {
            color: #666;
            font-size: 17px;
            text-decoration: line-through;
            margin-left: 7px;
        }

        .stock {
            margin-top: 4px;
            font-size: 12px !important;
        }

        .stock strong {
            color: var(--gold);
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 25px 0;
        }

        .time-box {
            min-width: 65px;
            text-align: center;
            padding: 10px 8px;
            border: 1px solid var(--border);
            border-radius: 12px;
        }

        .time-box strong {
            display: block;
            color: var(--gold);
            font-size: 22px;
        }

        .time-box small {
            color: #666;
            font-size: 9px;
            text-transform: uppercase;
        }

        /* ================= TESTIMONIALS ================= */

        .reviews {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .review {
            background: white;
            border: 1px solid #e9e4da;
            padding: 27px;
            border-radius: 20px;
        }

        .review-stars {
            color: #d39c2f;
            margin-bottom: 15px;
        }

        .review blockquote {
            color: #444;
            font-size: 14px;
            line-height: 1.7;
            min-height: 95px;
        }

        .review-author {
            display: flex;
            align-items: center;
            gap: 11px;
            margin-top: 20px;
        }

        .review-author img {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
        }

        .review-author strong {
            font-size: 13px;
            display: block;
        }

        .review-author small {
            color: #999;
            font-size: 11px;
        }

        /* ================= NEWSLETTER ================= */

        .newsletter {
            background: var(--gold);
            border-radius: 25px;
            padding: 48px 55px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }

        .newsletter h2 {
            font-family: "Playfair Display", serif;
            font-size: 34px;
        }

        .newsletter p {
            font-size: 13px;
            margin-top: 5px;
            opacity: .75;
        }

        .newsletter-form {
            display: flex;
            gap: 8px;
            width: min(100%, 460px);
        }

        .newsletter-form input {
            flex: 1;
            border: 0;
            outline: 0;
            background: rgba(255,255,255,.75);
            padding: 14px 18px;
            border-radius: 100px;
            font-size: 13px;
        }

        .newsletter-form button {
            padding: 0 22px;
            border-radius: 100px;
            background: var(--black);
            color: white;
            font-weight: 700;
        }

        #newsletterMsg {
            font-size: 12px;
            margin-top: 8px;
        }

        /* ================= FOOTER ================= */

        footer {
            margin-top: 80px;
            background: var(--black);
            color: white;
            padding: 65px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 45px;
        }

        .footer-brand p {
            color: #777;
            max-width: 300px;
            margin-top: 14px;
            font-size: 13px;
        }

        .socials {
            display: flex;
            gap: 8px;
            margin-top: 20px;
        }

        .socials a {
            width: 37px;
            height: 37px;
            display: grid;
            place-items: center;
            border: 1px solid var(--border);
            border-radius: 50%;
            color: #777;
            transition: var(--transition);
        }

        .socials a:hover {
            color: var(--gold);
            border-color: var(--gold);
        }

        .footer-col h4 {
            font-size: 13px;
            margin-bottom: 16px;
        }

        .footer-col a {
            display: block;
            color: #777;
            font-size: 12px;
            margin-bottom: 9px;
            transition: var(--transition);
        }

        .footer-col a:hover {
            color: var(--gold);
        }

        .footer-bottom {
            margin-top: 50px;
            padding-top: 20px;
            border-top: 1px solid var(--border);
            color: #555;
            text-align: center;
            font-size: 11px;
        }

        /* ================= RESPONSIVE ================= */

        @media(max-width:1100px) {
            .nav {
                display: none;
            }

            .mobile-menu-btn {
                display: block;
            }

            .categories {
                grid-template-columns: repeat(3,1fr);
            }

            .products {
                grid-template-columns: repeat(3,1fr);
            }
        }

        @media(max-width:800px) {
            .header {
                min-height: 68px;
            }

            .search {
                width: 170px;
            }

            .hero {
                min-height: 520px;
            }

            .hero-content {
                padding: 35px;
            }

            .trust-bar {
                grid-template-columns: repeat(2,1fr);
            }

            .trust-item:nth-child(2) {
                border-right: 0;
            }

            .trust-item:nth-child(-n+2) {
                border-bottom: 1px solid var(--border);
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 300px;
            }

            .reviews {
                grid-template-columns: 1fr;
            }

            .newsletter {
                flex-direction: column;
                align-items: flex-start;
                padding: 35px;
            }

            .newsletter-form {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width:600px) {
            .container {
                width: min(100% - 24px, var(--container));
            }

            .logo {
                font-size: 17px;
            }

            .header-right .head-btn:first-of-type {
                display: none;
            }

            .search {
                width: 135px;
            }

            .hero {
                margin-top: 12px;
                min-height: 500px;
                border-radius: 20px;
            }

            .hero-content {
                padding: 25px;
            }

            .hero h1 {
                font-size: 43px;
            }

            .hero p {
                font-size: 14px;
            }

            .section {
                padding: 55px 0;
            }

            .section-head {
                align-items: flex-start;
                flex-direction: column;
            }

            .section-head h2 {
                font-size: 31px;
            }

            .categories {
                grid-template-columns: repeat(2,1fr);
            }

            .products {
                grid-template-columns: repeat(2,1fr);
                gap: 10px;
            }

            .product-image {
                height: 205px;
            }

            .product-info {
                padding: 13px;
            }

            .product-title {
                font-size: 13px;
            }

            .price {
                font-size: 16px;
            }

            .old-price {
                display: none;
            }

            .add {
                height: 39px;
                font-size: 11px;
            }

            .deal-content {
                padding: 32px 24px;
            }

            .deal-content h3 {
                font-size: 34px;
            }

            .timer {
                gap: 6px;
            }

            .time-box {
                min-width: 58px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                gap: 30px;
            }
        }

        @media(max-width:390px) {
            .search {
                display: none;
            }

            .hero h1 {
                font-size: 36px;
            }

            .products {
                grid-template-columns: 1fr 1fr;
            }

            .product-image {
                height: 175px;
            }

            .trust-item {
                padding: 16px 12px;
            }
        }
    </style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>
    <div class="container header">

        <button class="mobile-menu-btn" id="mobileToggle">
            <i class="fas fa-bars"></i>
        </button>

        <a href="#" class="logo">
            <div class="logo-mark">
                <i class="fas fa-gem"></i>
            </div>
            <div>Kohinoor<span>.</span></div>
        </a>

        <nav class="nav">
            <a href="#" class="active">Home</a>
            <a href="#categories">Collections</a>
            <a href="#products">Shop</a>
            <a href="#deals">Offers</a>
            <a href="#reviews">Reviews</a>
        </nav>

        <div class="header-right">

            <div class="search">
                <i class="fas fa-search"></i>
                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search..."
                >
            </div>

            <button class="head-btn">
                <i class="far fa-user"></i>
            </button>

            <button class="head-btn">
                <i class="far fa-heart"></i>
            </button>

            <button class="head-btn" id="cartBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-badge" id="cartCount">0</span>
            </button>

        </div>
    </div>

    <div id="mobileMenu">
        <div class="container">
            <a href="#">Home</a>
            <a href="#categories">Collections</a>
            <a href="#products">Shop</a>
            <a href="#deals">Offers</a>
            <a href="#reviews">Reviews</a>
        </div>
    </div>
</header>

<main>

<!-- ================= HERO ================= -->

<div class="container">

    <section class="hero">

        <div class="hero-content">

            <div class="eyebrow">
                Autumn Collection 2026
            </div>

            <h1>
                Everything<br>
                <span>worth having.</span>
            </h1>

            <p>
                Discover carefully selected fashion, technology and
                lifestyle essentials designed for people who appreciate
                quality.
            </p>

            <div class="hero-buttons">
                <button class="btn btn-gold" id="shopNow">
                    Explore Collection
                    <i class="fas fa-arrow-right"></i>
                </button>

                <button class="btn btn-dark" id="exploreDeals">
                    View Offers
                </button>
            </div>

        </div>

    </section>

    <!-- TRUST -->

    <div class="trust-bar">

        <div class="trust-item">
            <i class="fas fa-truck-fast"></i>
            <div>
                <strong>Free Shipping</strong>
                <small>On orders over $100</small>
            </div>
        </div>

        <div class="trust-item">
            <i class="fas fa-shield-halved"></i>
            <div>
                <strong>Secure Payment</strong>
                <small>100% protected checkout</small>
            </div>
        </div>

        <div class="trust-item">
            <i class="fas fa-rotate-left"></i>
            <div>
                <strong>Easy Returns</strong>
                <small>30-day return policy</small>
            </div>
        </div>

        <div class="trust-item">
            <i class="fas fa-headset"></i>
            <div>
                <strong>Premium Support</strong>
                <small>We're here to help</small>
            </div>
        </div>

    </div>

</div>

<!-- ================= CATEGORIES ================= -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-head">
            <div>
                <small>Explore</small>
                <h2>Shop by category</h2>
                <p>Find something made for you.</p>
            </div>

            <a href="#" class="view-all">
                View all →
            </a>
        </div>

        <div class="categories" id="categoriesGrid"></div>

    </div>

</section>

<!-- ================= PRODUCTS ================= -->

<section class="section" id="products">

    <div class="container">

        <div class="section-head">

            <div>
                <small>Editor's Choice</small>
                <h2>Trending now</h2>
                <p>Our most loved products right now.</p>
            </div>

            <a href="#" class="view-all">
                Shop everything →
            </a>

        </div>

        <div class="products" id="productsGrid"></div>

    </div>

</section>

<!-- ================= DEAL ================= -->

<section class="section" id="deals">

    <div class="container">

        <div class="section-head">
            <div>
                <small>Limited Time</small>
                <h2>Today's exclusive</h2>
            </div>
        </div>

        <div class="deal">

            <div class="deal-image">
                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85"
                    alt="MacBook Air"
                >
            </div>

            <div class="deal-content">

                <div class="deal-tag">
                    <i class="fas fa-bolt"></i>
                    Flash Deal
                </div>

                <h3>MacBook Air M2</h3>

                <p>
                    Lightweight design meets incredible performance.
                    The perfect machine for work, creativity and everyday life.
                </p>

                <div class="deal-price">
                    $999
                    <span>$1,199</span>
                </div>

                <p class="stock">
                    Only <strong>12 pieces</strong> remaining
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

                <button class="btn btn-gold" id="buyDeal">
                    <i class="fas fa-bag-shopping"></i>
                    Add to bag
                </button>

            </div>

        </div>

    </div>

</section>

<!-- ================= REVIEWS ================= -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-head">

            <div>
                <small>Customer Stories</small>
                <h2>Loved by our customers</h2>
                <p>What people are saying about Kohinoor.</p>
            </div>

        </div>

        <div class="reviews" id="testimonialsList"></div>

    </div>

</section>

<!-- ================= NEWSLETTER ================= -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <div>
                <h2>Stay ahead of the curve.</h2>
                <p>
                    Get early access to new collections and private offers.
                </p>
            </div>

            <form class="newsletter-form" id="newsletterForm">

                <input
                    type="email"
                    id="newsletterEmail"
                    placeholder="Your email address"
                    required
                >

                <button type="submit">
                    Subscribe
                </button>

            </form>

            <div id="newsletterMsg"></div>

        </div>

    </div>

</section>

</main>

<!-- ================= FOOTER ================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#" class="logo">
                    <div class="logo-mark">
                        <i class="fas fa-gem"></i>
                    </div>
                    <div>Kohinoor<span>.</span></div>
                </a>

                <p>
                    A modern premium shopping experience built around
                    quality products and effortless discovery.
                </p>

                <div class="socials">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-x-twitter"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                </div>

            </div>

            <div class="footer-col">
                <h4>Shop</h4>
                <a href="#">New Arrivals</a>
                <a href="#">Best Sellers</a>
                <a href="#">Electronics</a>
                <a href="#">Fashion</a>
            </div>

            <div class="footer-col">
                <h4>Company</h4>
                <a href="#">About Us</a>
                <a href="#">Our Story</a>
                <a href="#">Careers</a>
                <a href="#">Contact</a>
            </div>

            <div class="footer-col">
                <h4>Help</h4>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">FAQ</a>
                <a href="#">Privacy</a>
            </div>

        </div>

        <div class="footer-bottom">
            © <span id="year"></span> Kohinoor. All rights reserved.
        </div>

    </div>

</footer>

<script>

/* =========================================================
   DATA
========================================================= */

const CATEGORIES = [
    {
        id: "phones",
        name: "Smartphones",
        icon: "fa-mobile-screen-button",
        count: 24
    },
    {
        id: "laptops",
        name: "Laptops",
        icon: "fa-laptop",
        count: 18
    },
    {
        id: "clothing",
        name: "Clothing",
        icon: "fa-shirt",
        count: 42
    },
    {
        id: "gadgets",
        name: "Gadgets",
        icon: "fa-headphones",
        count: 31
    },
    {
        id: "footwear",
        name: "Footwear",
        icon: "fa-shoe-prints",
        count: 27
    },
    {
        id: "accessories",
        name: "Accessories",
        icon: "fa-watch",
        count: 39
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
        img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",
        category: "Smartphones"
    },
    {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        badge: "",
        img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",
        category: "Laptops"
    },
    {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "Sale",
        img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85",
        category: "Accessories"
    },
    {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        badge: "",
        img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85",
        category: "Footwear"
    },
    {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        badge: "New",
        img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85",
        category: "Gadgets"
    },
    {
        id: 6,
        title: "Chanel No. 5",
        price: 120,
        rating: 5,
        reviews: 189,
        badge: "",
        img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85",
        category: "Accessories"
    },
    {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "Sale",
        img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85",
        category: "Accessories"
    },
    {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        badge: "",
        img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85",
        category: "Gadgets"
    }
];

const TESTIMONIALS = [
    {
        name: "Ava Martin",
        role: "Verified Buyer",
        avatar: "https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80",
        text: "Fast shipping and excellent support. The product exceeded my expectations!",
        stars: 5
    },
    {
        name: "Michael Lee",
        role: "Frequent Shopper",
        avatar: "https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80",
        text: "Great selection and a beautifully designed shopping experience. Will definitely shop again.",
        stars: 4
    },
    {
        name: "Sophia Chen",
        role: "Designer",
        avatar: "https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=100&q=80",
        text: "Love the quality and packaging. Everything arrived beautifully presented.",
        stars: 5
    }
];

/* =========================================================
   STATE
========================================================= */

let cartCount = 0;

/* =========================================================
   DOM
========================================================= */

const categoriesGrid =
    document.getElementById("categoriesGrid");

const productsGrid =
    document.getElementById("productsGrid");

const testimonialsList =
    document.getElementById("testimonialsList");

const cartCountEl =
    document.getElementById("cartCount");

const searchInput =
    document.getElementById("searchInput");

/* =========================================================
   HELPERS
========================================================= */

function escapeHtml(text) {
    return String(text).replace(/[&<>"']/g, char => ({
        "&": "&amp;",
        "<": "&lt;",
        ">": "&gt;",
        '"': "&quot;",
        "'": "&#39;"
    }[char]));
}

/* =========================================================
   CATEGORIES
========================================================= */

function renderCategories() {

    categoriesGrid.innerHTML = "";

    CATEGORIES.forEach(category => {

        const element = document.createElement("div");

        element.className = "category";

        element.innerHTML = `
            <div>
                <div class="category-icon">
                    <i class="fas ${category.icon}"></i>
                </div>

                <h4>${category.name}</h4>
            </div>

            <small>${category.count} products</small>
        `;

        element.addEventListener("click", () => {

            searchInput.value = category.name;

            filterProducts(category.name);

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });
        });

        categoriesGrid.appendChild(element);
    });
}

/* =========================================================
   PRODUCTS
========================================================= */

function renderProducts(products) {

    productsGrid.innerHTML = "";

    if (!products.length) {

        productsGrid.innerHTML = `
            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:70px;
                color:#888;
            ">
                No products found.
            </div>
        `;

        return;
    }

    products.forEach(product => {

        const element =
            document.createElement("article");

        element.className = "product";

        const badge =
            product.badge
                ? `
                    <span class="product-label ${
                        product.badge === "Sale"
                            ? "sale"
                            : ""
                    }">
                        ${product.badge}
                    </span>
                `
                : "";

        const oldPrice =
            product.oldPrice
                ? `
                    <span class="old-price">
                        $${product.oldPrice.toLocaleString()}
                    </span>
                `
                : "";

        const stars =
            "★".repeat(product.rating) +
            "☆".repeat(5 - product.rating);

        element.innerHTML = `

            <div class="product-image">

                <img
                    src="${product.img}"
                    alt="${escapeHtml(product.title)}"
                    loading="lazy"
                >

                ${badge}

                <button
                    class="heart"
                    aria-label="Wishlist"
                >
                    <i class="far fa-heart"></i>
                </button>

            </div>

            <div class="product-info">

                <div class="product-category">
                    ${product.category}
                </div>

                <div class="product-title">
                    ${escapeHtml(product.title)}
                </div>

                <div class="product-meta">

                    <div>
                        <span class="price">
                            $${product.price.toLocaleString()}
                        </span>

                        ${oldPrice}
                    </div>

                    <div class="rating">
                        ${stars}
                        <span>(${product.reviews})</span>
                    </div>

                </div>

                <button
                    class="add"
                    data-id="${product.id}"
                >
                    <i class="fas fa-plus"></i>
                    Add to bag
                </button>

            </div>
        `;

        productsGrid.appendChild(element);
    });

    productsGrid
        .querySelectorAll(".add")
        .forEach(button => {

            button.addEventListener("click", () => {

                addToCart(
                    Number(button.dataset.id),
                    button
                );

            });
        });
}

/* =========================================================
   CART
========================================================= */

function updateCart() {

    cartCountEl.textContent = cartCount;

    cartCountEl.animate(
        [
            { transform: "scale(1)" },
            { transform: "scale(1.35)" },
            { transform: "scale(1)" }
        ],
        {
            duration: 250
        }
    );
}

function addToCart(id, button) {

    const product =
        PRODUCTS.find(item => item.id === id);

    if (!product) return;

    cartCount++;

    updateCart();

    const original =
        button.innerHTML;

    button.innerHTML =
        '<i class="fas fa-check"></i> Added';

    button.classList.add("added");

    setTimeout(() => {

        button.innerHTML = original;
        button.classList.remove("added");

    }, 1400);
}

/* =========================================================
   SEARCH
========================================================= */

function filterProducts(value) {

    const query =
        String(value || "")
            .trim()
            .toLowerCase();

    if (!query) {

        renderProducts(PRODUCTS);
        return;
    }

    const filtered =
        PRODUCTS.filter(product =>
            product.title
                .toLowerCase()
                .includes(query) ||

            product.category
                .toLowerCase()
                .includes(query)
        );

    renderProducts(filtered);
}

searchInput.addEventListener(
    "input",
    event => filterProducts(event.target.value)
);

/* =========================================================
   TESTIMONIALS
========================================================= */

function renderTestimonials() {

    testimonialsList.innerHTML = "";

    TESTIMONIALS.forEach(review => {

        const element =
            document.createElement("article");

        element.className = "review";

        const stars =
            "★".repeat(review.stars) +
            "☆".repeat(5 - review.stars);

        element.innerHTML = `

            <div class="review-stars">
                ${stars}
            </div>

            <blockquote>
                "${escapeHtml(review.text)}"
            </blockquote>

            <div class="review-author">

                <img
                    src="${review.avatar}"
                    alt="${escapeHtml(review.name)}"
                    loading="lazy"
                >

                <div>
                    <strong>
                        ${escapeHtml(review.name)}
                    </strong>

                    <small>
                        ${escapeHtml(review.role)}
                    </small>
                </div>

            </div>
        `;

        testimonialsList.appendChild(element);
    });
}

/* =========================================================
   MOBILE MENU
========================================================= */

const mobileToggle =
    document.getElementById("mobileToggle");

const mobileMenu =
    document.getElementById("mobileMenu");

mobileToggle.addEventListener("click", () => {

    const open =
        mobileMenu.style.display === "block";

    mobileMenu.style.display =
        open ? "none" : "block";

    mobileToggle.innerHTML =
        open
            ? '<i class="fas fa-bars"></i>'
            : '<i class="fas fa-xmark"></i>';
});

mobileMenu
    .querySelectorAll("a")
    .forEach(link => {

        link.addEventListener("click", () => {

            mobileMenu.style.display = "none";

            mobileToggle.innerHTML =
                '<i class="fas fa-bars"></i>';
        });
    });

/* =========================================================
   HERO
========================================================= */

document
    .getElementById("shopNow")
    .addEventListener("click", () => {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });
    });

document
    .getElementById("exploreDeals")
    .addEventListener("click", () => {

        document
            .getElementById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });
    });

/* =========================================================
   DEAL TIMER
========================================================= */

(function setupTimer() {

    const target =
        new Date(
            Date.now() +
            24 * 60 * 60 * 1000 +
            36 * 60 * 1000
        );

    function updateTimer() {

        const diff =
            target - new Date();

        if (diff <= 0) return;

        const days =
            Math.floor(
                diff / (24 * 60 * 60 * 1000)
            );

        const hours =
            Math.floor(
                (diff %
                    (24 * 60 * 60 * 1000))
                /
                (60 * 60 * 1000)
            );

        const minutes =
            Math.floor(
                (diff %
                    (60 * 60 * 1000))
                /
                (60 * 1000)
            );

        const seconds =
            Math.floor(
                (diff %
                    (60 * 1000))
                /
                1000
            );

        document.getElementById(
            "dealDays"
        ).textContent = days;

        document.getElementById(
            "dealHours"
        ).textContent =
            String(hours).padStart(2, "0");

        document.getElementById(
            "dealMinutes"
        ).textContent =
            String(minutes).padStart(2, "0");

        document.getElementById(
            "dealSeconds"
        ).textContent =
            String(seconds).padStart(2, "0");
    }

    updateTimer();

    setInterval(updateTimer, 1000);

})();

/* =========================================================
   DEAL CART
========================================================= */

document
    .getElementById("buyDeal")
    .addEventListener("click", function() {

        cartCount++;

        updateCart();

        const original =
            this.innerHTML;

        this.innerHTML =
            '<i class="fas fa-check"></i> Added to bag';

        setTimeout(() => {
            this.innerHTML = original;
        }, 1500);
    });

/* =========================================================
   NEWSLETTER
========================================================= */

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

        if (!email || !email.includes("@")) {

            message.textContent =
                "Please enter a valid email.";

            return;
        }

        message.textContent =
            "✓ You're on the list!";

        document
            .getElementById("newsletterEmail")
            .value = "";

        setTimeout(() => {
            message.textContent = "";
        }, 3000);
    });

/* =========================================================
   CART BUTTON
========================================================= */

document
    .getElementById("cartBtn")
    .addEventListener("click", () => {

        alert(
            `Your bag contains ${cartCount} ${
                cartCount === 1
                    ? "item"
                    : "items"
            }.`
        );
    });

/* =========================================================
   YEAR + INIT
========================================================= */

document.getElementById("year").textContent =
    new Date().getFullYear();

renderCategories();
renderProducts(PRODUCTS);
renderTestimonials();
updateCart();

</script>

</body>
</html>
