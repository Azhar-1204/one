<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />

    <title>Kohinoor Lorry Transport & Parts</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Oswald:wght@500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ============================================================
           ROOT
        ============================================================ */
        :root {
            --bg: #f4f6f8;
            --white: #ffffff;
            --dark: #101820;
            --dark-2: #18232d;
            --yellow: #f5b700;
            --yellow-dark: #d99e00;
            --red: #d62828;
            --red-dark: #b71c1c;
            --blue: #1769aa;
            --text: #202830;
            --muted: #68737d;
            --border: #e2e6ea;
            --green: #188a55;

            --radius: 14px;
            --radius-sm: 9px;

            --shadow: 0 5px 24px rgba(16, 24, 32, 0.07);
            --shadow-hover: 0 14px 38px rgba(16, 24, 32, 0.13);

            --transition: 0.25s ease;
            --container: 1240px;
        }

        /* ============================================================
           RESET
        ============================================================ */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.5;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        img {
            display: block;
            max-width: 100%;
        }

        button,
        input {
            font-family: inherit;
        }

        button {
            border: 0;
            cursor: pointer;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 24px;
        }

        .muted {
            color: var(--muted);
        }

        /* ============================================================
           TOP BAR
        ============================================================ */
        .top-bar {
            background: var(--dark);
            color: #fff;
            font-size: 13px;
        }

        .top-bar-inner {
            min-height: 38px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
        }

        .top-info {
            display: flex;
            align-items: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .top-info span {
            display: flex;
            align-items: center;
            gap: 7px;
            opacity: 0.9;
        }

        .top-info i {
            color: var(--yellow);
        }

        /* ============================================================
           HEADER
        ============================================================ */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: #fff;
            box-shadow: 0 2px 15px rgba(0,0,0,0.06);
        }

        .header-inner {
            min-height: 78px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 22px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 11px;
            flex-shrink: 0;
        }

        .brand-icon {
            width: 48px;
            height: 48px;
            display: grid;
            place-items: center;
            background: var(--yellow);
            color: var(--dark);
            border-radius: 10px;
            font-size: 24px;
        }

        .brand-text {
            font-family: 'Oswald', sans-serif;
            font-size: 25px;
            font-weight: 700;
            text-transform: uppercase;
            line-height: 1;
            letter-spacing: 0.3px;
        }

        .brand-text span {
            display: block;
            color: var(--red);
            font-size: 12px;
            letter-spacing: 1.2px;
            margin-top: 5px;
            font-family: 'Inter', sans-serif;
        }

        nav ul {
            display: flex;
            align-items: center;
            list-style: none;
            gap: 3px;
        }

        nav a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 9px 13px;
            border-radius: 7px;
            font-size: 14px;
            font-weight: 600;
            color: var(--muted);
            transition: var(--transition);
        }

        nav a:hover,
        nav a.active {
            background: #fff7d8;
            color: var(--dark);
        }

        nav a i {
            color: var(--red);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 7px;
        }

        .header-btn {
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            border-radius: 8px;
            color: var(--dark);
            background: #f2f4f6;
            transition: var(--transition);
        }

        .header-btn:hover {
            background: var(--yellow);
            transform: translateY(-2px);
        }

        .cart-wrap {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -5px;
            right: -5px;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            background: var(--red);
            color: #fff;
            display: grid;
            place-items: center;
            font-size: 10px;
            font-weight: 800;
            border: 2px solid #fff;
        }

        .mobile-toggle {
            display: none;
            width: 40px;
            height: 40px;
            border-radius: 8px;
            background: var(--dark);
            color: #fff;
            font-size: 18px;
        }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid var(--border);
            padding: 10px 0 18px;
        }

        #mobileMenu ul {
            display: flex;
            flex-direction: column;
            list-style: none;
            gap: 4px;
        }

        #mobileMenu a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px;
            border-radius: 8px;
            font-weight: 600;
        }

        #mobileMenu a:hover {
            background: #fff7d8;
        }

        #mobileMenu i {
            color: var(--red);
            width: 22px;
        }

        /* ============================================================
           HERO
        ============================================================ */
        .hero {
            min-height: 520px;
            position: relative;
            display: flex;
            align-items: center;
            overflow: hidden;
            background:
                linear-gradient(90deg, rgba(10,16,21,0.96) 0%, rgba(10,16,21,0.82) 47%, rgba(10,16,21,0.30) 100%),
                url('https://images.unsplash.com/photo-1601584115197-04ecc0da31d8?auto=format&fit=crop&w=1800&q=85')
                center/cover no-repeat;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 690px;
            color: #fff;
            padding: 70px 0;
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: var(--yellow);
            color: var(--dark);
            padding: 7px 15px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            margin-bottom: 18px;
        }

        .hero h1 {
            font-family: 'Oswald', sans-serif;
            text-transform: uppercase;
            font-size: 57px;
            line-height: 1.03;
            letter-spacing: 0.4px;
            margin-bottom: 18px;
        }

        .hero h1 span {
            color: var(--yellow);
        }

        .hero p {
            max-width: 600px;
            color: rgba(255,255,255,0.82);
            font-size: 17px;
            line-height: 1.7;
            margin-bottom: 28px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            justify-content: center;
            align-items: center;
            gap: 8px;
            padding: 13px 24px;
            border-radius: 6px;
            font-weight: 700;
            font-size: 14px;
            transition: var(--transition);
        }

        .btn-yellow {
            background: var(--yellow);
            color: var(--dark);
        }

        .btn-yellow:hover {
            background: #ffd044;
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(245,183,0,0.3);
        }

        .btn-red {
            background: var(--red);
            color: #fff;
        }

        .btn-red:hover {
            background: var(--red-dark);
            transform: translateY(-2px);
        }

        .btn-outline {
            color: var(--dark);
            background: #fff;
            border: 1px solid var(--border);
        }

        .btn-outline:hover {
            background: var(--yellow);
            border-color: var(--yellow);
        }

        .hero-stats {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            max-width: 620px;
            margin-top: 38px;
            border-top: 1px solid rgba(255,255,255,0.2);
            padding-top: 24px;
        }

        .hero-stat {
            padding-right: 20px;
            border-right: 1px solid rgba(255,255,255,0.18);
        }

        .hero-stat:last-child {
            border-right: 0;
            padding-left: 20px;
        }

        .hero-stat:nth-child(2) {
            padding-left: 20px;
        }

        .hero-stat strong {
            display: block;
            font-family: 'Oswald', sans-serif;
            font-size: 27px;
            color: var(--yellow);
        }

        .hero-stat span {
            font-size: 12px;
            color: rgba(255,255,255,0.65);
        }

        /* ============================================================
           SECTION
        ============================================================ */
        .section {
            padding: 65px 0;
        }

        .section-head {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            gap: 20px;
            margin-bottom: 32px;
        }

        .section-title {
            font-family: 'Oswald', sans-serif;
            text-transform: uppercase;
            font-size: 32px;
            color: var(--dark);
            letter-spacing: 0.3px;
        }

        .section-subtitle {
            color: var(--muted);
            margin-top: 5px;
            font-size: 14px;
        }

        .section-line {
            width: 55px;
            height: 4px;
            background: var(--yellow);
            margin-top: 12px;
        }

        .view-all {
            color: var(--red);
            font-size: 13px;
            font-weight: 800;
            text-transform: uppercase;
            white-space: nowrap;
        }

        .view-all:hover {
            color: var(--dark);
        }

        /* ============================================================
           QUICK SERVICES
        ============================================================ */
        .service-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 17px;
        }

        .service-card {
            background: #fff;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 25px 20px;
            transition: var(--transition);
            position: relative;
            overflow: hidden;
        }

        .service-card::after {
            content: '';
            position: absolute;
            width: 70px;
            height: 70px;
            background: #fff7d8;
            border-radius: 50%;
            right: -25px;
            bottom: -25px;
        }

        .service-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
            border-color: var(--yellow);
        }

        .service-icon {
            width: 52px;
            height: 52px;
            display: grid;
            place-items: center;
            border-radius: 9px;
            background: var(--dark);
            color: var(--yellow);
            font-size: 22px;
            margin-bottom: 16px;
        }

        .service-card h3 {
            font-size: 16px;
            margin-bottom: 6px;
        }

        .service-card p {
            color: var(--muted);
            font-size: 13px;
            line-height: 1.6;
        }

        /* ============================================================
           PART CATEGORIES
        ============================================================ */
        .parts-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 14px;
        }

        .part-category {
            background: #fff;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 23px 10px;
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
        }

        .part-category:hover {
            border-color: var(--yellow);
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .part-icon {
            width: 58px;
            height: 58px;
            margin: auto auto 13px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            background: #fff7d8;
            color: var(--dark);
            font-size: 24px;
        }

        .part-category:hover .part-icon {
            background: var(--yellow);
        }

        .part-category h4 {
            font-size: 14px;
            margin-bottom: 4px;
        }

        .part-category span {
            color: var(--muted);
            font-size: 11px;
        }

        /* ============================================================
           PRODUCTS
        ============================================================ */
        .parts-products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 19px;
        }

        .product-card {
            background: #fff;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            overflow: hidden;
            transition: var(--transition);
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
            border-color: #e7c94d;
        }

        .product-image {
            position: relative;
            height: 210px;
            overflow: hidden;
            background: #e8ebee;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }

        .product-card:hover .product-image img {
            transform: scale(1.05);
        }

        .product-label {
            position: absolute;
            top: 11px;
            left: 11px;
            background: var(--red);
            color: #fff;
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 10px;
            font-weight: 800;
            text-transform: uppercase;
        }

        .product-label.yellow {
            background: var(--yellow);
            color: var(--dark);
        }

        .product-body {
            padding: 17px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-category {
            font-size: 10px;
            font-weight: 800;
            color: var(--red);
            text-transform: uppercase;
            letter-spacing: 0.7px;
            margin-bottom: 5px;
        }

        .product-title {
            font-size: 15px;
            line-height: 1.35;
            margin-bottom: 9px;
        }

        .product-rating {
            color: #e8a900;
            font-size: 12px;
            margin-bottom: 11px;
        }

        .product-rating span {
            color: var(--muted);
            margin-left: 5px;
        }

        .price-row {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: auto;
            margin-bottom: 14px;
        }

        .price {
            font-family: 'Oswald', sans-serif;
            font-size: 23px;
            font-weight: 700;
            color: var(--dark);
        }

        .old-price {
            color: #9aa2a9;
            text-decoration: line-through;
            font-size: 12px;
        }

        .add-part {
            width: 100%;
            padding: 10px;
            background: var(--dark);
            color: #fff;
            border-radius: 6px;
            font-size: 13px;
            font-weight: 700;
            transition: var(--transition);
        }

        .add-part:hover {
            background: var(--red);
        }

        .add-part.added {
            background: var(--green);
        }

        /* ============================================================
           TRANSPORT BANNER
        ============================================================ */
        .transport-banner {
            background:
                linear-gradient(100deg, rgba(16,24,32,0.97), rgba(16,24,32,0.88)),
                url('https://images.unsplash.com/photo-1502744688674-c619d1586c9e?auto=format&fit=crop&w=1600&q=80')
                center/cover;
            border-radius: var(--radius);
            padding: 48px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 35px;
        }

        .transport-content {
            max-width: 690px;
        }

        .transport-tag {
            display: inline-block;
            color: var(--yellow);
            text-transform: uppercase;
            font-size: 11px;
            font-weight: 800;
            letter-spacing: 1px;
            margin-bottom: 9px;
        }

        .transport-banner h2 {
            font-family: 'Oswald', sans-serif;
            text-transform: uppercase;
            font-size: 37px;
            margin-bottom: 9px;
        }

        .transport-banner p {
            color: rgba(255,255,255,0.7);
            font-size: 14px;
            max-width: 600px;
            margin-bottom: 20px;
        }

        .transport-features {
            display: flex;
            gap: 22px;
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .transport-feature {
            display: flex;
            align-items: center;
            gap: 7px;
            font-size: 12px;
            color: rgba(255,255,255,0.8);
        }

        .transport-feature i {
            color: var(--yellow);
        }

        .truck-icon {
            font-size: 110px;
            color: var(--yellow);
            opacity: 0.9;
        }

        /* ============================================================
           DEAL
        ============================================================ */
        .deal {
            display: grid;
            grid-template-columns: 42% 58%;
            background: #fff;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
        }

        .deal-image {
            min-height: 330px;
        }

        .deal-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 40px;
        }

        .deal-badge {
            display: inline-block;
            padding: 5px 12px;
            background: var(--red);
            color: #fff;
            border-radius: 4px;
            text-transform: uppercase;
            font-size: 10px;
            font-weight: 800;
            margin-bottom: 13px;
        }

        .deal-content h3 {
            font-family: 'Oswald', sans-serif;
            text-transform: uppercase;
            font-size: 31px;
            margin-bottom: 8px;
        }

        .deal-content p {
            color: var(--muted);
            font-size: 14px;
            margin-bottom: 14px;
        }

        .deal-price {
            font-family: 'Oswald', sans-serif;
            font-size: 35px;
            color: var(--red);
            font-weight: 700;
        }

        .deal-old {
            color: #9aa2a9;
            text-decoration: line-through;
            font-size: 17px;
            margin-left: 8px;
        }

        .stock {
            color: var(--muted);
            font-size: 12px;
            margin-top: 4px;
        }

        .stock strong {
            color: var(--red);
        }

        .timer {
            display: flex;
            gap: 9px;
            margin: 18px 0 21px;
        }

        .timer-box {
            background: var(--dark);
            color: #fff;
            min-width: 62px;
            padding: 8px;
            text-align: center;
            border-radius: 5px;
        }

        .timer-box strong {
            display: block;
            color: var(--yellow);
            font-family: 'Oswald', sans-serif;
            font-size: 23px;
        }

        .timer-box small {
            text-transform: uppercase;
            color: rgba(255,255,255,0.6);
            font-size: 9px;
        }

        /* ============================================================
           WHY KOHINOOR
        ============================================================ */
        .why-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .why-card {
            background: #fff;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 27px;
        }

        .why-number {
            font-family: 'Oswald', sans-serif;
            color: var(--yellow-dark);
            font-size: 28px;
            margin-bottom: 7px;
        }

        .why-card h3 {
            font-size: 16px;
            margin-bottom: 7px;
        }

        .why-card p {
            color: var(--muted);
            font-size: 13px;
            line-height: 1.6;
        }

        /* ============================================================
           TESTIMONIALS
        ============================================================ */
        .reviews {
            display: flex;
            gap: 18px;
            overflow-x: auto;
            padding: 5px 3px 18px;
        }

        .review {
            flex: 0 0 330px;
            background: #fff;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 23px;
        }

        .review-stars {
            color: #e5a900;
            margin-bottom: 10px;
        }

        .review blockquote {
            font-size: 14px;
            line-height: 1.65;
            color: var(--text);
            margin-bottom: 16px;
        }

        .review-author {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .review-avatar {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
            background: #ddd;
        }

        .review-name {
            font-weight: 700;
            font-size: 13px;
        }

        .review-role {
            color: var(--muted);
            font-size: 11px;
        }

        /* ============================================================
           ENQUIRY
        ============================================================ */
        .enquiry {
            background: var(--yellow);
            border-radius: var(--radius);
            padding: 40px 45px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 30px;
        }

        .enquiry h2 {
            font-family: 'Oswald', sans-serif;
            text-transform: uppercase;
            font-size: 31px;
            color: var(--dark);
        }

        .enquiry p {
            color: rgba(16,24,32,0.7);
            font-size: 14px;
            margin-top: 5px;
        }

        .enquiry-actions {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
        }

        /* ============================================================
           FOOTER
        ============================================================ */
        footer {
            background: var(--dark);
            color: #fff;
            padding: 50px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            padding-bottom: 35px;
        }

        .footer-brand p {
            color: rgba(255,255,255,0.55);
            font-size: 13px;
            max-width: 310px;
            margin-top: 13px;
            line-height: 1.7;
        }

        .footer-title {
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 0.7px;
            margin-bottom: 13px;
            color: var(--yellow);
        }

        .footer-list {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .footer-list a {
            color: rgba(255,255,255,0.58);
            font-size: 13px;
        }

        .footer-list a:hover {
            color: var(--yellow);
        }

        .socials {
            display: flex;
            gap: 8px;
            margin-top: 17px;
        }

        .socials a {
            width: 36px;
            height: 36px;
            display: grid;
            place-items: center;
            border-radius: 5px;
            background: rgba(255,255,255,0.08);
            color: #fff;
        }

        .socials a:hover {
            background: var(--red);
        }

        .footer-bottom {
            border-top: 1px solid rgba(255,255,255,0.08);
            padding-top: 19px;
            text-align: center;
            color: rgba(255,255,255,0.4);
            font-size: 11px;
        }

        /* ============================================================
           RESPONSIVE
        ============================================================ */
        @media(max-width:1100px) {
            .parts-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .parts-products {
                grid-template-columns: repeat(3, 1fr);
            }

            nav {
                display: none;
            }

            .mobile-toggle {
                display: grid;
                place-items: center;
            }
        }

        @media(max-width:900px) {
            .service-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .hero h1 {
                font-size: 45px;
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 240px;
            }

            .transport-banner {
                padding: 35px;
            }

            .truck-icon {
                font-size: 80px;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }

            .why-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width:650px) {
            .container {
                padding: 0 15px;
            }

            .top-info {
                justify-content: center;
                padding: 7px 0;
            }

            .top-info span:nth-child(2) {
                display: none;
            }

            .header-inner {
                min-height: 67px;
            }

            .brand-text {
                font-size: 20px;
            }

            .brand-icon {
                width: 40px;
                height: 40px;
                font-size: 20px;
            }

            .header-btn {
                width: 35px;
                height: 35px;
            }

            .hero {
                min-height: 500px;
            }

            .hero-content {
                padding: 55px 0;
            }

            .hero h1 {
                font-size: 38px;
            }

            .hero p {
                font-size: 14px;
            }

            .hero-stats {
                grid-template-columns: 1fr 1fr 1fr;
            }

            .hero-stat strong {
                font-size: 21px;
            }

            .hero-stat span {
                font-size: 9px;
            }

            .section {
                padding: 45px 0;
            }

            .section-title {
                font-size: 27px;
            }

            .parts-grid {
                grid-template-columns: 1fr 1fr;
            }

            .parts-products {
                grid-template-columns: 1fr 1fr;
                gap: 11px;
            }

            .product-image {
                height: 150px;
            }

            .product-body {
                padding: 12px;
            }

            .product-title {
                font-size: 13px;
            }

            .price {
                font-size: 19px;
            }

            .transport-banner {
                padding: 27px 22px;
            }

            .transport-banner h2 {
                font-size: 28px;
            }

            .truck-icon {
                display: none;
            }

            .why-grid {
                grid-template-columns: 1fr;
            }

            .enquiry {
                padding: 28px 22px;
                align-items: flex-start;
                flex-direction: column;
            }

            .enquiry h2 {
                font-size: 27px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                gap: 25px;
            }
        }

        @media(max-width:420px) {
            .parts-products {
                grid-template-columns: 1fr 1fr;
            }

            .hero h1 {
                font-size: 32px;
            }

            .hero-stats {
                gap: 5px;
            }

            .hero-stat {
                padding-right: 7px;
            }

            .hero-stat:nth-child(2) {
                padding-left: 7px;
            }

            .hero-stat:last-child {
                padding-left: 7px;
            }

            .timer-box {
                min-width: 50px;
            }
        }
    </style>
</head>

<body>

<!-- ============================================================
     TOP BAR
============================================================ -->
<div class="top-bar">
    <div class="container top-bar-inner">
        <div class="top-info">
            <span>
                <i class="fas fa-phone"></i>
                +91 98765 43210
            </span>

            <span>
                <i class="fas fa-envelope"></i>
                kohinoorlorry@gmail.com
            </span>

            <span>
                <i class="fas fa-clock"></i>
                Mon - Sat: 9:00 AM - 7:00 PM
            </span>
        </div>
    </div>
</div>


<!-- ============================================================
     HEADER
============================================================ -->
<header>
    <div class="container header-inner">

        <div style="display:flex;align-items:center;gap:10px;">
            <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                <i class="fas fa-bars"></i>
            </button>

            <a href="#" class="brand">
                <div class="brand-icon">
                    <i class="fas fa-truck"></i>
                </div>

                <div class="brand-text">
                    Kohinoor
                    <span>Lorry Transport & Parts</span>
                </div>
            </a>
        </div>


        <nav>
            <ul>
                <li>
                    <a href="#" class="active">
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#services">
                        <i class="fas fa-truck-moving"></i>
                        Transport
                    </a>
                </li>

                <li>
                    <a href="#parts">
                        <i class="fas fa-cogs"></i>
                        Lorry Parts
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        <i class="fas fa-tags"></i>
                        Offers
                    </a>
                </li>

                <li>
                    <a href="#reviews">
                        <i class="fas fa-star"></i>
                        Reviews
                    </a>
                </li>
            </ul>
        </nav>


        <div class="header-actions">

            <button
                class="header-btn"
                title="Call us"
                onclick="callBusiness()">
                <i class="fas fa-phone"></i>
            </button>

            <div class="cart-wrap">
                <button
                    class="header-btn"
                    id="cartBtn"
                    title="Parts Cart">
                    <i class="fas fa-shopping-cart"></i>
                </button>

                <span class="cart-count" id="cartCount">0</span>
            </div>

        </div>

    </div>


    <!-- MOBILE MENU -->
    <div id="mobileMenu">
        <div class="container">
            <ul>
                <li>
                    <a href="#">
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#services">
                        <i class="fas fa-truck-moving"></i>
                        Transport Services
                    </a>
                </li>

                <li>
                    <a href="#parts">
                        <i class="fas fa-cogs"></i>
                        Lorry Parts
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        <i class="fas fa-tags"></i>
                        Offers
                    </a>
                </li>

                <li>
                    <a href="#reviews">
                        <i class="fas fa-star"></i>
                        Reviews
                    </a>
                </li>

                <li>
                    <a href="tel:+919876543210">
                        <i class="fas fa-phone"></i>
                        Call Kohinoor
                    </a>
                </li>
            </ul>
        </div>
    </div>
</header>


<!-- ============================================================
     MAIN
============================================================ -->
<main>


<!-- ============================================================
     HERO
============================================================ -->
<section class="hero">

    <div class="container">

        <div class="hero-content">

            <div class="hero-tag">
                <i class="fas fa-truck"></i>
                Trusted Lorry Service
            </div>

            <h1>
                Reliable <span>Lorry Transport</span>
                & Genuine Parts
            </h1>

            <p>
                Kohinoor provides dependable lorry transport services
                along with quality spare parts, tyres, batteries,
                engine components and commercial vehicle accessories.
            </p>

            <div class="hero-buttons">

                <button
                    class="btn btn-yellow"
                    id="transportBtn">
                    <i class="fas fa-truck-moving"></i>
                    Book Transport
                </button>

                <button
                    class="btn btn-red"
                    id="partsBtn">
                    <i class="fas fa-cogs"></i>
                    Browse Lorry Parts
                </button>

            </div>


            <div class="hero-stats">

                <div class="hero-stat">
                    <strong>15+</strong>
                    <span>Years Experience</span>
                </div>

                <div class="hero-stat">
                    <strong>5000+</strong>
                    <span>Successful Trips</span>
                </div>

                <div class="hero-stat">
                    <strong>24/7</strong>
                    <span>Transport Support</span>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- ============================================================
     SERVICES
============================================================ -->
<section class="section" id="services">

    <div class="container">

        <div class="section-head">

            <div>
                <h2 class="section-title">
                    Our Transport Services
                </h2>

                <p class="section-subtitle">
                    Safe, reliable and professional commercial vehicle transport.
                </p>

                <div class="section-line"></div>
            </div>

            <a href="#enquiry" class="view-all">
                Get Quote →
            </a>

        </div>


        <div class="service-grid">

            <div class="service-card">

                <div class="service-icon">
                    <i class="fas fa-truck-moving"></i>
                </div>

                <h3>Full Load Transport</h3>

                <p>
                    Reliable full-load lorry transport for
                    commercial and industrial cargo.
                </p>

            </div>


            <div class="service-card">

                <div class="service-icon">
                    <i class="fas fa-boxes-stacked"></i>
                </div>

                <h3>Part Load Service</h3>

                <p>
                    Cost-effective part-load solutions for
                    smaller shipments and business deliveries.
                </p>

            </div>


            <div class="service-card">

                <div class="service-icon">
                    <i class="fas fa-route"></i>
                </div>

                <h3>Long Distance</h3>

                <p>
                    Interstate and long-distance lorry
                    transportation with dependable delivery.
                </p>

            </div>


            <div class="service-card">

                <div class="service-icon">
                    <i class="fas fa-warehouse"></i>
                </div>

                <h3>Loading & Delivery</h3>

                <p>
                    Professional loading, unloading and
                    delivery coordination for your cargo.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- ============================================================
     PART CATEGORIES
============================================================ -->
<section class="section" id="parts" style="background:#fff;">

    <div class="container">

        <div class="section-head">

            <div>
                <h2 class="section-title">
                    Lorry Spare Parts
                </h2>

                <p class="section-subtitle">
                    Quality replacement parts for commercial vehicles.
                </p>

                <div class="section-line"></div>
            </div>

            <a href="#products" class="view-all">
                View Parts →
            </a>

        </div>


        <div class="parts-grid" id="partsGrid"></div>

    </div>

</section>


<!-- ============================================================
     PRODUCTS
============================================================ -->
<section class="section" id="products">

    <div class="container">

        <div class="section-head">

            <div>
                <h2 class="section-title">
                    Popular Lorry Parts
                </h2>

                <p class="section-subtitle">
                    Frequently requested parts from our customers.
                </p>

                <div class="section-line"></div>
            </div>

            <a href="#" class="view-all">
                All Parts →
            </a>

        </div>


        <div
            class="parts-products"
            id="productsGrid">
        </div>

    </div>

</section>


<!-- ============================================================
     TRANSPORT BANNER
============================================================ -->
<section class="section">

    <div class="container">

        <div class="transport-banner">

            <div class="transport-content">

                <span class="transport-tag">
                    Kohinoor Transport
                </span>

                <h2>
                    Need a Lorry for Your Next Load?
                </h2>

                <p>
                    Tell us your pickup location, destination,
                    cargo type and required vehicle. Our team
                    will help arrange the right lorry for your load.
                </p>

                <button
                    class="btn btn-yellow"
                    id="quoteBtn">
                    <i class="fas fa-file-invoice"></i>
                    Request Transport Quote
                </button>

                <div class="transport-features">

                    <div class="transport-feature">
                        <i class="fas fa-check-circle"></i>
                        Reliable Drivers
                    </div>

                    <div class="transport-feature">
                        <i class="fas fa-check-circle"></i>
                        Timely Delivery
                    </div>

                    <div class="transport-feature">
                        <i class="fas fa-check-circle"></i>
                        Competitive Rates
                    </div>

                </div>

            </div>

            <i class="fas fa-truck truck-icon"></i>

        </div>

    </div>

</section>


<!-- ============================================================
     FLASH DEAL
============================================================ -->
<section class="section" id="deals">

    <div class="container">

        <div class="section-head">

            <div>
                <h2 class="section-title">
                    Today's Parts Deal
                </h2>

                <p class="section-subtitle">
                    Limited-time offer on selected commercial vehicle parts.
                </p>

                <div class="section-line"></div>
            </div>

        </div>


        <div class="deal">

            <div class="deal-image">

                <img
                    src="https://images.unsplash.com/photo-1485965120184-e220f721d03e?auto=format&fit=crop&w=1000&q=85"
                    alt="Truck mechanical part"
                    loading="lazy">

            </div>


            <div class="deal-content">

                <span class="deal-badge">
                    Limited Offer
                </span>

                <h3>
                    Heavy Duty Brake Kit
                </h3>

                <p>
                    Durable brake components designed for
                    commercial and heavy-duty lorry applications.
                </p>

                <div>
                    <span class="deal-price">
                        ₹8,999
                    </span>

                    <span class="deal-old">
                        ₹11,500
                    </span>
                </div>

                <div class="stock">
                    Only <strong>8 kits</strong> available.
                </div>


                <div class="timer">

                    <div class="timer-box">
                        <strong id="dealHours">00</strong>
                        <small>Hours</small>
                    </div>

                    <div class="timer-box">
                        <strong id="dealMinutes">00</strong>
                        <small>Mins</small>
                    </div>

                    <div class="timer-box">
                        <strong id="dealSeconds">00</strong>
                        <small>Secs</small>
                    </div>

                </div>


                <button
                    class="btn btn-red"
                    id="buyDeal">

                    <i class="fas fa-cart-plus"></i>
                    Add Deal to Enquiry

                </button>

            </div>

        </div>

    </div>

</section>


<!-- ============================================================
     WHY KOHINOOR
============================================================ -->
<section class="section" style="background:#fff;">

    <div class="container">

        <div class="section-head">

            <div>
                <h2 class="section-title">
                    Why Choose Kohinoor?
                </h2>

                <p class="section-subtitle">
                    Built around reliability, service and value.
                </p>

                <div class="section-line"></div>
            </div>
        </div>


        <div class="why-grid">

            <div class="why-card">
                <div class="why-number">01</div>
                <h3>Genuine Quality Parts</h3>
                <p>
                    We focus on dependable spare parts and
                    components suitable for commercial vehicles.
                </p>
            </div>

            <div class="why-card">
                <div class="why-number">02</div>
                <h3>Experienced Transport Team</h3>
                <p>
                    Our experienced team helps coordinate
                    vehicles, routes and delivery requirements.
                </p>
            </div>

            <div class="why-card">
                <div class="why-number">03</div>
                <h3>Fast Customer Support</h3>
                <p>
                    Contact us for transport requirements,
                    parts availability and quick quotations.
                </p>
            </div>

        </div>

    </div>

</section>


<!-- ============================================================
     REVIEWS
============================================================ -->
<section class="section" id="reviews">

    <div class="container">

        <div class="section-head">

            <div>
                <h2 class="section-title">
                    Customer Reviews
                </h2>

                <p class="section-subtitle">
                    What our transport and parts customers say.
                </p>

                <div class="section-line"></div>
            </div>

        </div>


        <div
            class="reviews"
            id="reviewsList">
        </div>

    </div>

</section>


<!-- ============================================================
     ENQUIRY
============================================================ -->
<section class="section" id="enquiry">

    <div class="container">

        <div class="enquiry">

            <div>
                <h2>
                    Need Transport or Lorry Parts?
                </h2>

                <p>
                    Contact Kohinoor today for pricing,
                    availability and transport enquiries.
                </p>
            </div>

            <div class="enquiry-actions">

                <button
                    class="btn btn-red"
                    onclick="callBusiness()">
                    <i class="fas fa-phone"></i>
                    Call Now
                </button>

                <button
                    class="btn btn-outline"
                    onclick="whatsappBusiness()">
                    <i class="fab fa-whatsapp"></i>
                    WhatsApp
                </button>

            </div>

        </div>

    </div>

</section>

</main>


<!-- ============================================================
     FOOTER
============================================================ -->
<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#" class="brand">

                    <div class="brand-icon">
                        <i class="fas fa-truck"></i>
                    </div>

                    <div class="brand-text" style="color:#fff;">
                        Kohinoor
                        <span>Lorry Transport & Parts</span>
                    </div>

                </a>

                <p>
                    Reliable lorry transport services and
                    quality commercial vehicle spare parts
                    for businesses and fleet operators.
                </p>

                <div class="socials">

                    <a href="#" aria-label="Facebook">
                        <i class="fab fa-facebook-f"></i>
                    </a>

                    <a href="#" aria-label="Instagram">
                        <i class="fab fa-instagram"></i>
                    </a>

                    <a href="#" aria-label="YouTube">
                        <i class="fab fa-youtube"></i>
                    </a>

                    <a href="#" aria-label="WhatsApp"
                       onclick="whatsappBusiness(); return false;">
                        <i class="fab fa-whatsapp"></i>
                    </a>

                </div>

            </div>


            <div>

                <h4 class="footer-title">
                    Transport
                </h4>

                <ul class="footer-list">

                    <li>
                        <a href="#services">
                            Full Load Transport
                        </a>
                    </li>

                    <li>
                        <a href="#services">
                            Part Load
                        </a>
                    </li>

                    <li>
                        <a href="#services">
                            Long Distance
                        </a>
                    </li>

                    <li>
                        <a href="#services">
                            Loading & Delivery
                        </a>
                    </li>

                </ul>

            </div>


            <div>

                <h4 class="footer-title">
                    Lorry Parts
                </h4>

                <ul class="footer-list">

                    <li>
                        <a href="#parts">
                            Engine Parts
                        </a>
                    </li>

                    <li>
                        <a href="#parts">
                            Brake Parts
                        </a>
                    </li>

                    <li>
                        <a href="#parts">
                            Tyres
                        </a>
                    </li>

                    <li>
                        <a href="#parts">
                            Batteries
                        </a>
                    </li>

                </ul>

            </div>


            <div>

                <h4 class="footer-title">
                    Contact
                </h4>

                <ul class="footer-list">

                    <li>
                        <a href="tel:+919876543210">
                            <i class="fas fa-phone"></i>
                            +91 98765 43210
                        </a>
                    </li>

                    <li>
                        <a href="mailto:kohinoorlorry@gmail.com">
                            <i class="fas fa-envelope"></i>
                            kohinoorlorry@gmail.com
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <i class="fas fa-location-dot"></i>
                            Your Business Location
                        </a>
                    </li>

                </ul>

            </div>

        </div>


        <div class="footer-bottom">

            © <span id="year"></span>
            Kohinoor Lorry Transport & Parts.
            All Rights Reserved.

        </div>

    </div>

</footer>


<!-- ============================================================
     JAVASCRIPT
============================================================ -->
<script>

    /* ============================================================
       PART CATEGORIES
    ============================================================ */

    const PART_CATEGORIES = [

        {
            id: 'engine',
            name: 'Engine Parts',
            icon: 'fa-gears',
            count: 86
        },

        {
            id: 'brakes',
            name: 'Brake Parts',
            icon: 'fa-circle-stop',
            count: 54
        },

        {
            id: 'tyres',
            name: 'Lorry Tyres',
            icon: 'fa-circle-dot',
            count: 32
        },

        {
            id: 'battery',
            name: 'Batteries',
            icon: 'fa-car-battery',
            count: 19
        },

        {
            id: 'lights',
            name: 'Lights',
            icon: 'fa-lightbulb',
            count: 41
        },

        {
            id: 'filters',
            name: 'Filters',
            icon: 'fa-filter',
            count: 37
        }

    ];


    /* ============================================================
       PRODUCTS
    ============================================================ */

    const PRODUCTS = [

        {
            id: 1,
            title: 'Heavy Duty Brake Pad Set',
            price: 2499,
            oldPrice: 2999,
            rating: 5,
            reviews: 84,
            badge: 'Popular',
            img: 'https://images.unsplash.com/photo-1485965120184-e220f721d03e?auto=format&fit=crop&w=700&q=80',
            category: 'Brake Parts'
        },

        {
            id: 2,
            title: 'Commercial Vehicle Air Filter',
            price: 899,
            oldPrice: 1099,
            rating: 4,
            reviews: 47,
            badge: 'Sale',
            img: 'https://images.unsplash.com/photo-1632823469850-1c4fd5b0f8d9?auto=format&fit=crop&w=700&q=80',
            category: 'Filters'
        },

        {
            id: 3,
            title: 'Heavy Duty Truck Battery',
            price: 8999,
            oldPrice: 9999,
            rating: 5,
            reviews: 61,
            badge: 'Best Seller',
            img: 'https://images.unsplash.com/photo-1621905252507-b35492cc74b4?auto=format&fit=crop&w=700&q=80',
            category: 'Batteries'
        },

        {
            id: 4,
            title: 'Lorry LED Headlight Pair',
            price: 3299,
            rating: 4,
            reviews: 38,
            badge: '',
            img: 'https://images.unsplash.com/photo-1542282088-fe8426682b8f?auto=format&fit=crop&w=700&q=80',
            category: 'Lights'
        },

        {
            id: 5,
            title: 'Heavy Duty Engine Oil Filter',
            price: 649,
            rating: 5,
            reviews: 92,
            badge: 'Popular',
            img: 'https://images.unsplash.com/photo-1635784063496-8e44b7a9b89f?auto=format&fit=crop&w=700&q=80',
            category: 'Filters'
        },

        {
            id: 6,
            title: 'Commercial Lorry Clutch Kit',
            price: 7499,
            oldPrice: 8499,
            rating: 4,
            reviews: 29,
            badge: 'Sale',
            img: 'https://images.unsplash.com/photo-1487754180451-c456f719a1fc?auto=format&fit=crop&w=700&q=80',
            category: 'Engine Parts'
        },

        {
            id: 7,
            title: 'Heavy Duty Fan Belt',
            price: 799,
            rating: 5,
            reviews: 53,
            badge: '',
            img: 'https://images.unsplash.com/photo-1486262715619-67b85e0b08d3?auto=format&fit=crop&w=700&q=80',
            category: 'Engine Parts'
        },

        {
            id: 8,
            title: 'Lorry Wheel & Tyre Package',
            price: 18999,
            oldPrice: 21999,
            rating: 5,
            reviews: 71,
            badge: 'Deal',
            img: 'https://images.unsplash.com/photo-1578844251758-2f71da64c46f?auto=format&fit=crop&w=700&q=80',
            category: 'Lorry Tyres'
        }

    ];


    /* ============================================================
       REVIEWS
    ============================================================ */

    const REVIEWS = [

        {
            name: 'Ravi Kumar',
            role: 'Fleet Owner',
            avatar: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80',
            text: 'Kohinoor has been very reliable for our transport requirements. Their team responds quickly and the delivery coordination is excellent.',
            stars: 5
        },

        {
            name: 'Suresh Reddy',
            role: 'Transport Operator',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80',
            text: 'We regularly purchase lorry parts from Kohinoor. Good quality and the staff help us find the correct parts.',
            stars: 5
        },

        {
            name: 'Imran Khan',
            role: 'Business Owner',
            avatar: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?auto=format&fit=crop&w=100&q=80',
            text: 'Good transport service and reasonable pricing. I would recommend Kohinoor for commercial vehicle requirements.',
            stars: 4
        },

        {
            name: 'Prakash Rao',
            role: 'Fleet Manager',
            avatar: 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?auto=format&fit=crop&w=100&q=80',
            text: 'The spare parts section is very useful for our fleet maintenance. Fast response whenever we need something urgently.',
            stars: 5
        }

    ];


    /* ============================================================
       STATE
    ============================================================ */

    let cartCount = 0;


    /* ============================================================
       DOM
    ============================================================ */

    const partsGrid =
        document.getElementById('partsGrid');

    const productsGrid =
        document.getElementById('productsGrid');

    const reviewsList =
        document.getElementById('reviewsList');

    const cartCountEl =
        document.getElementById('cartCount');

    const mobileToggle =
        document.getElementById('mobileToggle');

    const mobileMenu =
        document.getElementById('mobileMenu');


    /* ============================================================
       RENDER CATEGORIES
    ============================================================ */

    function renderCategories() {

        partsGrid.innerHTML = '';

        PART_CATEGORIES.forEach(category => {

            const element =
                document.createElement('div');

            element.className =
                'part-category';

            element.innerHTML = `

                <div class="part-icon">
                    <i class="fas ${category.icon}"></i>
                </div>

                <h4>
                    ${category.name}
                </h4>

                <span>
                    ${category.count} items
                </span>
            `;


            element.addEventListener(
                'click',
                () => {

                    filterProducts(
                        category.name
                    );

                    document
                        .getElementById('products')
                        .scrollIntoView({
                            behavior: 'smooth'
                        });

                }
            );


            partsGrid.appendChild(element);

        });

    }


    /* ============================================================
       ESCAPE HTML
    ============================================================ */

    function escapeHtml(text) {

        return String(text).replace(
            /[&<>"']/g,

            function(character) {

                return {

                    '&': '&amp;',
                    '<': '&lt;',
                    '>': '&gt;',
                    '"': '&quot;',
                    "'": '&#39;'

                }[character];

            }
        );

    }


    /* ============================================================
       RENDER PRODUCTS
    ============================================================ */

    function renderProducts(list) {

        productsGrid.innerHTML = '';

        if (!list.length) {

            productsGrid.innerHTML = `

                <div style="
                    grid-column:1/-1;
                    text-align:center;
                    padding:50px;
                    color:var(--muted);
                ">

                    <i
                        class="fas fa-box-open"
                        style="
                            font-size:35px;
                            margin-bottom:12px;
                        ">
                    </i>

                    <p>
                        No lorry parts found.
                    </p>

                </div>

            `;

            return;

        }


        list.forEach(product => {

            const element =
                document.createElement('article');

            element.className =
                'product-card';


            const badgeClass =
                product.badge === 'Sale'
                    ? 'yellow'
                    : '';


            const badge =
                product.badge
                    ? `
                        <span class="
                            product-label
                            ${badgeClass}
                        ">
                            ${product.badge}
                        </span>
                    `
                    : '';


            const oldPrice =
                product.oldPrice
                    ? `
                        <span class="old-price">
                            ₹${product.oldPrice.toLocaleString('en-IN')}
                        </span>
                    `
                    : '';


            const stars =
                '★'.repeat(
                    Math.round(product.rating)
                )
                +
                '☆'.repeat(
                    5 - Math.round(product.rating)
                );


            element.innerHTML = `

                <div class="product-image">

                    <img
                        src="${product.img}"
                        alt="${escapeHtml(product.title)}"
                        loading="lazy">

                    ${badge}

                </div>


                <div class="product-body">

                    <div class="product-category">
                        ${product.category}
                    </div>

                    <h3 class="product-title">
                        ${escapeHtml(product.title)}
                    </h3>

                    <div class="product-rating">
                        ${stars}
                        <span>
                            (${product.reviews})
                        </span>
                    </div>

                    <div class="price-row">

                        <span class="price">
                            ₹${product.price.toLocaleString('en-IN')}
                        </span>

                        ${oldPrice}

                    </div>

                    <button
                        class="add-part"
                        data-id="${product.id}">

                        <i class="fas fa-cart-plus"></i>
                        Add to Enquiry

                    </button>

                </div>

            `;


            productsGrid.appendChild(element);

        });


        productsGrid
            .querySelectorAll('.add-part')
            .forEach(button => {

                button.addEventListener(
                    'click',
                    function() {

                        const id =
                            Number(
                                this.dataset.id
                            );

                        addToCart(
                            id,
                            this
                        );

                    }
                );

            });

    }


    /* ============================================================
       ADD TO CART
    ============================================================ */

    function addToCart(productId, button) {

        const product =
            PRODUCTS.find(
                item => item.id === productId
            );


        if (!product) return;


        cartCount++;

        updateCart();


        const original =
            button.innerHTML;


        button.innerHTML =
            '<i class="fas fa-check"></i> Added';


        button.classList.add('added');


        setTimeout(() => {

            button.innerHTML =
                original;

            button.classList.remove(
                'added'
            );

        }, 1500);

    }


    /* ============================================================
       CART
    ============================================================ */

    function updateCart() {

        cartCountEl.textContent =
            cartCount;


        cartCountEl.style.transform =
            'scale(1.3)';


        setTimeout(() => {

            cartCountEl.style.transform =
                'scale(1)';

        }, 200);

    }


    /* ============================================================
       FILTER PRODUCTS
    ============================================================ */

    function filterProducts(query) {

        const q =
            String(query || '')
                .trim()
                .toLowerCase();


        if (!q) {

            renderProducts(
                PRODUCTS
            );

            return;

        }


        const filtered =
            PRODUCTS.filter(product =>

                product.title
                    .toLowerCase()
                    .includes(q)

                ||

                product.category
                    .toLowerCase()
                    .includes(q)

            );


        renderProducts(
            filtered
        );

    }


    /* ============================================================
       REVIEWS
    ============================================================ */

    function renderReviews() {

        reviewsList.innerHTML = '';


        REVIEWS.forEach(review => {

            const element =
                document.createElement('div');


            element.className =
                'review';


            const stars =
                '★'.repeat(review.stars)
                +
                '☆'.repeat(
                    5 - review.stars
                );


            element.innerHTML = `

                <div class="review-stars">
                    ${stars}
                </div>

                <blockquote>
                    “${escapeHtml(review.text)}”
                </blockquote>

                <div class="review-author">

                    <img
                        class="review-avatar"
                        src="${review.avatar}"
                        alt="${escapeHtml(review.name)}"
                        loading="lazy">

                    <div>

                        <div class="review-name">
                            ${escapeHtml(review.name)}
                        </div>

                        <div class="review-role">
                            ${escapeHtml(review.role)}
                        </div>

                    </div>

                </div>

            `;


            reviewsList.appendChild(
                element
            );

        });

    }


    /* ============================================================
       MOBILE MENU
    ============================================================ */

    mobileToggle.addEventListener(
        'click',
        () => {

            const open =
                mobileMenu.style.display === 'block';


            mobileMenu.style.display =
                open ? 'none' : 'block';


            mobileToggle.innerHTML =
                open

                ? '<i class="fas fa-bars"></i>'

                : '<i class="fas fa-times"></i>';

        }
    );


    mobileMenu
        .querySelectorAll('a')
        .forEach(link => {

            link.addEventListener(
                'click',
                () => {

                    mobileMenu.style.display =
                        'none';

                    mobileToggle.innerHTML =
                        '<i class="fas fa-bars"></i>';

                }
            );

        });


    /* ============================================================
       HERO BUTTONS
    ============================================================ */

    document
        .getElementById('transportBtn')
        .addEventListener(
            'click',
            () => {

                document
                    .getElementById('enquiry')
                    .scrollIntoView({
                        behavior: 'smooth'
                    });

            }
        );


    document
        .getElementById('partsBtn')
        .addEventListener(
            'click',
            () => {

                document
                    .getElementById('parts')
                    .scrollIntoView({
                        behavior: 'smooth'
                    });

            }
        );


    document
        .getElementById('quoteBtn')
        .addEventListener(
            'click',
            () => {

                alert(
                    'Please call Kohinoor at +91 98765 43210 for a transport quotation.'
                );

            }
        );


    /* ============================================================
       DEAL
    ============================================================ */

    document
        .getElementById('buyDeal')
        .addEventListener(
            'click',
            function() {

                cartCount++;

                updateCart();


                const original =
                    this.innerHTML;


                this.innerHTML =
                    '<i class="fas fa-check"></i> Added to Enquiry';


                this.style.background =
                    'var(--green)';


                setTimeout(() => {

                    this.innerHTML =
                        original;

                    this.style.background =
                        '';

                }, 1700);

            }
        );


    /* ============================================================
       DEAL TIMER
    ============================================================ */

    (function setupTimer() {

        const target =
            new Date(
                Date.now()
                +
                (
                    7 * 60 * 60
                    +
                    45 * 60
                    +
                    30
                )
                * 1000
            );


        function tick() {

            const difference =
                target - new Date();


            if (difference <= 0) {

                document
                    .getElementById('dealHours')
                    .textContent = '00';

                document
                    .getElementById('dealMinutes')
                    .textContent = '00';

                document
                    .getElementById('dealSeconds')
                    .textContent = '00';

                return;

            }


            const hours =
                Math.floor(
                    difference
                    /
                    (60 * 60 * 1000)
                );


            const minutes =
                Math.floor(
                    (
                        difference
                        %
                        (60 * 60 * 1000)
                    )
                    /
                    (60 * 1000)
                );


            const seconds =
                Math.floor(
                    (
                        difference
                        %
                        (60 * 1000)
                    )
                    /
                    1000
                );


            document
                .getElementById('dealHours')
                .textContent =
                String(hours)
                    .padStart(2, '0');


            document
                .getElementById('dealMinutes')
                .textContent =
                String(minutes)
                    .padStart(2, '0');


            document
                .getElementById('dealSeconds')
                .textContent =
                String(seconds)
                    .padStart(2, '0');

        }


        tick();

        setInterval(
            tick,
            1000
        );

    })();


    /* ============================================================
       CART BUTTON
    ============================================================ */

    document
        .getElementById('cartBtn')
        .addEventListener(
            'click',
            () => {

                alert(
                    `Your parts enquiry contains ${cartCount} item${cartCount !== 1 ? 's' : ''}.`
                );

            }
        );


    /* ============================================================
       PHONE
    ============================================================ */

    function callBusiness() {

        window.location.href =
            'tel:+919876543210';

    }


    /* ============================================================
       WHATSAPP
    ============================================================ */

    function whatsappBusiness() {

        const message =
            encodeURIComponent(
                'Hello Kohinoor, I need information about lorry transport / spare parts.'
            );


        window.open(
            'https://wa.me/919876543210?text=' + message,
            '_blank'
        );

    }


    /* ============================================================
       RESIZE
    ============================================================ */

    window.addEventListener(
        'resize',
        () => {

            if (
                window.innerWidth > 1100
            ) {

                mobileMenu.style.display =
                    'none';

                mobileToggle.innerHTML =
                    '<i class="fas fa-bars"></i>';

            }

        }
    );


    /* ============================================================
       YEAR
    ============================================================ */

    document
        .getElementById('year')
        .textContent =
        new Date().getFullYear();


    /* ============================================================
       INITIALIZE
    ============================================================ */

    renderCategories();

    renderProducts(
        PRODUCTS
    );

    renderReviews();

    updateCart();


    console.log(
        '🚛 Kohinoor Lorry Transport & Parts loaded.'
    );

</script>

</body>
</html>
