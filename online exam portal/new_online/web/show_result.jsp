<%-- 
    Document   : show_result
    Created on : 9 Apr, 2017, 2:54:57 PM
    Author     : sarthak agarwal
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <%
            String id = (String)session.getAttribute("testId");
            String rno = (String)session.getAttribute("userrollno");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
            ResultSet rs=null;
            Statement st = con.createStatement();
            int result = 0,no=0,start=1,num=0,mark=0,result1=0;
            String right="",qno="",ans="",answer="";
            String teach = "";
            try
            {
                rs = st.executeQuery("select No_of_q,teach_id from before_addtest where test_id='"+id+"'");
                if(rs.next())
                {
                    no = Integer.parseInt(rs.getString(1));
                    teach = rs.getString(2);
                    start=1;
                    ResultSet rs1 = null;                 
                    for(int i=start ; i<=no ; i++)
                    {
                        qno = "ques"+Integer.toString(i);
                        ans = "answer"+Integer.toString(i);
                        num = Integer.parseInt(request.getParameter(qno));
                        answer = (String)request.getParameter(ans); 
                          PreparedStatement st1 = con.prepareStatement("select rightAns, marks from add_test where test_id=? AND qNo=?");
                          st1.setString(1, id);
                          st1.setInt(2, i);
                        rs1 = st1.executeQuery();
                        if(rs1.next())
                        {
                            right = (String)rs1.getString(1);
                            mark = rs1.getInt(2);
                            result1 = result1+mark;
                            if(right.equals(answer))
                            {
                                result = result+mark;
                            }                          
                        }
                        else
                        {
                            out.println("There is somthing wrong");
                        }
                        if(st1 != null)
                        {
                            st1.close();
                        }
                    }
                    if(rs1 != null)
                    {
                        rs1.close();
                    }
                    int p = 0;
                    Date todaysDate = new Date();
                    DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                    String date = df.format(todaysDate);
                    PreparedStatement st2 = con.prepareStatement("insert into test_given_student (test_id, teach_id, student_rollno, givenTest, score, date) values(?,?,?,?,?,?)");
                    st2.setString(1, id);
                    st2.setString(2, teach);
                    st2.setString(3, rno);
                    st2.setInt(4, 1);
                    st2.setInt(5, result);  
                    st2.setString(6, date);
                    p = st2.executeUpdate();
                    if(p>0)
                    {
                        %>
                        <script type="text/javascript">
                            alert("Congratulations Your Score is= "+<%= result%>+"/"+<%=result1%>);
                            window.location.href = "afterUserLogIn_1st.jsp";
                        </script>
                        <%
                    }
                    else
                    {
                        out.println("not inserted data into database");
                    }
                }
                else
                {
                    out.println("Something wrong on this page");
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
//                out.println("result is "+result+" mark is "+mark+" right is "+right);
//                out.println("num is "+num+"& qno is "+qno+" ans is "+ans+"& answer is "+answer);
                out.println("There is some error on this page");
//                 out.println(e);
            }
            %>
    </body>
</html>
