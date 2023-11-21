<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>

<body>
<h1>Thanks for taking our survey!</h1>

<p>Here is the information that you entered:</p>
<div>
    <label>Email:</label>
    <span>${user.email}</span><br>
    <label>First Name:</label>
    <span>${user.firstName}</span><br>
    <label>Last Name:</label>
    <span>${user.lastName}</span><br>
    <label>Heard From:</label>
    <span>${user.heardFrom}</span><br>
    <label>Updates:</label>
    <span>${user.wantsUpdates}</span><br>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:if test="${user.wantsUpdates == 'Yes'}">
        <label>Contact Via:</label>
        <span>${user.contactVia}</span>
    </c:if>
</div>

<input style="margin-top: 10px;margin-left: -113px" type="button" value="Return" onclick="window.location.href='index.html';">
</body>
</html>