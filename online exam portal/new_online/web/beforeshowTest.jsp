<%-- 
    Document   : beforeshowTest
    Created on : 9 Apr, 2017, 2:29:47 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Before Test Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("teacher");
            session.setAttribute("tech",name);
            String dept = (String)session.getAttribute("department");
            String sub = (String)session.getAttribute("sub_name");
//            out.println(name+" "+dept+" "+sub);
             try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
                Statement st = con.createStatement();
                ResultSet rs;
                rs = st.executeQuery("select test_id,Time_of_test from before_addtest join admin_login on admin_login.admin_name='"+name+"' AND admin_login.dept='"+dept+"' AND before_addtest.teach_id = admin_login.admin_uname AND before_addtest.visibility=1 join subjects on subjects.sub_name='"+sub+"' AND subjects.sub_id=before_addtest.sub_name");
                if(rs.next())
                {
                    String id = rs.getString(1);
                    out.println(id);
                    String time = rs.getString(2);
//                    int a = Integer.parseInt(time);
                    out.println(time);
                    session.setAttribute("testId",id);
                    session.setAttribute("Time",time);
                    response.sendRedirect("showTest.jsp");
                }
                else
                {
                    %>
                    <script type="text/javascript">
                        alert("There is no test available of this teacher or subject");
                        window.location.href = "afterUserLogIn_1st.jsp";
                    </script>
                    <%
//                    out.println("There is no test available of this teacher or subject");
                }
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
    </body>
</html>
