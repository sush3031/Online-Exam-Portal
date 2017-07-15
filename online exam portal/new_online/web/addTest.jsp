<%-- 
    Document   : addTest
    Created on : 24 Sep, 2016, 2:27:59 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
        <!--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
        <%@ page import="java.io.*"  %>
        <%@ page import="java.sql.*" %>
        <%@ page errorPage="errorPage.jsp" %>
        <title>Add Test Page</title>
        <link rel="stylesheet" href="css/addTest.css">
        <script src="js/jquery-3.0.0.min.js"></script>
        <script type="text/javascript" src="js/validate.js"></script>
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
            <li class="LI"><a href="addTest.jsp">ADD TEST</a></li>
            <li class="LI"><a href="viewUser.jsp">VIEW USER</a></li>
            <li class="LI"><a href="viewResults.jsp">VIEW RESULTS</a></li>
            <li class="LI"><a href="adminLogOut.jsp">SIGN OUT</a></li>
        </ul>
    </div>
    <br><br>
    <div id="middle">
         <%
             try
             {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
            String name = (String)session.getAttribute("username");
            String sub_name = (String)request.getParameter("subjects");
            Statement st2 = con.createStatement();
            String ide="";
            ResultSet rs2 = st2.executeQuery("select sub_id from subjects where sub_name = '"+sub_name+"'");
            while(rs2.next())
            {
                ide = rs2.getString(1);
            }
            out.println(ide);
            Statement st1 = con.createStatement();
            ResultSet rs = st1.executeQuery("select test_id from before_addtest where teach_id = '"+name+"' and sub_name = '"+ide+"'");
            String str = "";
            while(rs.next())
            {
                str = rs.getString(1);
            }
            String id = "";
            if(str == "")
            {
                id = name.concat("1");
            }
            else
            {
                int num = Integer.parseInt(str.substring(7));
                Statement st4 = con.createStatement();
                String test = name.concat(Integer.toString(num));
                int i = st4.executeUpdate("update before_addtest set visibility=0 where teach_id='"+name+"' and test_id='"+test+"' and sub_name='"+ide+"'");
                if(i>0){}
                else
                {
                    out.println("there was some error to change visibility");
                }
                num++;
                String st = Integer.toString(num);
                id = name.concat(st);
            }
            String sub_nm = ide;
            out.println(sub_nm);
            session.setAttribute("sbId",sub_nm);
            String dept = (String)session.getAttribute("dept");
            String no = (String)request.getParameter("questions");
            session.setAttribute("number", no); 
            String time1 = (String)request.getParameter("time");
            session.setAttribute("test_id",id);
            Statement st = con.createStatement();
            out.println("Upper insert");
            int i = st.executeUpdate("insert into before_addtest values ('"+name+"','"+id+"','"+no+"','"+time1+"',1,'"+ide+"',null)");
            out.println("Below insert");
            if(i>0)
            {
                %>
                <script type="text/javascript">
                alert("Enter record successfully");
//                response.sendRedirect("afterAddTest.jsp");
                window.location.href = "afterAddTest.jsp";
                </script>
                <%
            }
            else
            {
                out.println("Something wrong");
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
                 //response.sendRedirect("errorPage.jsp");
                 out.println("Something wrong in this page");
             }        
             int number = 1;
        %>
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