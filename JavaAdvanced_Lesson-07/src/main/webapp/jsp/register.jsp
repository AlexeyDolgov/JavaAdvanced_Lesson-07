<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Форма регистрации</title>
</head>

<body>
    <jsp:include page="header.jsp"></jsp:include>

    <h1>Форма регистрации</h1>
    <form action="registering" method="post">
        <input name="firstName" type="text" placeholder="Имя"><br><br>
        <input name="lastName" type="text" placeholder="Фамилия"><br><br>
        <input name="email" type="text" placeholder="Логин"><br><br>
        <input name="password" type="password" placeholder="Пароль"><br><br>
        <input name="accessLevel" type="radio" id="user" value="user" checked>
        <label for="user">Пользователь</label><br>
        <input name="accessLevel" type="radio" id="admin" value="admin">
        <label for="admin">Администратор</label><br><br>
        <input type="submit" value="Отправить">
    </form>

    <jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
