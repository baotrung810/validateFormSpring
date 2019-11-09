<%-- 
    Document   : user-form-html
    Created on : May 6, 2019, 6:36:05 PM
    Author     : OS
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" type="text/css" rel="stylesheet"/>
         <style >
           .ui-required, ui-error{
               color: red;
           }  
         </style>
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
                    <mvc:form method="post" action="${pageContext.request.contextPath}/result" modelAttribute="user" class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-sm-2">FullName
                                <span class="ui-required">(*)</span>
                            </label>
                          
                            <div class="col-sm-8">
                                <input name="fullName" type="text" class="form-control"/>
                                <mvc:errors path="fullName" cssClass="ui-error"/>
                            </div>
                        </div>
                        
                        <div class="form-group">    
                            <label class="control-label col-sm-2">Password
                                 <span class="ui-required">(*)</span>
                            </label>
                            <div class="col-sm-8">
                                <input name="password" type="password" class="form-control"/>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label col-sm-2" >Detail: </label>
                            <div class="col-sm-8">
                                <textarea name="detail" type="text" class="form-control"></textarea>
                            </div>
                        </div>  
                        
                        <div class="form-group">    
                            <label class="control-label col-sm-2" >Email
                                 <span class="ui-required">(*)</span>
                            </label>
                            <div class="col-sm-8">
                                <input name="email" type="email" class="form-control"/>
                                 <mvc:errors path="email" cssClass="ui-error"/>
                            </div>
                        </div>  
                        
                         <div class="form-group">    
                            <label class="control-label col-sm-2">BirthDate</label>
                            <div class="col-sm-8">
                                <input type="Date" name="birthDate" class="form-control"/>
                            </div>
                        </div> 
                        
                         <div class="form-group">    
                            <label class="control-label col-sm-2 checkbox" >Smoking</label>
                            <div class="col-sm-8">
                                <label>  <input name="smoking"  type="checkbox"/> </label>
                            </div>
                        </div> 
                        
                        <div class="form-group">    
                            <label class="control-label col-sm-2" >Country:</label>
                            <div class="col-sm-8">
                            <select name="country" class="form-control">
                                <c:forEach items="${countries}" var="country">
                                    <option value="${country}">${country}</option>
                                </c:forEach>
                            </select>    
                            </div>
                        </div>   
                        
                         <div class="form-group">    
                            <label class="control-label col-sm-2" >Gender</label>
                            <div class="col-sm-10">
                            
                                <c:forEach items="${genders}" var="gender">
                                    <label class="radio-inline">
                                        <input type="radio" value="${gender}" name="gender"/>${gender}
                                    </label>    
                                </c:forEach>
                               
                            </div>
                        </div> 
                        
                        <div class="form-group" style="text-align: center">    
                            <button class="btn btn-primary" type="submit">Submit</button>
                         </div>
                    </mvc:form>
                </div>
            </div>
        </div>    
    </body>
</html>