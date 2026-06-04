<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de empleados</title>
    <!-- Google Fonts: Inter & Outfit -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Outfit:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    
    <!-- Custom Modern Grayscale Styles -->
    <style>
        :root {
            --bg-principal: #F5F5F5;
            --bg-tarjeta: #FFFFFF;
            --gris-claro: #E5E5E5;
            --gris-claro-alt: #F9F9F9;
            --gris-medio: #9E9E9E;
            --gris-oscuro: #424242;
            --texto-principal: #212121;
            --negro-elegante: #111111;
            --shadow-sm: 0 2px 4px rgba(0, 0, 0, 0.02);
            --shadow-md: 0 4px 12px rgba(0, 0, 0, 0.05);
            --shadow-lg: 0 10px 25px rgba(0, 0, 0, 0.05);
            --border-radius-btn: 8px;
            --border-radius-card: 12px;
            --transition-smooth: all 0.2s cubic-bezier(0.4, 0, 0.2, 1);
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
            background-color: var(--bg-principal);
            color: var(--texto-principal);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Titles and Typography */
        h1, h2, h3, h4, h5, h6, .navbar-brand {
            font-family: 'Outfit', sans-serif;
            font-weight: 600;
            color: var(--negro-elegante);
            letter-spacing: -0.02em;
        }

        /* Navbar Custom Styles */
        .custom-navbar {
            background-color: var(--negro-elegante) !important;
            padding: 1rem 0;
            border-bottom: 1px solid rgba(255, 255, 255, 0.05);
            margin-bottom: 2.5rem;
            box-shadow: var(--shadow-sm);
        }

        .custom-navbar .navbar-brand {
            font-size: 1.25rem;
            font-weight: 700;
            color: #FFFFFF !important;
            letter-spacing: -0.03em;
        }

        .custom-navbar .nav-link {
            color: var(--gris-medio) !important;
            font-weight: 500;
            padding: 0.5rem 1rem !important;
            border-radius: var(--border-radius-btn);
            transition: var(--transition-smooth);
        }

        .custom-navbar .nav-link:hover {
            color: #FFFFFF !important;
            background-color: rgba(255, 255, 255, 0.08);
        }

        .custom-navbar .nav-link.active {
            color: #FFFFFF !important;
            background-color: rgba(255, 255, 255, 0.12);
        }

        /* Container wrappers */
        .main-wrapper {
            flex: 1;
            padding-bottom: 3rem;
        }

        /* Cards and Containers */
        .custom-card {
            background-color: var(--bg-tarjeta);
            border: 1px solid var(--gris-claro);
            border-radius: var(--border-radius-card);
            box-shadow: var(--shadow-md);
            padding: 2.5rem;
            margin-top: 1rem;
            transition: var(--transition-smooth);
        }

        .custom-card:hover {
            box-shadow: var(--shadow-lg);
        }

        /* Buttons Overrides */
        .btn-warning {
            background-color: var(--negro-elegante) !important;
            border-color: var(--negro-elegante) !important;
            color: #FFFFFF !important;
            font-weight: 500 !important;
            padding: 0.6rem 1.5rem !important;
            border-radius: var(--border-radius-btn) !important;
            transition: var(--transition-smooth) !important;
            border: 1px solid var(--negro-elegante) !important;
            box-shadow: var(--shadow-sm);
        }

        .btn-warning:hover, .btn-warning:focus, .btn-warning:active {
            background-color: #333333 !important;
            border-color: #333333 !important;
            color: #FFFFFF !important;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1) !important;
            transform: translateY(-1px);
        }

        .btn-danger {
            background-color: var(--gris-oscuro) !important;
            border-color: var(--gris-oscuro) !important;
            color: #FFFFFF !important;
            font-weight: 500 !important;
            padding: 0.6rem 1.5rem !important;
            border-radius: var(--border-radius-btn) !important;
            transition: var(--transition-smooth) !important;
            border: 1px solid var(--gris-oscuro) !important;
            box-shadow: var(--shadow-sm);
        }

        .btn-danger:hover, .btn-danger:focus, .btn-danger:active {
            background-color: #5a5a5a !important;
            border-color: #5a5a5a !important;
            color: #FFFFFF !important;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1) !important;
            transform: translateY(-1px);
        }

        /* Small sizes for inline actions */
        .btn-sm {
            padding: 0.4rem 1rem !important;
            font-size: 0.85rem !important;
        }

        /* Tables Custom Styles */
        .custom-table-container {
            overflow-hidden;
            border-radius: 8px;
            border: 1px solid var(--gris-claro);
            margin-top: 1.5rem;
        }

        .custom-table {
            margin-bottom: 0 !important;
            border: none !important;
        }

        .custom-table thead th {
            background-color: var(--negro-elegante) !important;
            color: #FFFFFF !important;
            font-family: 'Outfit', sans-serif;
            font-weight: 500;
            text-transform: uppercase;
            font-size: 0.8rem;
            letter-spacing: 0.05em;
            padding: 1rem 1.25rem;
            border: none !important;
        }

        .custom-table tbody tr {
            transition: var(--transition-smooth);
        }

        .custom-table tbody td, .custom-table tbody th {
            padding: 1.1rem 1.25rem !important;
            vertical-align: middle;
            color: var(--texto-principal);
            border-bottom: 1px solid var(--gris-claro) !important;
            background-color: #FFFFFF;
        }

        .custom-table tbody tr:last-child td, 
        .custom-table tbody tr:last-child th {
            border-bottom: none !important;
        }

        /* Table stripes alternative using pure CSS */
        .custom-table tbody tr:nth-of-type(odd) td,
        .custom-table tbody tr:nth-of-type(odd) th {
            background-color: var(--gris-claro-alt) !important;
        }

        .custom-table tbody tr:hover td,
        .custom-table tbody tr:hover th {
            background-color: #F1F1F1 !important;
        }

        /* Forms Styling */
        .form-label {
            color: var(--gris-oscuro);
            font-weight: 500;
            font-size: 0.9rem;
            margin-bottom: 0.5rem;
        }

        .form-control {
            border: 1px solid var(--gris-claro);
            border-radius: var(--border-radius-btn);
            padding: 0.65rem 1rem;
            color: var(--texto-principal);
            background-color: #FFFFFF;
            transition: var(--transition-smooth);
        }

        .form-control:focus {
            color: var(--texto-principal);
            background-color: #FFFFFF;
            border-color: var(--negro-elegante);
            box-shadow: 0 0 0 3px rgba(17, 17, 17, 0.1);
            outline: 0;
        }

        /* Form wrapper sizing */
        .form-card-container {
            max-width: 600px;
            margin: 0 auto;
        }

        /* Dashboard header styles */
        .dashboard-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
            border-bottom: 1px solid var(--gris-claro);
            padding-bottom: 1rem;
        }

        .dashboard-title {
            margin: 0;
            font-size: 1.75rem;
        }

        .dashboard-subtitle {
            color: var(--gris-medio);
            font-size: 0.9rem;
            margin-top: 0.25rem;
        }
    </style>
</head>
<body>
<div class="main-wrapper">

