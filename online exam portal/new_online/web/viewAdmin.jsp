<%-- 
    Document   : viewAdmin
    Created on : 24 Sep, 2016, 3:15:43 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin View Page</title>
        <link rel="stylesheet" href="css/homePage.css">
    </head>
    <body>
        <div id="header">
       <div id="logo"><a href="homePage.jsp"><img src="image/logo.png" alt="Logo.png" height="auto"></a></div>
       <div id="heading"><h1 id="head">ONLINE EXAM PORTAL</h1></div>
    </div>
    <br>
    <div id="menu">
        <ul id="UL">
            <li class="LI"><a href="#">HOME</a></li>
            <li class="LI"><a href="afterAdminLogin.jsp">ADD TEST</a></li>
            <li class="LI"><a href="view_usersByAdmin.jsp">VIEW USER</a></li>
            <li class="LI"><a href="SelectSubject.jsp">VIEW RESULTS</a></li>
            <li class="LI"><a href="adminLogOut.jsp">SIGN OUT</a></li>
        </ul>
    </div>
    <br><br>
    <div id="middle"><center>
    <a href="index.jsp">
    <div class="slider-holder">
        <span id="slider-image-1"></span>
        <span id="slider-image-2"></span>
        <span id="slider-image-3"></span>
        <div class="image-holder">
            <img src="image/exam 2.jpg" class="slider-image" height="400px" width="800px"/>
                            <img src="image/exam 1.jpg" class="slider-image" height="400px" width=800px"/>
                            <img src="image/5.jpg" class="slider-image" height="400px" width="800px"/>
        </div>
        <div class="button-holder">
            <a href="#slider-image-1" class="slider-change"></a>
            <a href="#slider-image-2" class="slider-change"></a>
            <a href="#slider-image-3" class="slider-change"></a>
        </div>
    </div>
        </a>
    </center>
    </div>
    <br><br>
    <hr>
    <div id="footer">
         <div id="footerl">
                <center>
                    <a href="#"><img src="image/faq.png" alt="Faq's"></a>
                </center>
                <br>
                <center><font class="one"><strong>FAQs</strong></font></center>
                <hr><br>
                <font class="two">What about the test</font>
                <br><br>
            </div>
            <div id="footerm">
                <center>
                    <a href="#"><img src="image/phone-book.png" alt="Contacts"></a>
                    </center>
                    <br>
                    <center><font class="one"><strong>CONTACT INFO</strong></font></center>
                    <hr><br>
                <font class="two">Contact: 8791905580</font>
                <br>
                <font class="two">Contact: 9917080524</font>
                <br><br>
                <font class="two">Email id: sarthak.1413088@kiet.edu</font>
                <br>
                <font class="two">Email id: sushmita.1413111@kiet.edu</font>
                <br>
            </div>
            <div id="footerr">
                <center>
                    <a href="#"><img src="image/speech-bubble.png" alt="Likes" id="fr1"></a>
                </center>
                <br>
                <center><font class="one"><strong>STAY TUNED</strong></font></center>
                <hr><br>
                <font class="two">For Daily News About Test , be sure to like the social pages</font>
                <br><br><center>
                    <a href="https://www.facebook.com"><img src="image/facebook.png" alt="Facebook" class="fr"></a>
                    <a href="https://www.google.co.in"><img src="image/google-chrome.png" alt="Google" class="fr"></a>
                    <a href="https://www.linked.com"><img src="image/linkedin (1).png" alt="LinkedIn" class="fr"></a>
                    <a href="https://twitter.com"><img src="image/twitter.png" alt="Twitter" class="fr"></a>
                    <a href="https://www.gmail.com"><img src="image/gmail.png" alt="Gmail" class="fr"></a>
                </center>
        </div>
    </div>
    </body>
</html>
