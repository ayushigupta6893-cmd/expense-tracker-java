<%@page import="com.entity.Expense"%>
<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.ExpenseDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../component/allcss.jsp" %>

</head>
<body>
<c:if test="${ empty  loginUser}">

<c:redirect url="../login.jsp"> </c:redirect>
</c:if>

<%
int id=Integer.parseInt(request.getParameter("id"));
ExpenseDao dao=new ExpenseDao(HibernateUtil.getSessionFactory());
Expense ex =dao.getExpenseById(id);

%>

<%@ include file="../component/navbar.jsp" %>
<div class= "container p-5">

<div class ="row">

<div class=" col-md-6 offset-md-3">

<div class= "card" >
<div class="card-header">


<p  class="text-center fs-3" >Edit Expense</p>

</div>
<div class ="card-body">
<form action="../updateexpense" method="post">

<div class ="mb-2">
<label> Title</label>
<input type="text" name="title" class=form-control value=<%=ex.getTitle() %>>
</div>


<div class ="mb-2">
<label> Date</label>
<input type="date" name="date" class=form-contro value=<%=ex.getDate() %>>
</div>

<div class ="mb-2">
<label> Time </label>
<input type="Time" name="time" class=form-control value=<%=ex.getTime() %> >
</div>

<div class ="mb-2">
<label> Description </label>
<input type="text" name="description" class=form-control value=  <%=ex.getDescription() %>>
</div>
<div class ="mb-2">
<label> Price </label>
<input type="text" name="price" class=form-control value= <%=ex.getPrice() %>>
</div>

<input type="hidden" name="id" value=<%=ex.getId() %>>

<button class="btn btn-success col-md-12">Update </button>
</form>
</div>



</div>

</div>


</div>




</div>



 

</body>
</html>