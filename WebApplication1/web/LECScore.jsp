<%-- 
    Document   : LECScore
    Created on : Mar 19, 2024, 12:54:10 AM
    Author     : USER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 20px;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        form {
            margin-top: 20px;
            text-align: center;
        }
        select {
            padding: 5px;
            width: 200px;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #2187e7;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f9f9f9;
        }
    </style>
    <body>
        <form action="lescore" method="get">
          
           Student: <select  name="sid"><br>
                <c:forEach items="${requestScope.student}" var="c">
                    <option value="${c.id}">${c.name}</option>
                </c:forEach>                 
            </select><br>
          
          
         
          
           Subject: <select  name="subid"><br>
                <c:forEach items="${requestScope.subject}" var="s">
                    <option value="${s.id}">${s.name}</option>
                </c:forEach>
                  
            </select><br>
          
            <button type="submit">Submit</button>
          
            
           </form>
     <h1>Student Scores</h1>
     
    <table border="2">
          <tr>
            <th>Student Name</th>
            <th>Subject Name</th>
            <th>Active Learning</th>
            <th>PT1</th>
            <th>PT2</th>
            <th>Project</th>
            <th>Final Exam</th>
            <th>Average</th>
        </tr>
       
        <tr>
            <th >${requestScope.score.nameStudent}  </th>
            <th >${requestScope.score.nameSuject}</th>
            <th >${requestScope.score.active}</th>
            <th >${requestScope.score.pt1}</th>
            <th >${requestScope.score.pt2}</th>
            <th >${requestScope.score.project}</th>
            <th >${requestScope.score.finalExam}</th>
            <th >${requestScope.score.avg}</th>
        </tr>
        
    </table>
   
</body>
</html>
