<html xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
<head>
    <title>Logowanie</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </meta>
    <!-- Bootstrap -->
    <link href="webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" media="screen">
    </link>
</head>
<body>
<navigation th:fragment="navigation">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <span class="navbar-brand">CARBAN</span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home</a>
                </li>
            </ul>
            <div class="btn-group ml-auto">
                <a sec:authorize="isAnonymous()" href="/registration" class="btn btn-outline-light" role="button">Register</a>
                <a sec:authorize="isAuthenticated()" href="/logout" class="btn btn-outline-light"
                   role="button">Logout</a>
                <a href="/user" class="btn btn-outline-light" role="button">My Account</a>
            </div>
        </div>
    </nav>
<<<<<<< Updated upstream
=======

    <!--LOGIN/REGISTER-->
    <!-- LoginModal -->
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginModalLabel">Register</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" th:action="@{/login}" method="post">
                        E-mail: <input type="text" name="email" id="email"/><br>
                        Hasło: <input type="password" name="password" id="password"/><br>
                        <input type="submit" value="Zaloguj" class="btn btn-primary"/><br>
                        <div th:if="${param.error}">
                            <p> Adres e-mail lub hasło jest niepoprawne, sprawdź je</p>
                        </div>
                        <div th:if="${existUser}" class="alert alert-danger" role="alert">
                            <span th:text="${existUser}"></span>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <!-- RegisterModal -->
    <div class="modal fade" id="registrationModal" tabindex="-1" role="dialog" aria-labelledby="registrationModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="registrationModalLabel">Login</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!--/*@thymesVar id="user" type="com.bellcode.Model.User"*/-->
                    <form action="#" th:action="@{/registration}" method="post" th:object="${user}">
                        <div class="form-group">
                            <label th:if="${#fields.hasErrors('email')}" th:errors="*{email}" for="formGroupExampleInput"></label>
                            <input type="text" th:field="*{email}" class="form-control" id="formGroupExampleInput"
                                   placeholder="E-mail">
                        </div>
                        <div class="form-group">
                            <label th:if="${#fields.hasErrors('password')}" th:errors="*{password}" for="formGroupExampleInput2"></label>
                            <input type="text" th:field="*{password}" class="form-control" id="formGroupExampleInput2"
                                   placeholder="Password">
                        </div>
                        <div class="modal-footer">
                            <input type="submit" value="Zarejestruj" class="btn btn-success"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

>>>>>>> Stashed changes
</navigation>
</body>
</html>