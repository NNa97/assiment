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
    <body class="container">
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
        <td>
                                            <p style="text-align: center">
                                                © Powered by <a href="http://fpt.edu.vn" target="_blank">FPT University</a>&nbsp;|&nbsp;
        <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
                                                <span id="ctl00_lblHelpdesk"></span>
                                            </p>
                                        </td>
    </body>
</html>