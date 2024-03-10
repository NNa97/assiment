<%-- 
    Document   : att
    Created on : Mar 11, 2024, 1:54:23 AM
    Author     : USER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title style="color: green;">JSP Page</title>
        <style>
            body {
                background-color: #f0f8ff; /* Light blue color for the background (could be considered a light tone of white) */
            }
            table {
                background-color: #f0fff0; /* Honeydew color for the table (a tone of light green) */
            }
        </style>
    </head>
    <body>
        <form action="att" method="POST">
            <input type="hidden" name="id" value="${param.id}" />
            <table border="1px">
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Presented</td>
                    <td>Note</td>
                    <td>Time</td>
                </tr>
                <c:forEach items="${requestScope.atts}" var="a">
                    <tr>
                        <td>${a.student.id}</td>
                        <td>${a.student.name}</td>
                        <td>
                            <input type="radio" 
                                   ${!a.present?"checked=\"checked\"":""}
                                   name="present${a.student.id}" value="no"/> No
                            <input type="radio" 
                                   ${a.present?"checked=\"checked\"":""}
                                   name="present${a.student.id}" value="yes"/> Yes
                        </td>
                        <td>
                            <input type="text" name="description${a.student.id}" value="${a.description}"/>
                        </td>
                        <td>${a.time}</td>
                    </tr>    
                </c:forEach>
            </table>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>