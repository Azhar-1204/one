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
            font
