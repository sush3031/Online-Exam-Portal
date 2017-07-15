<%-- 
    Document   : addtest_database
    Created on : 10 Feb, 2017, 1:52:41 PM
    Author     : sarthak agarwal
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%   
    String teach_id = (String)session.getAttribute("username");
    out.println(teach_id);
    String test_id = (String)session.getAttribute("test_id");
    out.println(test_id);
    out.println("here1");
    String subid = (String)session.getAttribute("sbId");
    out.println(subid);
    out.println("here2");
    int q_No = 0,marks=0;
    String question = "";
    String a = "";
    String b = "";
    String c = "";
    String d = "";
    String desc = "";
    String right = "";    
    String pic = "";

    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    if (!isMultipart)
    {
        out.println("sorry");
    }
    else
    {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List items = null;
        try
        {
            items = upload.parseRequest(request);
        }
        catch (FileUploadException e) 
        {
            e.printStackTrace();
        }
        Iterator itr = items.iterator();
        while (itr.hasNext())
        {
            FileItem item = (FileItem) itr.next();
            if (item.isFormField())
            {
                String name = item.getFieldName();
                String value = item.getString();
                if(name.equals("number"))
                {
                    q_No = Integer.parseInt(value);
                }
                if (name.equals("questions"))
                {
                    question = value;
                }
                if(name.equals("a"))
                {
                    a = value;
                }
                if(name.equals("b"))
                {
                    b = value;
                }
                if(name.equals("c"))
                {
                    c = value;
                }
                if(name.equals("d"))
                {
                    d = value;
                }
                if(name.equals("marks"))
                {
                    marks = Integer.parseInt(value);
                }
                if(name.equals("rightans"))
                {
                    right = value;
                }
                if(name.equals("description"))
                {
                    desc = value;
                }
            }
            else
            {
                try
                {
                    pic = item.getName();
                    File savedFile = new File("C:/Users/sarthak agarwal/Documents/NetBeansProjects/new_online/web/UploadedImages/" + pic);
                    item.write(savedFile);
                }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
            }
        }
        Connection connection = null;
        String connectionURL = "jdbc:mysql://localhost:3306/onlineexamportal";
        PreparedStatement psmnt = null;
        PreparedStatement psmnt1 = null;
        PreparedStatement psmnt2 = null;
        ResultSet rs = null;
        ResultSet rs1 = null;     
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection(connectionURL, "root", "");
            psmnt = connection.prepareStatement("insert into add_test(teach_id,test_id,qNo,questions,a,b,c,d,description,rightAns,pic,marks) values(?,?,?,?,?,?,?,?,?,?,?,?)"); 
            psmnt.setString(1, teach_id);
            psmnt.setString(2, test_id);
            psmnt.setInt(3, q_No);
            psmnt.setString(4, question);
            psmnt.setString(5, a);
            psmnt.setString(6, b);
            psmnt.setString(7, c);
            psmnt.setString(8, d);
            psmnt.setString(9, desc);
            psmnt.setString(10, right);
            psmnt.setString(11, pic);
            psmnt.setInt(12, marks);
            int s = psmnt.executeUpdate();
            if(s>0)
            {
                out.println("Uploaded successfully !");
                psmnt1 = connection.prepareStatement("select test_id,No_of_q from before_addtest where teach_id = ? AND sub_name = ? AND visibility = ?");
                psmnt1.setString(1,teach_id);
                psmnt1.setString(2,subid);
                psmnt1.setInt(3, 1);
                rs = psmnt1.executeQuery();
                String tes_id = null;
                String n_q = null;
                out.println("here");
                if(rs.next())
                {
                    tes_id = rs.getString(1);
                    n_q = rs.getString(2);
                }
                out.println("test id is "+tes_id+" and no of questions in test is "+n_q);
                    psmnt2 = connection.prepareStatement("select MAX(qNo) from add_test where teach_id=? AND test_id=?");
                    psmnt2.setString(1,teach_id);
                    psmnt2.setString(2,tes_id);
                    rs1 = psmnt2.executeQuery();
                    int no = 0;
                    if(rs1.next())
                    {
                        no = rs1.getInt(1);
                        out.println(no);
                    }
                    if(no <= Integer.parseInt(n_q))
                    {
                        response.sendRedirect("afterAddTest.jsp");
                    }
            }
            else
            {
                out.println("Error!");
            }
        }
        catch(Exception e)
        {
            out.println(pic);
        }
    }
%>
</td></tr></table></center>
