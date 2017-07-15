<%-- 
    Document   : adminLogOut
    Created on : 26 Sep, 2016, 11:58:39 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Admin Page</title>
    </head>
    <body>
        <%
            session.setAttribute("username", null);
            session.invalidate();
        %>
            <script type="text/javascript">
                alert("You are logged out successfully...");
                window.location.href = "index.jsp";
            </script>
            <%
//            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
