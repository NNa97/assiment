<%-- 
    Document   : login
    Created on : Feb 23, 2024, 1:16:52 PM
    Author     : USER
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Academic Portal Login</title>
        <style>
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
        <div class="container">
            <div class="login-container">
            <h2>Academic Portal Login</h2>
            <form action="login" method="post">
                <div class="input-group">
                    <label for="campus">Campus</label>

                    <select  name="campus">
                        <option value="hanoi">Hà Nội</option>
                        <option value="hochiminh">Hồ Chí Minh</option>
                        <option value="danang">Đà Nãng</option>
                        <option value="quynhon">Quy Nhơn</option>
                    </select>

                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit">Login</button>
            </form>

        </div>
            
        </div> 
          <td>
                                            <p style="text-align: center">
                                                © Powered by <a href="http://fpt.edu.vn" target="_blank">FPT University</a>&nbsp;|&nbsp;
        <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
                                                <span id="ctl00_lblHelpdesk"></span>
                                            </p>
                                        </td>
    </body>
</html>