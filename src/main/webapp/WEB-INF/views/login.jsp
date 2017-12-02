<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Logowanie</title>
</head>
<body>
<h1>${message}</h1>
    <form method="post">
        Podaj login: <input type="text" name="login"/>
        Podaj haslo: <input type="password" name="password"/>
        <input type="submit"/>
    </form>
</body>
</html>