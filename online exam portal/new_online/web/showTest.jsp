<%-- 
    Document   : showTest
    Created on : 9 Apr, 2017, 1:21:14 AM
    Author     : sarthak agarwal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <% int a = Integer.parseInt((String)session.getAttribute("Time")); %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/test.css"/>
        <script src="js/validate.js"></script>
        <title>Test Page</title>
        <script type="text/javascript">
var cmin=<%= a %>;
var total=cmin*60;
cmin=cmin-1;
var ctr=0;
var dom=document.getElementById("kulu");
function ram(){
var dom=document.getElementById("kulu");
dom.innerHTML=(cmin)+" mins  "+(total%60)+" secs";

total=total-1;ctr++;
if(ctr==60){ctr=0;cmin=cmin-1;}
if(total==0){
ram1();}
setTimeout("ram()", 1000);
              }
function ram1(){

window.location.replace("show_result.jsp");

                }
</script>

    </head>
    <body onload="ram()">
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
            String id = (String)session.getAttribute("testId");
            String sub = (String)session.getAttribute("sub_name"); 
            String rno = (String)session.getAttribute("userrollno");
            String teach = (String)session.getAttribute("tech");
//            out.println(id+" "+sub+" "+rno+" "+teach);
            try
            {    
                ResultSet rs2;
                Statement st2 = con.createStatement();
                rs2 = st2.executeQuery("select givenTest from test_given_student join admin_login on admin_login.admin_name = '"+teach+"' AND admin_login.admin_uname = test_given_student.teach_id AND test_id='"+id+"' AND student_rollno='"+rno+"'");
                if(rs2.next())
                {
                    %>
                    <script type="text/javascript">
                        alert("Yor have already attempted this test...")
                        window.location.href="afterUserLogIn_1st.jsp";
                    </script>
                    <%
                }
                else
                {
                    ResultSet rs1;
                    Statement st1 = con.createStatement();
                    rs1 = st1.executeQuery("select qNo,questions,a,b,c,d,pic from add_test where test_id='"+id+"'");
                    %>
                    <center><u><h1><%= sub %> Test</h1></u></center>
                    <div class="time">
                        <table>
                            <tr>
                                <td><strong>Remaining Time: </strong></td>
                                <td class="color" id="kulu"></td>
                            </tr>
                        </table>
                    </div>
                    <br><br>
                    <form action="show_result.jsp" method="post" onsubmit="return validateTest()">
                        <%
                            while(rs1.next())
                            {
                                String att = "ques"+Integer.toString(rs1.getInt(1));
                                String ans = "answer"+Integer.toString(rs1.getInt(1));
                            %>
                                 <div class="whole">
                                    <div class="ques">
                                        <table>
                                            <tr>
                                                <input type="hidden" value=<%=rs1.getInt(1) %> name=<%=att%>>
                                                <td><strong>Q.<%= rs1.getInt(1) %>- </strong></td> 
                                                <td><%= rs1.getString(2) %></td>
                                            </tr>
                                            <tr>
                                                <td><input type="radio" name=<%=ans%> value="A"> </td>
                                                <td><%= rs1.getString(3) %></td>
                                            </tr>
                                            <tr>
                                                <td><input type="radio" name=<%=ans%> value="B"> </td>
                                                <td><%= rs1.getString(4) %></td>
                                            </tr>
                                            <tr>
                                                <td><input type="radio" name=<%=ans%> value="C"> </td>
                                                <td><%= rs1.getString(5) %></td>
                                            </tr>
                                            <tr>
                                                <td><input type="radio" name=<%=ans%> value="D"> </td>
                                                <td><%= rs1.getString(6) %></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="pic">
                                        <img src="UploadedImages/<%= rs1.getString(7) %>" alt="no diagram for this page">
                                    </div>
                                </div>
                            <%
                            }
                        %>
                        <br>
                        <center><input type="submit" value="submit" id="inpu"></center>
                    </form>
                    <%
                        if(rs1 != null)
                        {
                            rs1.close();
                        }
                        if(st1 != null)
                        {
                            st1.close();
                        }
                    }
            }
            catch(Exception e)
            {
                out.println("There is some error on this page");
            }
        %>
    </body>
</html>
