<%@ page import="java.sql.*" %>
<%
    try
    {
            String rollno = request.getParameter("rollno");
            String stuName = request.getParameter("name");
            String password = request.getParameter("password");
            String email = request.getParameter("mail");
            String branch = request.getParameter("branch");
            String semester = request.getParameter("sem");
            String section = request.getParameter("sec");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
            Statement st = con.createStatement();
            boolean flag = false;
            ResultSet rs;
            rs = st.executeQuery("select university_rollno from user_register where university_rollno='"+rollno+"'");
            if(rs.next())
            {
                %>
                <script type="text/javascript">
                    alert("You have already registered...");
                    window.location.href = "userLogIN.jsp";
                </script>
                <%
//                response.sendRedirect("alreadyRegisteredUser.jsp");
            }
            else
            {
            int i = st.executeUpdate("insert into user_register values('"+rollno+"','"+stuName+"','"+password+"','"+email+"','"+branch+"','"+semester+"','"+section+"')");
            if(i>0)
            {
%>
                <!--response.sendRedirect("welcome.jsp");-->
                <script type="text/javascript">
                    alert("You are registered Successfully !!!");
                    window.location.href = "userLogIN.jsp";
                </script>
                <%
            }
            else
            {
                response.sendRedirect("index.jsp");
            }
        }
            rs.close();
            st.close();
            con.close();
    }
        catch(Exception e)
        {
            response.sendRedirect("errorPage.jsp");
        }
        %>