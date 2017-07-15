<%-- 
    Document   : after_select_sub
    Created on : 2 Oct, 2016, 2:55:30 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/homePage.css"/>
        <link rel="stylesheet" href="css/after_select_sub.css"/>
        <title>Select Teacher Page</title>
    </head>
    <body>
        <div id="header">
            <div id="logo"><a href="index.jsp"><img src="image/logo.png" alt="Logo.png" height="auto"></a></div>
            <div id="heading"><h1 id="head">ONLINE EXAM PORTAL</h1></div>
        </div>
        <br>
        <hr>
        <br><br>
    <center>
        <%
       try
       {
            String subject = (String)request.getParameter("Id");
            String dept  = (String)session.getAttribute("department");
            session.setAttribute("sub_name", subject);
//            out.println(subject+" "+dept);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
            Statement st = con.createStatement();
            ResultSet rs = null;
            String s = subject;
//            out.println(s);
            if(s.length()>0)
            {
                rs = st.executeQuery(" select admin_name from admin_login join teachersub on admin_login.dept='"+dept+"' AND teachersub.Teach_id=admin_login.admin_uname join subjects on subjects.sub_name='"+s+"' AND subjects.sub_id=teachersub.sub_id");
//                rs = st.executeQuery(" select distinct admin_name from admin_login , teachersub ,subjects where admin_login.admin_uname=teachersub.Teach_id and admin_login.dept= '"+dept+"' and subjects.sub_name= '"+s+"' and teachersub.sub_id=subjects.sub_id ");
            }   
%>
        <div class="middle1">
            <form action="beforeshowTest.jsp" name="after_select_sub" method = "post" >
                <br>
        <center>
            <table>
                <tr>
                    <td>Select Teacher:</td>
                    <td><select class="select" name="teacher" autofocus> 
            <%                  
                        while(rs.next())
                        {
                    %>
                        <option value="<%= rs.getString(1) %>"><%= rs.getString(1) %></option>
                    <% } %>
                   
                        </select>
                    </td>
                </tr>
                <%
                    rs.close();
                    st.close();
                    con.close();
                }
                catch(Exception e)
                {
                    response.sendRedirect("errorPage.jsp");
                }
                %>
                <tr><td>&nbsp;</td></tr>
                </table>
                    <center><input type="submit" value="Submit" id="sub"/></center>
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
    </center>
    </body>
</html>
