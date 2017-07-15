<%-- 
    Document   : afterAddTest
    Created on : 4 Apr, 2017, 11:32:38 PM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %> 
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>After Add Test JSP Page</title>
        <link rel="stylesheet" href="css/addTest.css">
        <script src="js/jquery-3.0.0.min.js"></script>
        <script type="text/javascript" src="js/validate.js"></script>
    </head>
    <body>
        <center>
        <div id="header">
            <div id="logo"><a href="index.jsp"><img src="image/logo.png" alt="Logo.jpg" height="auto"></a></div>
            <div id="heading"><h1 id="head">ONLINE EXAM PORTAL</h1></div>
        </div>
        <br>
        <hr>
        <%
            String teach_id = (String)session.getAttribute("username");
            String test_id = (String)session.getAttribute("test_id");
            String subid = (String)session.getAttribute("sbId");
            int number = 0,no = 0;
            Connection connection = null;
            String connectionURL = "jdbc:mysql://localhost:3306/onlineexamportal";
            PreparedStatement psmnt = null;
            PreparedStatement psmnt1 = null;
            ResultSet rs = null;
            ResultSet rs1 = null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                connection = DriverManager.getConnection(connectionURL, "root", "");
                psmnt = connection.prepareStatement("select No_of_q from before_addtest where teach_id = ? AND sub_name = ? AND visibility = ?");
                psmnt.setString(1, teach_id);
                psmnt.setString(2, subid);
                psmnt.setInt(3, 1);
                rs = psmnt.executeQuery();
                if(rs.next())
                {
                    no = Integer.parseInt(rs.getString(1));
                }
                else
                {
                    out.println("there is some error on this page");
                }
                out.println(no);
                if(rs!=null)
                {
                    rs.close();
                }
                if(psmnt != null)
                {
                    psmnt.close();
                }
                psmnt1 = connection.prepareStatement("select MAX(qNo) from add_test where teach_id=? AND test_id=?");
                psmnt1.setString(1,teach_id);
                psmnt1.setString(2,test_id);
                rs1 = psmnt1.executeQuery(); 
                if(rs1.next())
                {
                    number = rs1.getInt(1);
                }
                else
                {
                    number = 0;
                }
                out.println("Current Question Number is "+number);
                if(rs1 != null)
                {
                    rs1.close();
                }
                if(psmnt1 != null)
                {
                    psmnt1.close();
                }
            if(number < no)
            {
                number++;
            }
            else
            {
                ResultSet rs2;
                PreparedStatement psmnt2;
                psmnt2 = connection.prepareStatement("select SUM(marks) from add_test where test_id = ?");
                psmnt2.setString(1, test_id);
                rs2 = psmnt2.executeQuery();
                int total = 0;
                while(rs2.next())
                {
                    total = rs2.getInt(1);
                }
                if(rs2 != null)
                {
                    rs2.close();
                }
                if(psmnt2 != null)
                {
                    psmnt2.close();
                }
                int i = 0;
                PreparedStatement psmnt3;
//                i = st.executeUpdate("update before_addtest set total_marks='total' where test_id = '"+test_id+"'");
                psmnt3 = connection.prepareStatement("update before_addtest set total_marks=? where test_id=?");
                psmnt3.setInt(1, total);
                psmnt3.setString(2, test_id);
                i = psmnt3.executeUpdate();
                if(i>0)
                {
                %>
                <script lang="text/javascript">
                    alert('All Question saved in database Successfully...');
                    window.location.href = "viewAdmin.jsp";
//                    alert('Your record is successfully submitted');
//                    setInterval(function(){alert('Question saved in database successfully...');}, 2000);
                </script>
               <% 
//            response.sendRedirect("viewAdmin.jsp");
            }
            else
            {
                out.println("There is somthimg wrong");
            }
            if(psmnt3 != null)
            {
                psmnt3.close();
            }
        }
            if(connection != null)
                {
                    connection.close();
                }
            }  
            catch(Exception e)
            {
                out.println("Some thing wrong with this page");
            }      
%>
        <center><font id="add"><u>Add Test Data</u></font></center>
       <form action="addtest_database.jsp" name="addTest" onsubmit=" return validateAddTestForm()" method="post" autocomplete="on" enctype="multipart/form-data">
        <br>
        <center>
            <table>
                <tr>
                    <td><font class="textFont">Q.No: </font></td>
                    <td><input type="text" value="<%= number %>" name="number" class="select" readonly='readonly'/></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                    <tr><td><font class="textFont">Questions*: </font></td>
                        <td><textarea rows="4" cols="50" name="questions" placeholder="Type Questions Here"></textarea></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td><font class="textFont">A*: </font></td>
                    <td><input type="text" class="select" name="a" placeholder="Type Option A"></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td><font class="textFont">B*: </font></td>
                    <td><input type="text" class="select" name="b" placeholder="Type Option B"></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td><font class="textFont">C*: </font></td>
                    <td><input type="text" class="select" name="c" placeholder="Type Option C"></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td><font class="textFont">D*: </font></td>
                    <td><input type="text" class="select" name="d" placeholder="Type Option D"></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td><font class="textFont">Right Answer*: </font></td>
                    <td><select class="select" name="rightans">
                    <option value="-1" disabled selected>---------------select----------------</option>
                    <option value="A">A</option>
                    <option value="B">B</option>
                    <option value="C">C</option>
                    <option value="D">D</option>
                    </select></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td><font class="textFont">Marks Of Q*: </font></td>
                    <td><input type="text" class="select" name="marks" placeholder="Type Marks Of This Question"></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                    <tr><td><font class="textFont"><font class="textFont">Description*: </font></font></td>
                        <td><textarea rows="4" cols="50" name="description" placeholder="Type description"></textarea></td></tr>
                    <tr><td></td><td></td></tr>
                    <tr><td></td><td></td></tr>
                    <tr><td><font class="textFont"><font class="textFont">Upload Diagram: </font></font></td>
                    <td><input type="file" name="dataFile" id="fileChooser" onchange="readURL(this);"></td></tr>
                     <tr><td></td><td></td></tr>
                    <tr><td></td><td></td></tr>
                    <tr><td></td><td><img src="#" id="blah" alt="Your Image" width="400px" height="200px"></td></tr>
                    <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                    <tr><td></td>
                    <td><input type="submit" value="Next" class="sub"></td></tr>
            </table>      
        </center>
        </form>
        </center>
    </body>
</html>