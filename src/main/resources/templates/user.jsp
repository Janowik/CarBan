<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>USER PAGE</title>
</head>
<body>
USER PAGE

<a href="/logout">Wyloguj</a><br>
<a href="/addcomment">Dodaj komentarz</a>


<!--/*@thymesVar id="message" type="com.bellcode"*/-->
<h1 th:text="${message}"></h1>
</body>
</html>
