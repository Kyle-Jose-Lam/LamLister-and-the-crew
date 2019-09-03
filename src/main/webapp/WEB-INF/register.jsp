<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Please fill in your information.</h1>
        <c:if test="${sessionScope.error != null}">
            <p style="color:red;font-weight:bold">${sessionScope.error}</p>
        </c:if>

        <c:if  test="">

            <form action="">
                <input type="text">
                <input type="text">
                <button></button>
            </form>


        </c:if>
        <c:if test="!=">

            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <form method="post" action="/da">
                <button type="submit" name="button" value="${ad.id}">View Ad</button>
            </form>


        </c:if>


        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text" value="${sessionScope.failed.username}">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text" value="${sessionScope.failed.email}">
            </div>
            <div class="form-group">
                <label for="name">Full Name</label>
                <input id="name" name="name" class="form-control" type="text" value="${sessionScope.failed.full_name}">
            </div>
            <div class="form-group">
                <label for="address">Address(Street,City,State,Zipcode)</label>
                <input id="address" name="address" class="form-control" type="text" value="${sessionScope.failed.address}">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
</body>
</html>
