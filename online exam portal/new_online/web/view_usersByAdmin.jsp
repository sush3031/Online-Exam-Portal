<%-- 
    Document   : view_usersByAdmin
    Created on : 5 Apr, 2017, 3:57:36 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Users By Admin</title>
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
            <li class="LI"><a href="viewAdmin.jsp">HOME</a></li>
            <li class="LI"><a href="afterAdminLogin.jsp">ADD TEST</a></li>
            <li class="LI"><a href="view_usersByAdmin.jsp">VIEW USER</a></li>
            <li class="LI"><a href="viewResults.html">VIEW RESULTS</a></li>
            <li class="LI"><a href="adminLogOut.jsp">SIGN OUT</a></li>
        </ul>
    </div>
    <br><br>
    <%
        String name = (String)session.getAttribute("username");
//        out.println(name);
    %>
    
	<div class="middle">
            <form action="ShowUsersAdmin.jsp" autocomplete="on" name="userViewAdmin" onsubmit="return validateInfo()" method="post">
				<center><font id="add"><u></u></font></center>
				 <br>
			<center>
			<table>
                            <tr><td>Section: </td><td><input type="text" class="inp" value="" placeholder="Type Section Here" name="sec" autofocus></td></tr>
				<tr><td></td></tr>
                                <tr><td>Semester: </td><td><input type="text" value="" class="inp" placeholder="Type Semester Here" name="sem"></td></tr>
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