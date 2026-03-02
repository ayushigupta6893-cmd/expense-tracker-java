<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>limit expense</title>
<%@ include file="../component/allcss.jsp" %>

</head>
<body>
<%@ include file="../component/navbar.jsp" %>

<div class= "container p-5">

<div class ="row">

<div class=" col-md-6 offset-md-3">

<div class= "card sh" >
<div class="card-header">
<div class="card-body">
<form action="../limitexpense" method="post">
<div class ="mb-3">
<label>Limit </label>
<input type="number" name="limit" class=form-control>
</div>


<div class="btn-group">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="defaultDropdown" data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false">
    Period
  </button>
  <ul class="dropdown-menu" aria-labelledby="defaultDropdown">
    <li><a class="dropdown-item" href="DAILY">Set Daily limit</a></li>
    <li><a class="dropdown-item" href="MONTHLY">Set Monthly limit</a></li>
    
  </ul>
</div>
<div class="text-center">
<button class="btn btn-success col-md-3 ">Set</button>

</div>


</form>

</div>

</div>
</div>
</div>
</div>
</div>


</body>
</html>