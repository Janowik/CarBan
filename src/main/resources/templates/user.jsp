<html xmlns:th="http://www.thymeleaf.org">
<head th:replace="fragments/header :: header(title='My account')">
</head>
<body>
<section th:replace="fragments/navigation :: navigation"></section>

<a href="/logout">Wyloguj</a><br>
<a href="/addcomment">Dodaj komentarz</a>

<!--/*@thymesVar id="message" type="com.bellcode"*/-->
<h1 th:text="${userLogin}"></h1>
<h1 th:text="${userNoLogin}"></h1>

<div th:replace="fragments/footer :: footer"></div>
</body>
</html>
