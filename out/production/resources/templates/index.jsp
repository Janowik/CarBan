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
            <h4 th:text="${comment.text}" class="media-heading"></h4>
            <span>VIN number: </span><strong><span th:text="${comment.vin_number}"></span></strong>
        </div>
    </div>
</div>
<!--Search END-->

<!--No find Vin number-->
<div class="container text-center">
    <div th:if="${emptyListVin}">
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>Sorry...</strong><span th:text="${emptyListVin}"></span>. You want add comment for this number? <a href="user/addcomment" class="alert-link"><strong>Just click there!</strong></a>.
        </div>
    </div>

</div>
<!--No find Vin number END-->

<div th:replace="fragments/footer :: footer"></div>
</body>
</html>