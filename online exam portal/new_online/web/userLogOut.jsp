<%-- 
    Document   : userLogOut
    Created on : 28 Jan, 2017, 3:49:42 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("userrollno", null);
            session.invalidate();
        %>
        <script type="text/javascript">
            alert("You are log out successfully...");
            window.location.href = "index.jsp";
        </script>
        <%
//        response.sendRedirect("index.jsp");
        %>
    </body>
</html>
