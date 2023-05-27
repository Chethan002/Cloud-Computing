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
    String doid = request.getParameter("doid");
    String do_name = request.getParameter("do_name");
    String fileid = request.getParameter("fileid");
    String filename = request.getParameter("filename");    
    String uname = request.getParameter("uname");
    String uid = request.getParameter("uid");
    
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement sto = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("SELECT * FROM do_files where doid='" + doid + "' AND fileid='" + fileid + "' AND filename='" + filename + "'");
        if (rs.next()) {
            
            String dkey = rs.getString("dkey");
            //session.setAttribute("attribute", rs.getString("attribute"));
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            int i = sto.executeUpdate("INSERT into request(fileid, filename, time, status, uname, uid, doid, do_name, dkey, file_req) values('" + fileid + "','" + filename + "','" + time + "','waiting', '" + uname + "', '" + uid + "', '" + doid+ "','" + do_name+ "','"+dkey+"','waiting')");
            if (i != 0){
                int j = st1.executeUpdate("update request set file_req ='Request_sent'");
                
            }
            
            response.sendRedirect("request_secretkey1.jsp?Request_sent");
        } else {
            response.sendRedirect("request_secretkey1.jsp?Failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>

