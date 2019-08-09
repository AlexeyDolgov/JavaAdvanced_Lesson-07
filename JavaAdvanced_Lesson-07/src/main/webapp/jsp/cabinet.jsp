<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Личный кабинет пользователя</title>
</head>

<body>
    <h1>${userFirstName} ${userLastName}, Вы успешно ${userAction} в интернет-магазине!</h1>
    <a href="${pageContext.request.contextPath}/index.jsp">На главную</a>
</body>

</html>
