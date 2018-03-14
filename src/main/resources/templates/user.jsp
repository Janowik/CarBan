<html xmlns:th="http://www.thymeleaf.org">
<html>
<head th:replace="fragments/header :: header(title='My account')">
</head>
<body>
<section th:replace="fragments/navigation :: navigation"></section>

    <a href="/logout">Wyloguj</a><br>
    <a href="/addcomment">Dodaj komentarz</a>

    <!--/*@thymesVar id="message" type="com.bellcode"*/-->
    <h1 th:text="${message}"></h1>

<div th:replace="fragments/footer :: footer"></div>
</body>
</html>
<html xmlns:th="http://www.thymeleaf.org">
