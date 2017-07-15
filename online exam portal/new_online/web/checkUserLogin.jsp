<%-- 
    Document   : checkUserLogin
    Created on : 26 Sep, 2016, 10:22:23 PM
    Author     : sarthak agarwal
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ page import="java.sql.*" %>
        <title>Check User Login Page</title>
    </head>
    <body>
<%
    try
    { 
        String rno = request.getParameter("rollno");
        String pass = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
        Statement st = con.createStatement();
        ResultSet rs;
        rs = st.executeQuery("select university_rollno , password , student_name ,dept , sem , sec , email from user_register where university_rollno='"+rno+"' and password='"+pass+"'");
        if(rs.next())
        {
//            HttpSession session = new HttpSession();
            String uniroll = rs.getString(1);
            session.setAttribute("userrollno", uniroll);
            session.setAttribute("username", rs.getString(3));
            String depta = rs.getString(4);
            session.setAttribute("department",depta);
            session.setAttribute("semester",rs.getString(5));
            session.setAttribute("section",rs.getString(6));
            session.setAttribute("Email",rs.getString(7));
            response.sendRedirect("userSuccessLogin.jsp");
        }
        else
        {
            %>
<!--                <center><h1>Invalid Userid or password !!!</h1>
                <a href='index.jsp'>try again</a>
                </center>-->
<script type="text/javascript">
    alert("Invalid Userid or Password or You are not registered!!!");
    window.location.href = "userLogIN.jsp";
</script>
       <% }
    }
    catch(Exception e)
    {
        response.sendRedirect("error.jsp");
    }
%>
    </body>
</html>
