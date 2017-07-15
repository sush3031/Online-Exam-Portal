<%-- 
    Document   : beforeshowTestKey.jsp
    Created on : 16 Apr, 2017, 3:23:57 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/admin_log.css">
         <link rel="stylesheet" href="css/addTest.css">
        <title>Select Test</title>
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
            <li class="LI"><a href="afterUserLogIn_1st.jsp">HOME</a></li>
            <li class="LI"><a href="#"></a></li>
            <li class="LI"><a href="#"></a></li>
            <li class="LI"><a href="#"></a></li>
            <li class="LI"><a href="userLogOut.jsp">SIGN OUT</a></li>
        </ul>
    </div>
    <br><br>
        <%
            String name = request.getParameter("teacher");
            String dept = (String)session.getAttribute("department");
            String sub = (String)session.getAttribute("sub_name");
//            out.println(name+" "+dept+" "+sub);
             try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
                Statement st = con.createStatement();
                ResultSet rs;
                rs = st.executeQuery("select test_id from before_addtest join admin_login on admin_login.admin_name='"+name+"' AND admin_login.dept='"+dept+"' AND before_addtest.teach_id = admin_login.admin_uname join subjects on subjects.sub_name='"+sub+"' AND subjects.sub_id=before_addtest.sub_name");
                %>
               <div class="middle">
               <center><font id="add"><u>Select Test</u></font></center>
               <form action="show_key_test.jsp" name="selectKey" method="post" autocomplete="on">
                <br>
                <center>
                <table>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                   <td><font class="textFont">Test id </font></td>
                    <td><select class="select" name="tests" autofocus>
                <%
                while(rs.next())
                {
                %>
                <option value="<%= rs.getString(1) %>"><%= rs.getString(1) %></option>
                <%}%>
                </select></td> 
                </tr>
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
                 out.println("There is some exception on this page");
             }
            %>
            </table>
                <br>
                <center>
                    <input type="submit" value="Submit" class="sub">
                </center>
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
