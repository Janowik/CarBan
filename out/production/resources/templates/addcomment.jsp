<html xmlns:th="http://www.thymeleaf.org">
<html>
<head th:replace="fragments/header :: header(title='Add Comment')">
</head>
<body>
<section th:replace="fragments/navigation :: navigation"></section>
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <!--/*@thymesVar id="comment" type="com.bellcode.Model.Comment"*/-->
            <form action="#" th:action="@{/addcomment}" method="post" th:object="${comment}">
                <div class="form-group">
                    <input type="text" th:field="*{vin_number}" class="form-control" id="exampleFormControlInput1" placeholder="Vin number">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="Retype Vin number">
                </div>
                <div class="form-group">
                    <textarea th:field="*{text}" class="form-control" id="exampleFormControlTextarea1" rows="8" placeholder="Type your comment..."></textarea>
                </div>

                <button class="btn btn-lg btn-primary" type="submit">Add comment</button><br>

                <!--Warning--->
                <div th:if="${#fields.hasErrors('vin_number')}" class="alert alert-warning" role="alert">
                    <p th:errors="*{vin_number}"></p>
                </div>
                <div th:if="${#fields.hasErrors('text')}" class="alert alert-warning" role="alert">
                    <p th:errors="*{text}"></p>
                </div>
                <!--Warning END--->
            </form>
        </div>
    </div>
</div>
<div th:replace="fragments/footer :: footer"></div>
</body>
</html>
