<%-- 
    Document   : user-form
    Created on : Apr 26, 2019, 7:22:31 PM
    Author     : AnhLe
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" 
              type="text/css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12" style="text-align: center">
                    <h2>Register</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12">
                    <mvc:form method="post" action="${pageContext.request.contextPath}/result" modelAttribute="user" 
                              class="form-horizontal">
                        <div class="form-group">
                            <mvc:label class="control-label col-sm-2" path="fullName">
                                Full Name</mvc:label>
                                <div class="col-sm-8">
                                <mvc:input path="fullName" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <mvc:label class="control-label col-sm-2" path="password">
                                Password</mvc:label>
                                <div class="col-sm-8">
                                <mvc:password path="password" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <mvc:label class="control-label col-sm-2" path="detail">
                                Detail</mvc:label>
                                <div class="col-sm-8">
                                <mvc:textarea path="detail" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <mvc:label class="control-label col-sm-2" path="email">
                                Email</mvc:label>
                                <div class="col-sm-8">
                                <mvc:input type="email" path="email" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <mvc:label class="control-label col-sm-2" path="birthDate">
                                Birth Date</mvc:label>
                                <div class="col-sm-8">
                                <mvc:input type="date" path="birthDate" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <mvc:label path="smoking" class="col-sm-2 control-label">
                                Smoking</mvc:label>
                                <div class="col-sm-8">
                                <mvc:checkbox path="smoking" />
                            </div>
                        </div>
                        <div class="form-group">
                            <mvc:label path="country" class="col-sm-2 control-label">
                                Country</mvc:label>
                                <div class="col-sm-8">
                                <mvc:select class="form-control" path="country" 
                                            items="${countries}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <mvc:label path="gender" class="col-sm-2 control-label">
                                Gender</mvc:label>
                                <div class="col-sm-8">
                                <mvc:radiobuttons path="gender" items="${genders}" />
                            </div>
                        </div>
                        <div class="form-group" style="text-align: center">
                            <mvc:button class="btn btn-primary" type="submit">
                                Register</mvc:button>
                            </div>
                    </mvc:form>
                </div>
            </div>
        </div>
    </body>
</html>
