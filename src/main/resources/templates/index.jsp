<html xmlns:th="http://www.thymeleaf.org">
<html>
<head th:replace="fragments/header :: header(title='Car Ban')">
</head>
<body>
<section th:replace="fragments/navigation :: navigation"></section>
<!--Input-->
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <!--/*@thymesVar id="comment" type="com.bellcode.Model.Comment"*/-->
            <form action="#" th:action="@{/search}" th:object="${comment}" method="post" class="form-inline justify-content-center">
                <div class="input-group input-group-lg">
                    <input type="text" th:field="*{vin_number}" class="form-control" placeholder="VIN Number">
                    <span th:if="${#fields.hasErrors('vin_number')}" th:errors="*{vin_number}">Name Error</span>
                    <div class="input-group-append">
                        <input type="submit" value="Szukaj" class="btn btn-success"/><br>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--Input END-->
<!--Search-->
<div th:if="${not #lists.isEmpty(listVin)}" class="container" >
    <div th:each="comment: ${listVin}" class="media comment-box">
        <div class="media-left">
            <a href="#">
                <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
            </a>
        </div>
        <div class="media-body">
            <h4 th:text="${comment.vin_number}" class="media-heading"></h4>
            <p th:text="${comment.text}"></p>
        </div>
    </div>
</div>
<!--Search END-->

<div th:replace="fragments/footer :: footer"></div>
</body>
</html>