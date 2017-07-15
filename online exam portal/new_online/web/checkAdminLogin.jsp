<%-- 
    Document   : checkAdminLogin
    Created on : 26 Sep, 2016, 11:50:01 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ page import="java.sql.*" %>
        <title>Check Admin Login Page</title>
    </head>
    <body>
        <%
    try
    {
        String uname = request.getParameter("name");
        String pass = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
        Statement st = con.createStatement();
        ResultSet rs;
        rs = st.executeQuery("select admin_uname,password,dept from admin_login where admin_uname='"+uname+"' and password='"+pass+"'");
        if(rs.next())
        {
            session.setAttribute("username", rs.getString(1));
            session.setAttribute("dept" , rs.getString(3));
            response.sendRedirect("adminSuccessLogin.jsp");
        }
        else
        {
            %>
<!--                <center><h1>Invalid username or password !!!</h1>
                <a href='adminLogin.jsp'>try again</a>
                </center>-->
<script type="text/javascript">
    alert("Invalid username or password!!!");
    window.location.href = "adminLogin.jsp";
</script>
       <% }
    }
    catch(Exception e)
    {
        response.sendRedirect("errorPage.jsp");
    }
%>
    </body>
</html>
