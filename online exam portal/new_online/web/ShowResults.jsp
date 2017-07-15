<%-- 
    Document   : ShowResults
    Created on : 6 Apr, 2017, 12:47:23 AM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Given test Users are below in this page</title>
        <link rel="stylesheet" href="css/admin_log.css">
        <link rel="stylesheet" href="css/showUsersAdmin.css"/>
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
            <li class="LI"><a href="afterAdminLogin.jsp">ADD TEST</a></li>
            <li class="LI"><a href="view_usersByAdmin.jsp">VIEW USER</a></li>
            <li class="LI"><a href="SelectSubject.jsp">VIEW RESULTS</a></li>
            <li class="LI"><a href="adminLogOut.jsp">SIGN OUT</a></li>
        </ul>
    </div>
    <br><br>
    <%
        String testId = (String)request.getParameter("Tests");
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
        Statement st = con.createStatement();
        ResultSet rs,rs1;
        Statement st1 = con.createStatement();
        rs = st.executeQuery("select user_register.university_rollno,user_register.student_name,user_register.email,user_register.sec,test_given_student.score,test_given_student.date from user_register,test_given_student where test_given_student.test_id='"+testId+"' AND test_given_student.student_rollno = user_register.university_rollno");       
           rs1 = st1.executeQuery("select total_marks from before_addtest where test_id = '"+testId+"'");
           String max="";
           if(rs1.next())
           {
               max = rs1.getString(1);
           }

    %>
            <div class="middle">
                <center><h2><u>Detailed Information</u></h2></center>
                <table>
                    <tr>
                        <th class="cor">University RollNo</th>
                        <th class="cor">Name</th>
                        <th class="cor">E-mail</th>
                        <th class="cor">Test_id</th>
                        <th class="cor">Setion</th>
                        <th class="cor">Score</th>
                        <th class="cor">Max Marks</th>
                        <th class="cor">Date</th>
                    </tr>
            <%
            while(rs.next())
            {
            %>
            <tr>
                <td class="cor"><%= rs.getString(1) %></td>
                <td class="cor"><%= rs.getString(2) %></td>
                <td class="cor"><%= rs.getString(3) %></td>
                <td class="cor"><%= testId %></td>
                <td class="cor"><%= rs.getString(4) %></td>
                <td class="cor"><%= rs.getString(5) %></td>
                <td class="cor"><%= max %></td>
                <td class="cor"><%= rs.getString(6) %></td>
            </tr>
            <%
            }
%>
                
        </table>
            </div>
            <%
                if(rs != null)
                {
                    rs.close();
                }
                if(st != null)
                {
                    st.close();
                }
        if(con != null)
        {
            con.close();
        }
    }
    catch(Exception e)
    {
//        response.sendRedirect("errorPage.jsp");
            out.println("There is some error in this page");
    }
    %>
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
