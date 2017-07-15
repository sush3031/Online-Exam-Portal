<%-- 
    Document   : adminSuccessLogin
    Created on : 26 Sep, 2016, 11:53:51 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success Admin Page</title>
    </head>
    <body>
        <%
            if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
        %>
        <center><h1>You are not logged in !!!</h1><br>
        <a href="adminLogin.jsp">Please Login</a></center>
        <% }
            else
            {
                response.sendRedirect("viewAdmin.jsp");
            }
        %>
    </body>
</html>
