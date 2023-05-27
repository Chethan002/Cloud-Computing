<%-- 
    Document   : get_token
    Created on : 9 Jan, 2021, 6:45:23 PM
    Author     : JAVA-JP
--%>

<%@page import="Networks.Mail"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String uid = request.getParameter("uid");
    String uname = request.getParameter("uname");
    String filename = request.getParameter("filename");

    System.out.println("Check User uid And uname : " + uid + uname);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement sto = con.createStatement();
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    Date date = new Date();
    String atime = dateFormat.format(date);

    try {
        ResultSet rs = st.executeQuery("SELECT * FROM du_reg where id='" + uid + "' AND name='" + uname + "'");
        if (rs.next()) {
            String umail = rs.getString("email");
            ResultSet rs1 = st1.executeQuery("SELECT * FROM request where uid='" + uid + "' AND uname='" + uname + "' AND filename='" + filename + "'");
            if (rs1.next()) {

                String Dkey = rs1.getString("dkey");
                String msggg = "User Name " + uname + "  \nFile Secret Key :" + Dkey + "";
                Mail ma = new Mail();
                ma.secretMail(msggg, "Secret_Key", umail);

                System.out.println("success");

                response.sendRedirect("View_user_secretkey.jsp?Secretkey_sent");
            } else {
                response.sendRedirect("View_user_secretkey.jsp?Failed");
            }
        } else {
            response.sendRedirect("View_user_secretkey.jsp?Failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>