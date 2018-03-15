<html xmlns:th="http://www.thymeleaf.org">
<head th:fragment="header">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </meta>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title th:text="${title}">Title page</title>
    <style>
        body {
            background-color: #e0e0e0;
        }

        footer {
            color: #e0e0e0;
            padding: 50px;
        }
    </style>
</head>
<body>
</body>
</html>