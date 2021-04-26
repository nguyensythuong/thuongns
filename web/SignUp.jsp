<%-- 
    Document   : SignUp
    Created on : Jan 18, 2021, 1:02:27 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/SignUp.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div id="login-box" >
            <form action="SignUpControl" method="post">
                <div class="left">
                    <h1>Sign up</h1>
                    <input type="text" name="user" placeholder="Username" />
                    <input type="text" name="email" placeholder="E-mail" />
                    <input type="text" name="phone" placeholder="Phone Number" />
                    <input type="text" name="address" placeholder="Address" />
                    <input type="password" name="pass" placeholder="Password" />
                    <input type="password" name="repass" placeholder="Retype password" />
                    <input type="submit" name="signup_submit" value="Sign me up" />
                </div>
            </form>
            <!--                <div class="right">
                                <img src="image/Poster.PNG" alt="" width="250" height="350"/>
                                                <span class="loginwith">Sign in with<br />social network</span>
                                                <button class="social-signin facebook">Log in with facebook</button>
                                                <button class="social-signin twitter">Log in with Twitter</button>
                                                <button class="social-signin google">Log in with Google+</button>
                            </div>
                            <div class="or">OR</div>
            --></div>
    </body>
</html>
