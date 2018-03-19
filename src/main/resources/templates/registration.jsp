<html xmlns:th="http://www.thymeleaf.org">
<html>
<head th:replace="fragments/header :: header(title='Registration')">
</head>
<body>
<section th:replace="fragments/navigation :: navigation"></section>
<div class="container">

    <div class="wrapper">
        <!--/*@thymesVar id="user" type="com.bellcode.Model.User"*/-->
        <form action="#" th:action="@{/registration}" method="post" th:object="${user}" class="form-signin" >
            <h2 class="form-signin-heading">Register</h2>

            <input type="text" class="form-control" th:field="*{email}" placeholder="Email Address" />
            <input type="password" class="form-control" th:field="*{password}" placeholder="Password" />

            <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button><br>

            <!--Warning--->
            <div th:if="${#fields.hasErrors('email')}" class="alert alert-warning" role="alert">
                <p th:errors="*{email}"></p>
            </div>
            <div th:if="${#fields.hasErrors('password')}" class="alert alert-warning" role="alert">
                <p th:errors="*{password}"></p>
            </div>
            <div th:if="${existUser}" class="alert alert-danger" role="alert">
                <p th:text="${existUser}"></p>
            </div>
            <!--Warning END--->
        </form>
    </div>
</div>

<div th:replace="fragments/footer :: footer"></div>
</body>
</html>