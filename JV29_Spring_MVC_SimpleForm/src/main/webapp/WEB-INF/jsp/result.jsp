<%-- 
    Document   : result
    Created on : Apr 26, 2019, 8:57:03 PM
    Author     : AnhLe
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
        <link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" 
              type="text/css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12">
                    <p>Full Name: ${user.fullName}</p>
                    <p>Password: ${user.password}</p>
                    <p>Detail: ${user.detail}</p>
                    <p>Email: ${user.email}</p>
                    <p>Country: ${user.country}</p>
                    <p>Birth Date: <fmt:formatDate value="${user.birthDate}" pattern="dd/MM/yyyy"/> </p>
                    <p>Smoking: ${user.smoking}</p>
                    <p>Gender: ${user.gender}</p>
                </div>
            </div>
        </div>
    </body>
</html>
