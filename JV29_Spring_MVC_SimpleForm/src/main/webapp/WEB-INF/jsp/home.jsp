<%-- 
    Document   : home
    Created on : Apr 26, 2019, 7:03:14 PM
    Author     : AnhLe
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Home page</h1>
        <a href="<c:url value="/register"/>">Register</a> <br/>
        <a href="${pageContext.request.contextPath}/register">Register1</a>
    </body>
</html>
