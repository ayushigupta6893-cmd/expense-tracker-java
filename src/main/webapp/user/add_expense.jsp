<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Expense</title>

<%@ include file="../component/allcss.jsp" %>
<link rel="stylesheet" href="../component/register.css">




</head>
<body>

<c:if test="${ empty  loginUser}">

<c:redirect url="../login.jsp"> </c:redirect>
</c:if>

<%@ include file="../component/navbar.jsp" %>

<div class= "container p-5">

<div class ="row">

<div class=" col-md-6 offset-md-3">

<div class= "card" >
<div class="card-header">


<p  class="text-center fs-3" >Add Expense</p>
<c:if test="${not empty  msg}">
<p class="text-center text-danger"> ${msg}</p>
<c:remove var="msg"/>
</c:if>

</div>
<div class ="card-body">
<form action="../save expense" method="post">

<div class ="mb-2">
<label> Title</label>
<input type="text" name="title" class=form-control>
</div>


<div class ="mb-2">
<label> Date</label>
<input type="date" name="date" class=form-control>
</div>

<div class ="mb-2">
<label> Time </label>
<input type="Time" name="time" class=form-control>
</div>

<div class ="mb-2">
<label> Description </label>
<input type="text" name="description" class=form-control>
</div>
<div class ="mb-2">
<label> Price </label>
<input type="text" name="price" class=form-control>
</div>
<button class="btn btn-success col-md-12">Add </button>
</form>
</div>



</div>

</div>


</div>




</div>



 
 

</body>
</html>