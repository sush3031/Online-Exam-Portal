<%-- 
    Document   : addtest_database
    Created on : 8 Feb, 2017, 1:19:00 AM
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
<!DOCTYPE html>
<%   
    int T_Q = 1;
    String ques = "";
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
                if (name.equals("questions"))
                {
                    ques = value;
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
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection(connectionURL, "root", "");
            psmnt = connection.prepareStatement("insert into add_test(teach_id,test_id,qNo,questions,a,b,c,d,description,rightAns,pic) values(?,?,?,?,?,?,?,?,?,?,?)"); 
            psmnt.setString(1, "ajay131");
            psmnt.setString(2, "ajay1311");
            psmnt.setInt(3, T_Q);
            psmnt.setString(4, ques);
            psmnt.setString(5, a);
            psmnt.setString(6, b);
            psmnt.setString(7, c);
            psmnt.setString(8, d);
            psmnt.setString(9,desc);
            psmnt.setString(10,right);
            psmnt.setString(11, pic);
            int s = psmnt.executeUpdate();
            if(s>0)
            {
                out.println("Uploaded successfully !");
            }
            else
            {
                System.out.println("Error!");
            }
        }
        catch(Exception e)
        {
            out.println("There was somethiong wrong");
        }
    }
%>
