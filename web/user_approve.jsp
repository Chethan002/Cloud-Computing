<%-- 
    Document   : owner_approve
    Created on : 11 Jan, 2021, 4:24:22 PM
    Author     : JAVA-JP
--%>

<%@page import="Networks.Mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("duid");
    
    String mail = request.getParameter("email");

    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    Connection conn = SQLconnection.getconnection();
    Statement sto = conn.createStatement();
    st = conn.createStatement();

    try {
        int i = sto.executeUpdate("update du_reg set status='Approved'  where id='" + id + "' ");
        System.out.println("test print==" + id);
        if (i != 0) {
            ResultSet rs = st.executeQuery(" SELECT * from du_reg where id = '" + id + "' ");
            if (rs.next()) {
                String msggg = "Data User registration has been approved";
                Mail ma = new Mail();
                ma.secretMail(msggg, "Downloadkey", mail);
                String msg = "File Download Key:" + msggg;
                System.out.println("success");
                System.out.println("success");
                response.sendRedirect("View_users1.jsp?Approved");
            } else {

                System.out.println("failed");
                response.sendRedirect("View_users1.jsp?Failed");
            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
