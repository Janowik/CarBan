<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Rejestracja</title>
</head>
<body>
    <!--/*@thymesVar id="user" type="com.bellcode.Model.User"*/-->
    <form action="#" th:action="@{/registration}" method="post" th:object="${user}">
        E-mail: <input type="text" th:field="*{email}"/>
        <span th:if="${#fields.hasErrors('email')}" th:errors="*{email}">Name Error</span><br>
        Hasło: <input type="password" th:field="*{password}"/>
        <span th:if="${#fields.hasErrors('password')}" th:errors="*{password}">Name Error</span><br>
        <input type="submit" value="Zarejestruj" class="button"/>
    </form>
<br>
</body>
</html>