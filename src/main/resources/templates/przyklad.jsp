<html xmlns:th="http://www.thymeleaf.org">
<html>
<head th:replace="fragments/header :: header(title='Przyklad')">
</head>
<body>
<section th:replace="fragments/navigation :: navigation"></section>

<div class="container">

    <div class="row" id="pwd-container">
        <div class="col-md-4"></div>

        <div class="col-md-4">
            <section class="login-form">
                <form method="post" action="#" role="login">
                    <img src="http://i.imgur.com/RcmcLv4.png" class="img-responsive" alt=""/>
                    <input type="email" name="email" placeholder="Email" required class="form-control input-lg"
                           value="joestudent@gmail.com"/>

                    <input type="password" class="form-control input-lg" id="password" placeholder="Password"
                           required=""/>


                    <div class="pwstrength_viewport_progress"></div>


                    <button type="submit" name="go" class="btn btn-lg btn-primary btn-block">Sign in</button>
                    <div>
                        <a href="#">Create account</a> or <a href="#">reset password</a>
                    </div>

                </form>

                <div class="form-links">
                    <a href="#">www.website.com</a>
                </div>
            </section>
        </div>

        <div class="col-md-4"></div>
    </div>
</div>

<div th:replace="fragments/footer :: footer"></div>
</body>
</html>