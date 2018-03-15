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
</navigation>
</body>
</html>