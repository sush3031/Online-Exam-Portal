<%-- 
    Document   : add_Data
    Created on : 31 Jan, 2017, 10:12:58 AM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"  %>
<%@ page import="java.sql.*" %>
<%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         try
             {
            String name = (String)session.getAttribute("username");
            String id = name.concat("1");
            String dept = (String)session.getAttribute("dept");
            String no = (String)request.getParameter("questions");
            session.setAttribute("number", no); 
            String time1 = (String)request.getParameter("time");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into before_addtest values ('"+name+"','"+id+"','"+no+"','"+time1+"',1)");
            if(i>0)
            {
                out.println("response successfully added");
                response.sendRedirect("addTest.jsp");
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
                 response.sendRedirect("errorPage.jsp");
             }
         
         %>
    </body>
</html>
