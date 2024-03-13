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
        
            .container {
                margin: 0;
                padding: 0;
                font-family: 'Arial', sans-serif;
                background-color: #e9eef3;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .login-container {
                background: #fff;
                padding: 2em;
                border-radius: 10px;
                box-shadow: 0 0 15px rgba(0,0,0,0.1);
                width: 350px;
                text-align: center;
            }

            .login-container h2 {
                margin-bottom: 1em;
            }

            .input-group {
                margin-bottom: 1em;
                text-align: left;
            }

            .input-group label {
                display: block;
                margin-bottom: .5em;
                color: #333;
            }

            .input-group input {
                width: calc(100% - 22px);
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                margin-bottom: 10px;
            }

            .login-container form button {
                width: 100%;
                padding: 10px 0;
                border: none;
                background-color: #0056b3;
                color: white;
                border-radius: 5px;
                cursor: pointer;
            }

            .login-container form button:hover {
                background-color: #003d82;
            }

            select {
                color: #3399ff; /* Đổi màu chữ */
                font-family: Arial, sans-serif; /* Chọn font chữ */
                border-radius: 10px; /* Bo tròn viền */
                padding: 5px; /* Khoảng cách giữa viền và nội dung */
                background-color: lightgrey; /* Đổi màu nền */
            }

            option {
                background-color: lightblue; /* Đổi màu nền các option */
            }
            .links {
                margin-top: 1em;
                font-size: 0.9em;
            }

            .links a {
                color: #0056b3;
                text-decoration: none;
                margin-right: 0.5em;
            }
            .haa{
                display: flex;justify-content: space-evenly
            }



        
    </style>
</head>
<body>
    <h1>Timetable</h1>
    <div class ="haa">
        <h1><span>FPT University Academic Portal</span>
                </h1>

            
            <div class="col-md-4">
                <table>
                    <tr>
                        <td colspan="2" class="auto-style1"><strong>FAP mobile app (myFAP) is ready at</strong></td>

                    </tr>
                    <tr>
                        <td><a href="https://apps.apple.com/app/id1527723314">
                            <img src="https://fap.fpt.edu.vn/images/app-store.png" style="width: 120px; height: 40px" alt="apple store" /></a></td>
                        <td><a href="https://play.google.com/store/apps/details?id=com.fuct">
                            <img src="https://fap.fpt.edu.vn/images/play-store.png" style="width: 120px; height: 40px" alt="google store" /></a></td>

                    </tr>
                </table>
            </div>
        </div>
   
    
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
                                ${les.group.name} - ${les.group.subject.name} - ${les.room.name}
                                <a href="att?id=${les.id}">
                                 <c:if test="${les.attended}">
                                            Edit
                                        </c:if>
                                        <c:if test="${!les.attended}">
                                            Take
                                        </c:if>
                                </a>
                            </c:if>
                        </c:forEach>
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
        
</body>
</html>