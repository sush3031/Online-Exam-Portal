=<%-- 
    Document   : new_user_register
    Created on : 24 Sep, 2016, 3:10:35 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="css/new_user_Register.css">    
        <script type="text/javascript" src="js/validate.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
    </head>
    <body>
        <div id="header">
            <div id="logo"><a href="index.jsp"><img src="image/logo.png" alt="Logo.jpg" height="auto"></a></div>
               <div id="heading"><h1 id="head">ONLINE EXAM PORTAL</h1></div>
         </div>
       <br><br><br>
       
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
       
    <center>
	<div class="middle">
            <center>
               <form action="Registration.jsp" name="userRegister" onsubmit="return validateUserRegister()" method="post" autocomplete="on">
                <font id="add"><u>New User Register</u></font>
                <br><br>
                <table>
                <tr><td>Name: </td><td><input type="text" class="inp" value="" placeholder="Type Name Here" name="name" autofocus/></td><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr>
		<tr><td>Password: </td><td><input type="password" class="inp" placeholder="Type Password Here" name="password"/></td>
<!--                    <td><div id="rule"></div></td>-->
		</tr>
                <tr><td></td></tr>
                <tr><td>Re-Enter Password: </td><td><input type="password" class="inp" value="" placeholder="Re-Enter Password Here" name="repassword"/></td><td></td></tr>
                <tr><td></td></tr>
                <tr><td>Email: </td><td><input type="text" class="inp" placeholder="Type Email Here" name="mail"/></td><td></td></tr>
                <tr><td></td></tr>
                <tr><td>Department </td><td><select class="inp" name="branch">
                    <option value="-1" disabled selected>---------------select----------------</option>
                    <option value="Applied Science">Applied Science</option>
                    <option value="IT">IT</option>
                    <option value="CS">CS</option>
                    <option value="ME">ME</option>
                    <option value="EC">EC</option>
                    <option value="EN">EN</option>
                    <option value="EI">EI</option>
                    <option value="CIVIL">CIVIL</option>  
                </select></td><td></td></tr>
                <tr><td></td></tr>
                <tr><td>Sem: </td><td><select class="inp" name="sem">
                    <option value="-1" disabled selected>---------------select----------------</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>   
                    <option value="5">5</option>
                    <option value="6">6</option> 
                    <option value="7">7</option> 
                    <option value="8">8</option>   
                    </select></td><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td>Sec: </td><td><select class="inp" name="sec">
                    <option value="-1" disabled selected>---------------select----------------</option>
                    <option value="A">A</option>
                    <option value="B">B</option>
                    </select></td><td></td></tr>
                <tr><td></td></tr>
                <tr><td>University RollNo: </td><td><input type="text" class="inp" placeholder="Type Roll No. Here" name="rollno"/></td><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td><td><input type="submit" value="submit" id="inpu"/></td>
 		</table>
 		</form>	
            </center>
	</div>
    </center>
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
            <center><font class="one"><strong>Contact Info</strong></font></center>
            <hr><br>
            <font class="two">Contact: 8791905580</font>
            <br><br>
            <font class="two">Email id: sarthak.1413088@kiet.edu</font>
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
    </body>
</html>
