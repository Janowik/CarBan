<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Logowanie</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> </meta>
    <!-- Bootstrap -->
    <link href="webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" media="screen"> </link>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">

        </div>
    </div>
</div>
    <form action="#" th:action="@{/login}" method="post">
        E-mail: <input type="text" name="email" id="email"/><br>
        Hasło: <input type="password" name="password" id="password"/><br>
        <input type="submit" value="Zaloguj" class="btn btn-primary"/><br>
        <div th:if="${param.error}">
            <p> Adres e-mail lub hasło jest niepoprawne, sprawdź je</p>
        </div>
    </form>
<br>
    <script src="webjars/jquery/3.3.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>