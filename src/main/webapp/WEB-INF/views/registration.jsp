<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Logowanie</title>
</head>
<body>
    <form name="registrationForm" th:action="@{/registration}" method="post">
        E-mail: <input type="text" name="email" id="email"/>
        Hasło: <input type="password" name="password" id="password"/>
        <input type="submit" value="Zarejestruj" class="button"/>
    </form>
<br>
</body>
</html>