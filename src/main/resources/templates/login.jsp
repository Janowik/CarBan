<html xmlns:th="http://www.thymeleaf.org">
<html>
<head th:replace="fragments/header :: header(title='Login')">
</head>
<body>
<section th:replace="fragments/navigation :: navigation"></section>

<form action="#" th:action="@{/login}" method="post">
    E-mail: <input type="text" name="email" id="email"/><br>
    Hasło: <input type="password" name="password" id="password"/><br>
    <input type="submit" value="Zaloguj" class="btn btn-primary"/><br>
    <div th:if="${param.error}">
        <p> Adres e-mail lub hasło jest niepoprawne, sprawdź je</p>
    </div>
</form>

<div th:replace="fragments/footer :: footer"></div>
</body>
</html>