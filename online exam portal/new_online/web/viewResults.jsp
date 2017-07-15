<%-- 
    Document   : viewResults
    Created on : 24 Sep, 2016, 3:20:21 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Result Page</title>
        <link rel="stylesheet" href="css/viewResults.css">
    </head>
    <body>
        <div id="header">
       <div id="logo"><a href="index.jsp"><img src="image/logo.png" alt="Logo.jpg" height="auto"></a></div>
       <div id="heading"><h1 id="head">ONLINE EXAM PORTAL</h1></div>
        </div>
        <br>
        <div id="menu">
        <ul id="UL">
            <li class="LI"><a href="index.jsp">HOME</a></li>
            <li class="LI"><a href="addTest.jsp">ADD TEST</a></li>
            <li class="LI"><a href="viewUser.jsp">VIEW USER</a></li>
            <li class="LI"><a href="viewResults.jsp">VIEW RESULTS</a></li>
            <li class="LI"><a href="adminLogOut.jsp">SIGN OUT</a></li>
        </ul>
        </div>
        <br><br>
        <div id="middle">
        <form action="viewResults.jsp" method="post" name="viewAdmin">
        <center>
        <font id="font"><u>Detailed Information</u></font>
        </center>
        <br><br>
        <center>
        <table id="tb1">
           <tr>
               <th><font class="font2">Name</font></th>
               <th><font class="font2">Email</font></th>
               <th><font class="font2">RollNo</font></th>
               <th><font class="font2">Scored</font></th>
               <th><font class="font2">Total Marked</font></th>
               <th><font class="font2">Date</font></th>
           </tr>  
           <tr>
               <td><font class="font2">Sarthak Agarwal</font></td>
               <td><font class="font2">sarthak.1413088@kiet.edu</font></td>
               <td><font class="font2">1402913088</font></td>
               <td><font class="font2">3</font></td>
               <td><font class="font2">10</font></td>
               <td><font class="font2">18-09-2016</font></td>
           </tr>
           <tr>
               <td><font class="font2">Sushmita Gupta</font></td>
               <td><font class="font2">sushmita.1413111@kiet.edu</font></td>
               <td><font class="font2">1402913111</font></td>
               <td><font class="font2">5</font></td>
               <td><font class="font2">10</font></td>
               <td><font class="font2">18-09-2016</font></td>
           </tr>
        </table>
        </center>
        </form>
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
