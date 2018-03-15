<html xmlns:th="http://www.thymeleaf.org">
<html>
<head th:replace="fragments/header :: header(title='Login')">
</head>
<body>
<section th:replace="fragments/navigation :: navigation"></section>
<div class="container">

    <div class="wrapper">
        <form action="#" th:action="@{/login}" method="post" class="form-signin" >
            <h2 class="form-signin-heading">Please login</h2>

            <input type="text" class="form-control" name="email" id="email" placeholder="Email Address" />
            <input type="password" class="form-control" name="password" id="password" placeholder="Password" />

            <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button><br>
            <!--Warning-->
            <div th:if="${param.error}" class="alert alert-danger" role="alert">
                <p> Email or password is incorrect.</p>
            </div>
            <!--Warning END--->
        </form>
    </div>
</div>

<div th:replace="fragments/footer :: footer"></div>
</body>
</html>