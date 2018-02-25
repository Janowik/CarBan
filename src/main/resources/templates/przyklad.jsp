<html xmlns:th="http://www.thymeleaf.org">
<html>
<head th:replace="fragments/header :: header(title='Przyklad')">
</head>
<body>
<section th:replace="fragments/navigation :: navigation"></section>

<h1>Przykład</h1>

<div th:replace="fragments/footer :: footer"></div>
</body>
</html>