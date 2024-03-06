<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Timetable</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #f2f2f2;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 20px;
            text-align: left;
        }
        th {
            background-color: blue; /* Màu xanh lam */
            color: white;
        }
        tr:nth-child(even) {
            background-color: white; /* Màu trắng */
        }
    </style>
</head>
<body>
    <h1>Timetable</h1>
   
    
    <table>
        <tr>
            
            <th>
           <form action="timetable" method="GET">
        <input type="hidden" value="${param.id}" name="id"/>
        From: <input type="date" name="from" value="${requestScope.from}"/> -
        <input type="date" name="to" value="${requestScope.to}"/>
        <input type="submit" value="View"/>
    </form>
            </th>
            <c:forEach items="${requestScope.dates}" var="d">
                <th>
                    (<fmt:formatDate pattern="E" value="${d}" />)
                    ${d}
                </th>
            </c:forEach>
        </tr>
        
        <c:forEach items="${requestScope.slots}" var="slot">
            <tr>
                <td>${slot.name}</td>
                <c:forEach items="${requestScope.dates}" var="d">
                    <td>
                        <c:forEach items="${requestScope.lessions}" var="les">
                            <c:if test="${les.date eq d and les.slot.id eq slot.id}">
                                ${les.group.name} - ${les.group.subject.name}
                                <a href="att?id=${les.id}">Take</a>
                            </c:if>
                        </c:forEach>
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
        
</body>
</html>