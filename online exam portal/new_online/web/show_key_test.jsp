<%-- 
    Document   : show_key_test
    Created on : 16 Apr, 2017, 3:46:47 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/test.css"/>
        <title>Test Key Show</title>
    </head>
    <body>
        <%
            String testId = (String)request.getParameter("tests");
//            session.setAttribute("test",testId);
//            out.println(testId);
            String rollNo = (String)session.getAttribute("userrollno");
            String sub = (String)session.getAttribute("sub_name");
//            out.println(rollNo);
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
                ResultSet rs;
                Statement st = con.createStatement();
                rs = st.executeQuery("select givenTest from test_given_student where test_id='"+testId+"' AND student_rollno='"+rollNo+"'");
                if(rs.next())
                {
                    ResultSet rs2;
                    Statement st2 = con.createStatement();
                    rs2 = st2.executeQuery("select qNo,questions,a,b,c,d,pic,description,rightAns from add_test where test_id='"+testId+"'");
                    %>
                     <center><u><h1><%= sub %> Test</h1></u></center>
                     <br><br>
                        <%
//                            out.println("Here");
//                            out.println(testId);
                            while(rs2.next())
                            {
//                                out.println("Inside here");
                            %>
                                 <div class="whole">
                                    <div class="ques">
                                        <table>
                                            <tr>
                                                <td><strong>Q.<%= rs2.getInt(1) %>- </strong></td> 
                                                <td><%= rs2.getString(2) %></td>
                                            </tr>
                                            <tr>
                                                <td>A: </td>
                                                <td><%= rs2.getString(3) %></td>
                                            </tr>
                                            <tr>
                                                <td>B: </td>
                                                <td><%= rs2.getString(4) %></td>
                                            </tr>
                                            <tr>
                                                <td>C: </td>
                                                <td><%= rs2.getString(5) %></td>
                                            </tr>
                                            <tr>
                                                <td>D: </td>
                                                <td><%= rs2.getString(6) %></td>
                                            </tr>
                                            <tr>
                                                <td>Description: </td>
                                                <td><%= rs2.getString(8) %></td>
                                            </tr>
                                            <tr>
                                                <td>RightAns: </td>
                                                <td><%= rs2.getString(9) %></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="pic">
                                        <img src="UploadedImages/<%= rs2.getString(7) %>" alt="no diagram for this page">
                                    </div>
                                </div>
                            <%
                            }
                        %>
                        <br>
                    <%
//                    out.println("Key Available");
                }
                else
                {
                    %>
                        <script>
                            alert("Yor are not given this test show key is not visible");
                            window.location.href = "afterUserLogIn_1st.jsp";
                        </script>
                    <%
                }
                if(rs!=null)
                {
                    rs.close();
                }  
                if(st!=null)
                {   
                    st.close();
                }
            } 
            catch(Exception e)
            {
                out.println("There is some error on this page");
            }
        %>
    </body>
</html>
