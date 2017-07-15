<%-- 
    Document   : afterUserLogIn_1st
    Created on : 24 Sep, 2016, 7:23:46 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %> 
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View User Page</title>
        <link rel="stylesheet" href="css/afterUserLogIN.css">
    </head>
    <body>
        <%
            String rollNo = (String)session.getAttribute("userrollno");
            String semester = (String)session.getAttribute("semester");
            String dept = (String)session.getAttribute("department");
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
              Statement st = con.createStatement();
              ResultSet rs,rs1;
              rs = st.executeQuery("select sub_name from subjects join sub_dept on subjects.sem='"+semester+"' and sub_dept.dept = '"+dept+"' and subjects.sub_id = sub_dept.subject_code");     
        %>
        <div id="header">
            <div id="logo"><a href="index.jsp"><img src="image/logo.png" alt="Logo.jpg" height="auto"></a></div>
            <div id="heading"><h1 id="head">ONLINE EXAM PORTAL</h1></div>
        </div>
        <br>
        <div id="menu-header">
        <div class="menu-wrap">
        <nav class="menu">
        <ul class="clearfix">
            <li><a href="index.jsp">HOME</a></li>
            <li><a href="#">TECHNICAL<span class="arrow">&#9660;</span></a>
                <ul class="sub-menu">
                    <%
                        while(rs.next())
                        {%>
                              <li><a href="after_select_sub.jsp?Id=<%= rs.getString(1) %>"><center><%= rs.getString(1) %></center></a></li>
                     <%   }
                    %>
                    
                </ul>
            </li>
            <li>
            <a href="show_report_user.jsp">REPORT</a>
            </li>
           <li>
               <a href="#">KEY PAPER WITH SOLUTIONS<span class="arrow">&#9660;</span></a>
               <ul class="sub-menu">
                   <%
                       rs1 = st.executeQuery("select sub_name from subjects join sub_dept on subjects.sem='"+semester+"' and sub_dept.dept = '"+dept+"' and subjects.sub_id = sub_dept.subject_code");
                        while(rs1.next())
                        {%>
                              <!--out.print("<li><a href='after_select_sub.jsp?Id='"+rs.getString(1)+"><center>"+rs.getString(1)+"</center></li>");-->
                              <li><a href="after_select_sub_key.jsp?Id=<%= rs1.getString(1) %>"><center><%= rs1.getString(1) %></center></a></li>
                     <%   }
                    %>
               </ul>
           </li>
           <li><a href="userLogOut.jsp">SIGN OUT</a></li>
            </ul>
            </nav>
            </div>
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
