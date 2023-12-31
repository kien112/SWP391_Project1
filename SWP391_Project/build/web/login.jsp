<%-- 
    Document   : login
    Created on : May 21, 2023, 2:13:29 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .all{
                border: 2px solid black;
                width: fit-content;
                padding: 40px;
                text-align: center;
                margin:10% 0 0 40%;
                font-size: 20px;
                margin-bottom: 50px;
            }
            .all button{
                margin-top:5px;
                padding-left: 20px;
                width: 30%;
            }

            .up{
                width: 100%;
                display: block;
                border: none;
                border-bottom: 1px solid #999;
                padding: 6px 30px;
                font-family: Poppins;
                box-sizing: border-box;

            }
            .PU{
                border:  none;
                padding-left: 20px;
            }
            
            
        </style>
    </head>
    <body style="align-items: center;">
        <jsp:include page="header.jsp"/>
        <div class="all">
            <form method="POST" action="login">
                <div class="up">
                    <label>Username</label>
                    <br><input type="text" name="username" required="" class="PU">
                </div>
                <div class="up">
                    <label>Password</label>
                    <br><input type="password" name="password"  required="" class="PU">
                </div>
                <button>Login</button>
                <a href="register.jsp" class="tm-register">
                    <br><i>Haven't have account yet?</i>
                </a>

                ${message}
            </form>
        </div>
        <jsp:include page="footer.jsp"/>

    </body>
</html>