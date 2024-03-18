<%-- 
    Document   : menu
    Created on : Mar 13, 2024, 4:02:55 PM
    Author     : USER
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
        <title>
            FPT University Academic Portal
        </title>
        <link rel="Stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" type="text/css" />
        <link rel="Stylesheet" href="fu.css" type="text/css" />
        <link rel="Stylesheet" href="JavaScript/jquery.css" type="text/css" />
        <link rel="Stylesheet" href="JavaScript/jquery-ui.css" type="text/css" />
        <link rel="Stylesheet" href="JavaScript/jquery.alerts.css" type="text/css" />

        <script src="../JavaScript/jquery.min.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery_002.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery_003.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery-1.8.3.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery-ui.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery.alerts.js" type="text/javascript"></script>

        <link rel="Stylesheet" href="Content/bootstrap.css" type="text/css" />
        <link rel="Stylesheet" href="Content/bootstrap.min.css" type="text/css" />
        <link rel="Stylesheet" href="Content/bootstrap-theme.min.css" type="text/css" />

        <style type="text/css">
            .style1 {
                font-weight: bold;
            }
        </style>

    </head>

    <body>
        <%
            HttpSession sess = request.getSession();
            if(sess.getAttribute("account")==null){
                response.sendRedirect("login.jsp");
            }
        %>
        <div class="container">

            <div class="row">

                <div class="col-md-8">

                    <h1><span>FPT University Academic Portal</span>
                    </h1>

                </div>
                <div class="col-md-4">
                    <table>
                        <tr>
                            <td colspan="2" class="auto-style1"><strong>FAP mobile app (myFAP) is ready at</strong></td>

                        </tr>
                        <tr>
                            <td><a href="https://apps.apple.com/app/id1527723314">
                                    <img src="https://fap.fpt.edu.vn/images/app-store.png"
                                         style="width: 120px; height: 40px" alt="apple store" /></a></td>
                            <td><a href="https://play.google.com/store/apps/details?id=com.fuct">
                                    <img src="https://fap.fpt.edu.vn/images/play-store.png"
                                         style="width: 120px; height: 40px" alt="google store" /></a></td>

                        </tr>
                    </table>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <form name="aspnetForm" method="post" action="./Thongbao.aspx" id="aspnetForm">
                        <div>
                            <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
                                   value="/wEPDwUJOTcwNTg5MzIwD2QWAmYPZBYCAgMPZBYIAgEPFgIeB1Zpc2libGVnFgQCAQ8PFgIeBFRleHQFDW5hbWRuaGUxNzY5MDZkZAIDDw8WAh8BBRggQ0FNUFVTOiBGUFRVLUjDsmEgTOG6oWNkZAIDDxAPFgIfAGhkZBYBZmQCBQ8PFgIfAQVBPGEgaHJlZj0nLi4vU3R1ZGVudC5hc3B4Jz5Ib21lPC9hPiZuYnNwO3wmbmJzcDs8Yj5UaMO0bmcgYsOhbzwvYj5kZAIJDxYCHwBnZGTQujYMXXtBvbKDkkyU831OEK7Qpxk6wOsQb5s6dg9qHA==" />
                        </div>

                        <div>

                            <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F84FD099" />
                        </div>
                        <div id="ctl00_divUser" style="float: right; margin-right: 16px;">
                           
                                <span id="ctl00_lblLogIn" class="label label-success">${account.username}</span> | <a
                                href="login?check=1" class="label label-success">logout</a> |
                            <span id="ctl00_lblCampusName" class="label label-success"> CAMPUS: FPTU-Hòa Lạc</span>
                        </div>

                        <div style="position: absolute; top: -35px; right: 30px; width: 150px;">

                        </div>
                        <ol class="breadcrumb">
                            <li>
                                <span id="ctl00_lblNavigation"><a href='../Student.aspx'>Home</a>&nbsp;|&nbsp;<b>Thông
                                        báo</b></span>
                            </li>
                        </ol>
                        <table>
                            <tr style="border-bottom: 0 none">
                                <td>
                                    <div>




                                        <p></p>

                                        <p>
                                        </p>



                                        Hiện nay có hình thức lừa đảo sửa dữ liệu điểm danh để chiếm đoạt tiền của sinh
                                        viên.
                                        <br />
                                        Các đối tượng có thể giả mạo là giảng viên, cán bộ Nhà trường để gửi thông tin cho
                                        một số sinh viên.
                                        <br />
                                        Vì vậy, sinh viên tuyệt đối không tin và thực hiện hành vi vi phạm nhằm tránh mất
                                        tiền, bị xử lý kỷ luật theo nội quy Nhà trường và có thể bị xử lý hình sự do đây là
                                        hành vi vi phạm pháp luật theo Luật an ninh mạng 2018.
                                        <br />
                                        Đồng thời, ngay khi nhận được các thông tin với nội dung lôi kéo, lừa đảo vui lòng
                                        gửi thông tin tới phòng Dịch vụ sinh viên tại các cơ sở.
                                        <br />
                                        Trân trọng thông báo,
                                        <br />
                                        TRƯỜNG ĐẠI HỌC FPT
                                        <br />
                                        <br/>
                                        <!--student-->
                                        <c:if test="${stu!=null}">
                                            <a href="tbstudent?sid=${stu}">Xem thoi khoa bieu</a><br/>                                      
                                            <a href="score?sid=${stu}">Xem diem</a><br/>
                                        </c:if>

                                        <c:if test="${lec!=null}">
                                            <!--giaovien-->
                                            <a href="timetable?id=${lec}">Diem danh</a><br/>
                                            <a href="#">xem diem cac lop</a><br/>
                                        </c:if>


                                        <br class="Apple-interchange-newline" />
                                        <br class="Apple-interchange-newline" />
                                        <a class="btn btn-success" href="Student.aspx">Trang chủ</a>



                                    </div>
                                </td>
                            </tr>
                            <tr style="border-bottom: 0 none">
                                <td>
                                    <br />

                                    <table width="100%" style="border: 1px solid transparent;" id="cssTable">

                                        <tr>
                                            <td>
                                                <div id="ctl00_divSupport">
                                                    <br />
                                                    <b>Mọi góp ý, thắc mắc xin liên hệ: </b><span
                                                        style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Phòng
                                                        dịch vụ sinh viên</span>: Email: <a
                                                        href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a>.
                                                    Điện thoại: <span class="style1"
                                                                      style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">(024)7308.13.13
                                                    </span>
                                                    <br />

                                                </div>





                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="text-align: center">
                                                    © Powered by <a href="http://fpt.edu.vn" target="_blank">FPT
                                                        University</a>&nbsp;|&nbsp;
                                                    <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a
                                                        href="http://library.fpt.edu.vn"
                                                        target="_blank">library</a>&nbsp;|&nbsp; <a
                                                        href="http://library.books24x7.com" target="_blank">books24x7</a>
                                                    <span id="ctl00_lblHelpdesk"></span>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>

                                </td>
                            </tr>
                        </table>

                    </form>
                </div>
            </div>
        </div>




    </body>

</html>