<%-- 
    Document   : userSuccessLogin
    Created on : 26 Sep, 2016, 10:46:24 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %> 
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success User Page</title>
    </head>
    <body>
        <%
            if (((String)session.getAttribute("userrollno") == null) || ((String)session.getAttribute("userrollno") == ""))
            {
        %>
        <center><h1>You are not logged in !!!</h1><br>
        <a href="index.jsp">Please Login</a></center>
        <% }
            else
            {
//                      String rollNo = (String)session.getAttribute("userrollno");
//                      String semester = (String)session.getAttribute("semester");
//                      String dept = (String)session.getAttribute("department");
                      response.sendRedirect("afterUserLogIn_1st.jsp");
//                    String year="",dept="";
//                    Class.forName("com.mysql.jdbc.Driver");
//                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","anandss3");
//                    Statement st = con.createStatement();
//                    ResultSet rs;
//                    rs = st.executeQuery("select year , dept from user_register where university_rollno = '"+rollNo+"'");
//                    if(rs.next())
//                    {
//                        year = year.concat(rs.getString(1));
//                        dept = dept.concat(rs.getString(2));
//                    }
//                    if(year.equals("1"))
//                    {
//                        response.sendRedirect("afterUserLogIn_1st.jsp");
//                    }
//                    else if(year.equals("3") && dept.equals("IT"))
//                    {
//                        response.sendRedirect("afterUserLogIn_3_IT.jsp");
//                    }
//                    else if(year.equals("2") && dept.equals("IT"))
//                    {
//                        response.sendRedirect("afterUserLogIn_2_IT.jsp");
//                    }
//                    else if(year.equals("4") && dept.equals("IT"))
//                    {
//                        response.sendRedirect("afterUserLogin_4_IT.jsp");
//                    }
//                    else if(year.equals("2") && dept.equals("CS"))
//                    {
//                        response.sendRedirect("afterUserlogin_2_CS.jsp");
//                    }
//                    else if(year.equals("3") && dept.equals("CS"))
//                    {
//                        response.sendRedirect("afterUserLogin_3_CS.jsp");
//                    }
//                    else if(year.equals("4") && dept.equals("CS"))
//                    {
//                        response.sendRedirect("afterUserLogin_4_CS.jsp");
//                    }
//                    else if(year.equals("2") && dept.equals("ME"))
//                    {
//                        response.sendRedirect("afterUserLogin_2_ME.jsp");
//                    }
//                    else if(year.equals("3") && dept.equals("ME"))
//                    {
//                        response.sendRedirect("afterUserLogin_3_ME.jsp");
//                    }
//                    else if(year.equals("4") && dept.equals("ME"))
//                    {
//                        response.sendRedirect("afterUserLogin_4_ME.jsp");
//                    }
//                    else if(year.equals("2") && dept.equals("EC"))
//                    {
//                        response.sendRedirect("afterUserLogin_2_ECE.jsp");
//                    }
//                    else if(year.equals("3") && dept.equals("EC"))
//                    {
//                        response.sendRedirect("afterUserLogin_3_ECE.jsp");
//                    }
//                    else if(year.equals("4") && dept.equals("EC"))
//                    {
//                        response.sendRedirect("afterUserLogin_4_ECE.jsp");
//                    }
//                    else if(year.equals("2") && dept.equals("EN"))
//                    {
//                        response.sendRedirect("afterUserLogin_2_EN.jsp");
//                    }
//                    else if(year.equals("3") && dept.equals("EN"))
//                    {
//                        response.sendRedirect("afterUserLogin_3_EN.jsp");
//                    }
//                    else if(year.equals("4") && dept.equals("EN"))
//                    {
//                        response.sendRedirect("afterUserLogin_4_EN.jsp");
//                    }
//                    else if(year.equals("2") && dept.equals("EI"))
//                    {
//                        response.sendRedirect("afterUserLogin_2_EI.jsp");
//                    }
//                    else if(year.equals("3") && dept.equals("EI"))
//                    {
//                        response.sendRedirect("afterUserLogin_3_EI.jsp");
//                    }
//                    else if(year.equals("3") && dept.equals("EI"))
//                    {
//                        response.sendRedirect("afterUserLogin_3_EI.jsp");
//                    }
//                    else if(year.equals("2") && dept.equals("CIVIL"))
//                    {
//                        response.sendRedirect("afterUserLogin_2_CE.jsp");
//                    }
//                    else if(year.equals("3") && dept.equals("CIVIL"))
//                    {
//                        response.sendRedirect("afterUserLogin_3_CE.jsp");
//                    }
//                    else if(year.equals("2") && dept.equals("CIVIL"))
//                    {
//                        response.sendRedirect("afterUserLogin_4_CE.jsp");
//                    }
                   // rs.close();
                   // st.close();
                   // con.close();
            }
        %>
    </body>
</html>
