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
    String uid = request.getParameter("id");
    String uname = request.getParameter("name");
    String umail = request.getParameter("email");

    System.out.println("Check User uid And uname : " + uid + uname);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement sto = con.createStatement();
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    Date date = new Date();
    String atime = dateFormat.format(date);

    int min = 5;
    try {
        ResultSet rs = st.executeQuery("SELECT * FROM du_reg where id='" + uid + "' AND email='" + umail + "'");
        if (rs.next()) {
            int j = sto.executeUpdate("insert into token(uid, uname, time , status , approve_time ,expire_time, search_token)values('" + uid + "', '" + uname + "', 'waiting', 'waiting', 'waiting', 'waiting', 'waiting')");

            Random RANDOM = new SecureRandom();
            int PASSWORD_LENGTH = 4;
            String letters = "0123456789";
            String token = "";
            for (int i = 0; i < PASSWORD_LENGTH; i++) {
                int index = (int) (RANDOM.nextDouble() * letters.length());
                token += letters.substring(index, index + 1);
            }
            String Search_token = "File" + token;

            //session.setAttribute("attribute", rs.getString("attribute"));
            int i = sto.executeUpdate("update token set time='" + atime + "', search_token='" + Search_token + "', status='Approved',approve_time=NOW(),expire_time=(SELECT ADDTIME(NOW(), '00:" + min + ":0.000000')) where uid='" + uid + "' AND uname='" + uname + "' ");
            if (i != 0) {

                String msggg = "User Name " + uname + "  \nThis Token Valid For " + min + " Minutes from now \n Search Token:" + Search_token + "";
                Mail ma = new Mail();
                ma.secretMail(msggg, "Search_token", umail);
                String msg = "File Download Key:" + msggg;
                System.out.println("success");
            }
            response.sendRedirect("Get_Search_token.jsp?Success");
        } else {
            response.sendRedirect("Get_Search_token.jsp?Failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>