<html xmlns:th="http://www.thymeleaf.org">
<html>
<head th:replace="fragments/header :: header(title='Car Ban')">
</head>
<body>
<section th:replace="fragments/navigation :: navigation"></section>

<!--/*@thymesVar id="comment" type="com.bellcode.Model.Comment"*/-->
<form action="#" th:action="@{/search}" th:object="${comment}" method="post" class="form-inline justify-content-center">
    <div class="input-group input-group-lg">
        <input type="text" th:field="*{vin_number}" class="form-control" placeholder="VIN Number" >
        <span th:if="${#fields.hasErrors('vin_number')}" th:errors="*{vin_number}">Name Error</span>
        <div class="input-group-append">
            <input type="submit" value="Szukaj" class="btn btn-success"/><br>
        </div>
    </div>
</form>

<div th:if="${not #lists.isEmpty(listVin)}">
    <table>
        <!--/*@thymesVar id="listVin" type="com.bellcode"*/-->
        <tr th:each="comment: ${listVin}">
            <td th:text="${comment.text}" ></td>
            <td th:text="${comment.vin_number}" ></td>
        </tr>
    </table>
</div>

<div th:replace="fragments/footer :: footer"></div>
</body>
</html>