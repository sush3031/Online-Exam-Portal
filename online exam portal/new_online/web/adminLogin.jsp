<%-- 
    Document   : adminLogin
    Created on : 24 Sep, 2016, 2:45:57 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
        <link rel="stylesheet" href="css/admin_log.css"> 
        <script src="js/validate.js" type="text/javascript"></script>
    </head>
    <body>
        <center>
        <div id="header">
            <div id="logo"><a href="index.jsp"><img src="image/logo.png" alt="Logo.jpg" height="auto"></a></div>
            <div id="heading"><h1 id="head">ONLINE EXAM PORTAL</h1></div>
        </div>
        <br>
       <div id="menu">
        <ul id="UL">
            <li class="LI"><a href="index.jsp">HOME</a></li>
            <li class="LI"><a href="adminLogin.jsp">ADMIN</a></li>
            <li class="LI"><a href="userLogIN.jsp">USER</a></li>
            <li class="LI"><a href="new_user_register.jsp">NEW USER</a></li>
            <li class="LI"><a href="Contact.jsp">CONTACT US</a></li>
        </ul>
    </div>
    <br><br>
    
	<div class="middle">
            <form action="checkAdminLogin.jsp" autocomplete="on" name="adminLogin" onsubmit="return validateAdminLogin()" method="post">
				<center><font id="add"><u>Admin Login</u></font></center>
				 <br>
			<center>
			<table>
                            <tr><td>Name: </td><td><input type="text" class="inp" value="" placeholder="Type Name Here" name="name" autofocus></td></tr>
				<tr><td></td></tr>
                                <tr><td>Password: </td><td><input type="password" value="" class="inp" placeholder="Type Password Here" name="password"></td></tr>
          <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr></tr><tr></tr>
           <tr><td></td><td><input type="submit" value="submit" id="inpu"></td></tr>
           </table>
            </center>
        </form>
        </div>
        
	<br><br><hr>
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
            <center><font class="one"><strong>Stay Tuned</strong></font></center>
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
        </center>
    </body>
</html>
