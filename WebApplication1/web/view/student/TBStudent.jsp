<%-- 
    Document   : TBStudent
    Created on : Mar 17, 2024, 8:52:07 PM
    Author     : USER
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <input type="hidden" value="${param.sid}" name="sid"/>
        </form>
        <table border="1">

            <tbody>
                <tr>
                    <td>date</td>
                    <td>leturer</td>
                    <td>room</td>
                    <td>subject</td>
                    <td>da diem danh chua</td>
                </tr>
                <c:forEach items="${requestScope.lessions}" var="l">
                    <tr>
                        <td>${l.date}</td>
                        <td>${l.lecturer.name}</td>
                        <td>${l.room.name}</td>
                        <td>${l.subject.name}</td>
                        <td>
                            <c:if test="${les.attended}">
                                Da diem danh
                            </c:if>
                            <c:if test="${!les.attended}">
                                khong duoc diem danh
                            </c:if>
                        </td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>




        </
    </body>
</html>
