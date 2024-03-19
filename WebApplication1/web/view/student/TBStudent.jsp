<%-- 
    Document   : TBStudent
    Created on : Mar 17, 2024, 8:52:07 PM
    Author     : USER
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .attended {
            color: green;
        }

        .not-attended {
            color: red;
        }
    </style>
</head>


              
              <br/>
<body>
    <table border="1">
        <tbody>
            
            <tr>
                <th>Date</th>
                <th>Lecturer</th>
                <th>Room</th>
                <th>Subject</th>
                <th>Attendance Status</th>
            </tr>
            <c:forEach items="${requestScope.lessions}" var="l">
                <tr>
                    <td>${l.date}</td>
                    <td>${l.lecturer.name}</td>
                    <td>${l.room.name}</td>
                    <td>${l.subject.name}</td>
                    <td>
                        <c:if test="${l.attended}">
                            <span class="attended">Đã điểm danh</span> <!-- Green color for attended -->
                        </c:if>
                        <c:if test="${!l.attended}">
                            <span class="not-attended">Chưa điểm danh</span> <!-- Red color for not attended -->
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
       
</body>
</html>