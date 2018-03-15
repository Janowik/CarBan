<html xmlns:th="http://www.thymeleaf.org">
<html>
<head th:replace="fragments/header :: header(title='Registration')">
</head>
<body>
<section th:replace="fragments/navigation :: navigation"></section>

<!--/*@thymesVar id="user" type="com.bellcode.Model.User"*/-->
<form action="#" th:action="@{/registration}" method="post" th:object="${user}">
    E-mail: <input type="text" th:field="*{email}"/>
    <span th:if="${#fields.hasErrors('email')}" th:errors="*{email}">Name Error</span><br>
    Hasło: <input type="password" th:field="*{password}"/>
    <span th:if="${#fields.hasErrors('password')}" th:errors="*{password}">Name Error</span><br>
    <input type="submit" value="Zarejestruj" class="button"/>
</form>

<div th:replace="fragments/footer :: footer"></div>
</body>
</html>