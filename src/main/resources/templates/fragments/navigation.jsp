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
        <span class="navbar-brand"><strong>CARBAN</strong><sub>ALPHA v0.65</sub></span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#" data-toggle="modal" data-target="#aboutModal">About</a>
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
    <!-- Modal -->
    <div class="modal fade" id="aboutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">About application</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <span>This app is created for programming learning:</span>
                    <strong><p>Spring framework, Hibernate, MySQL, Bootstrap and more.</p></strong>
                    <p>If you have any questions, write to me at the following address:</p>
                    <a href="mail:to#">jacek.nowak.jn@gmail.com</a><br>
                    <p>Regards Jacek Nowak</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal END-->
</navigation>
</body>
</html>