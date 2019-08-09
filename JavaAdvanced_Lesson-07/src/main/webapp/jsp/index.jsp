<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Интернет-магазин журналов</title>
</head>

<body>
    <jsp:include page="header.jsp"></jsp:include>

    <h1>Добро пожаловать в интернет-магазин журналов!</h1>

    <form>
        <button type="button" onClick="location.href='register.jsp'">Зарегистрироваться</button>
        <button type="button" onClick="location.href='login.jsp'">Войти</button><br>
    </form>

    <jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
