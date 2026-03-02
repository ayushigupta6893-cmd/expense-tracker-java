<%@page import="com.db.HibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>



<%@ include file="component/allcss.jsp" %>
<style>
.d-block{
  height: 400px;
  width:100;
 
}
</style>

<meta charset="UTF-8">
<title>Home page</title>

<link rel="stylesheet" href="../component/cards.css">
</head>
<body>
<%@ include file="component/navbar.jsp" %>

<%  SessionFactory factory= HibernateUtil.getSessionFactory();

%> 



<div class="hero-section">
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/img3.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Smart expense tracking</h5>
        <p>Stay aware of every rupee spent  </p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="image/img.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Organize by Categories</h5>
        <p>Food, Travel, Shopping—keep your expenses neatly categorized.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="image/img2.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Financial Dashboard</h5>
        <p>Track trends & improve financial planning</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


    
    <div class="hero-content text-center">
        <h1>Track Your Money, Build Your Future</h1>
        <p>Manage your expenses easily with smart insights & organized categories.</p>
        <a href="register.jsp" class="btn btn-success">Get Started</a>
    </div>
</div>


 <!-- ================= FEATURE CARDS ================= -->
<section class="py-5">
    <div class="container">
        <div class="row g-4 text-center">

            <!-- Card 1 -->
            <div class="col-md-4">
                <div class="p-4 shadow feature-card">
                    <i class="fa-solid fa-square-plus" style="font-size: 45px; color: #198754;"></i>
                    <h4 class="fw-bold mt-2">Add Expense</h4>
                    <p>Record your daily spending with categories and quick notes.</p>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="col-md-4">
                <div class="p-4 shadow feature-card">
                    <i class="fa-solid fa-chart-column" style="font-size: 45px; color: #198754;"></i>
                    <h4 class="fw-bold mt-2">View Expenses</h4>
                    <p>View and filter all transactions in one clean dashboard.</p>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="col-md-4">
                <div class="p-4 shadow feature-card">
                    <i class="fa-solid fa-calendar-days" style="font-size: 45px; color: #198754;"></i>
                    <h4 class="fw-bold mt-2">Monthly Report</h4>
                    <p>Analyze your spending habits with smart monthly summaries.</p>
                </div>
            </div>

        </div>
    </div>
</section>
  
 
 
 
</body>




    </html>