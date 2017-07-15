<%-- 
    Document   : addDatabase.jsp
    Created on : 6 Oct, 2016, 1:13:32 AM
    Author     : sarthak agarwal
--%>

        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*" %> 
        <%@ page import="org.apache.commons.fileupload.*"%> 
        <%@ page import="org.apache.commons.io.output.*"%> 
        <%@ page import="org.apache.commons.fileupload.servlet.*"%> 
        <%@ page import="org.apache.commons.fileupload.disk.*"%> 
        <%@ page import="java.io.*"%> 
        <%@ page import="java.util.*"%> 
        <%@ page import="java.util.zip.*"%> 
        <%@ page errorPage="errorPage.jsp" %>
        <%
//            String contentType = request.getContentType();
//            out.println(contentType);
//            if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0))
//            {
                String ques = (String)request.getParameter("questions");
                String one =  (String)request.getParameter("a");
                String two =  (String)request.getParameter("b");
                String three =  (String)request.getParameter("c");
                String four =  (String)request.getParameter("d");
                String right = (String)request.getParameter("rightans");
                String desc = (String)request.getParameter("description");
                String saveFile="2";
//    String contentType = request.getContentType();
//    if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
//                DataInputStream in = new DataInputStream(request.getInputStream());
//                int formDataLength = request.getContentLength();
//                byte dataBytes[] = new byte[formDataLength];
//                int byteRead = 0;
//                int totalBytesRead = 0;
//                while(totalBytesRead < formDataLength){
//                byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
//                totalBytesRead += byteRead;
//                }
//                String file = new String(dataBytes);
//                saveFile = file.substring(file.indexOf("filename=\"") + 10);
//                saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
//                saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
//                int lastIndex = contentType.lastIndexOf("=");
//                String boundary = contentType.substring(lastIndex + 1,contentType.length());
//                int pos;
//                pos = file.indexOf("filename=\"");
//                pos = file.indexOf("\n", pos) + 1;
//                pos = file.indexOf("\n", pos) + 1;
//                pos = file.indexOf("\n", pos) + 1;
//                int boundaryLocation = file.indexOf(boundary, pos) - 4;
//                int startPos = ((file.substring(0, pos)).getBytes()).length;
//                int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
//                File ff = new File("C:/Users/sarthak agarwal/Documents/NetBeansProjects/new_online/web/UploadedImages/"+saveFile);
//                FileOutputStream fileOut = new FileOutputStream(ff);
//                fileOut.write(dataBytes, startPos, (endPos - startPos));
//                fileOut.flush();
//                fileOut.close();
           // String img = (String)request.getParameter("dataFile");
               out.println(" ques is "+ques+" a is "+one+" b is "+two+" c is "+three+" d is "+four+" right is "+right+" desc is "+desc);
              // out.println(saveFile);
               Connection con = null;
               Statement st = null;             
            try
            {
 //              String uname = request.getParameter("name");
//               String pass = request.getParameter("password");
                 Class.forName("com.mysql.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexamportal","root","");
                 st = con.createStatement();
                 int i = st.executeUpdate("insert into add_test values ('ajay132','2',2,'"+ques+"','"+one+"','"+two+"','"+three+"','"+four+"','"+desc+"','"+right+"','"+saveFile+"')");
                 if(i>0)
                 {
                     out.println("successfully inserted ");
                 }
                 else
                 {
                     out.println("somthing wrong");
                 }
              }
              catch(Exception e)
              {
                  //response.sendRedirect("errorPage.jsp");
                  out.println("something went wrong");
              }
            finally
            {
                if(st != null)
                 {
                    st.close();
                 }
                 if(con != null)
                 {
                    con.close();
                 }
            }
 //}
//            else
//            {
//                out.println("datatype is not correct");
//            }
 %>
