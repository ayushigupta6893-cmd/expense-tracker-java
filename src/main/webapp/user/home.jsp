<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>

<style>
.d-block {
    height: 420px;
    object-fit: cover;
}
.glass-box {
    background: rgba(255, 255, 255, 0.2);
    backdrop-filter: blur(10px);
    border-radius: 15px;
    border: 1px solid rgba(255,255,255,0.3);
    padding: 25px;
    box-shadow: 0 4px 20px rgba(0,0,0,0.3);
}
</style>

<meta charset="UTF-8">
<title>User Home</title>

<%@ include file="../component/allcss.jsp" %>
</head>

<body style="
    background: url('https://img.freepik.com/free-photo/abstract-luxury-blur-grey-color-gradient-used-as-background-studio-wall-display-your-products_1258-103947.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
">

<c:if test="${empty loginUser}">
    <c:redirect url="../login.jsp"></c:redirect>
</c:if>

<%@ include file="../component/navbar.jsp" %>

<!-- ===== Transparent Welcome Box ===== -->

<div class="container mt-4">
    <div class="glass-box text-center text-white">
        <h2>Welcome, ${loginUser.name} 👋</h2>
        <p class="mt-2">Manage your expenses easily using Add Expense & View Expense options from the menu.</p>
    </div>
</div>

<!-- ===== Carousel Section ===== -->
<div class="container mt-4">

<div id="carouselExampleCaptions" class="carousel slide shadow-lg rounded" data-bs-ride="carousel">

  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"></button>
  </div>

  <div class="carousel-inner rounded">

    <div class="carousel-item active">
      <img src="https://images.unsplash.com/photo-1563013544-824ae1b704d3" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Your Expenses, Organized</h5>
        <p>Track your expenses with ease.</p>
      </div>
    </div>

    <div class="carousel-item">
      <img src="https://images.unsplash.com/photo-1554224154-22dec7ec8818" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Easy to Use</h5>
        <p>Just add your daily expenses and view them anytime.</p>
      </div>
    </div>

    <div class="carousel-item">
      <img src="https://images.unsplash.com/photo-1604594849809-dfedbc827105" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Monitor Your Spending</h5>
        <p>Make better financial decisions.</p>
      </div>
    </div>

  </div>

  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>

  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>

</div>

</body>
</html>
