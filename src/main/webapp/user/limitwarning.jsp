<%@ page language="java" %>
<html>
<head>
<title>Warning</title>
<style>
  .warn {
     color: red;
     text-align: center;
     font-size: 22px;
     margin-top: 50px;
  }
</style>
</head>
<body>
  <div class="warn">
    ${warning}
    <br><br>
    <a href="view_expense.jsp">View Expenses</a>
  </div>
</body>
</html>
