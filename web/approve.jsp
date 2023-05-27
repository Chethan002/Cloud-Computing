<%-- 
    Document   : request_key
    Created on : 11 Jan, 2021, 12:10:30 PM
    Author     : JAVA-JP
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String uname = request.getParameter("uname");
    
    String fileid = request.getParameter("fileid");
    String filename = request.getParameter("filename");    
    
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement sto = con.createStatement();
    try {
        int i = st.executeUpdate("update request set status ='Approved' where uname='" + uname + "' AND fileid ='" + fileid + "' AND filename='" + filename + "'");
        if (i != 0 ) {
           response.sendRedirect("View_secretkey.jsp?File_approved");
        } else {
            response.sendRedirect("View_secretkey.jsp?Failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>

