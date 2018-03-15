<html xmlns:th="http://www.thymeleaf.org">
<html>
<head>
    <title>Logowanie</title>
</head>
<body>
<h1>INDEX</h1>
<a href="/login">Login</a>
<a href="/registration">Rejestracja</a>
<a href="/przyklad">Przyklad</a>

<!--/*@thymesVar id="comment" type="com.bellcode.Model.Comment"*/-->
<form action="#" th:action="@{/search}" th:object="${comment}" method="post">
    Podaj numer vin: <input type="text" th:field="*{vin_number}"/><br>
    <span th:if="${#fields.hasErrors('vin_number')}" th:errors="*{vin_number}">Name Error</span><br>
    <input type="submit" value="Szukaj" class="button"/>
</form>

<div th:if="${not #lists.isEmpty(listVin)}">
    <table>
        <!--/*@thymesVar id="listVin" type="com.bellcode"*/-->
        <tr th:each="comment: ${listVin}">
            <td th:text="${comment.text}"></td>
            <td th:text="${comment.vin_number}"></td>
        </tr>
    </table>
</div>

</body>
</html>