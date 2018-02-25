<html xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title>Logowanie</title>
</head>
<body>
    <form name="loginForm" th:action="@{/login}" method="post">

        <p th:if="${loginError}" class="error">Wrong user or password</p>
        <div th:if="${param.error}">
            <p> Username or Password invalid, please verify</p>
        </div>
        E-mail: <input type="text" name="email" id="email"/>
        Hasło: <input type="password" name="password" id="password"/>
        <input type="submit" value="Zaloguj" class="button"/>
    </form>
<br>
</body>
</html>