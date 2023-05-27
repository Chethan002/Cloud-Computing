<%-- 
    Document   : DO_login
    Created on : 3 Mar, 2021, 1:12:12 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DBconnection.SQLconnection"%>
<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Efficient Regular Language Search for Secure
            Cloud Storage</title>
        <link rel="stylesheet" href="css/components.css">
        <link rel="stylesheet" href="css/icons.css">
        <link rel="stylesheet" href="css/responsee.css">
        <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="owl-carousel/owl.theme.css">     
        <link rel="stylesheet" href="css/template-style.css">
        <link href='https://fonts.googleapis.com/css?family=Playfair+Display&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>      
    </head><style>
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #4CAF50;
            color: white;
        }
    </style>
    <body class="size-1140">
        <!-- HEADER -->
        <header role="banner" class="position-absolute">    
            <!-- Top Navigation -->
            <nav class="background-transparent background-transparent-hightlight full-width sticky">
                <div class="s-12 l-2">
                    <a href="index.html" class="logo">
                        <!-- Logo White Version -->
                        <img class="logo-white" src="img/logo.png" alt="">
                        <!-- Logo Dark Version -->
                        <img class="logo-dark" src="img/logo-dark.png" alt="">
                    </a>
                </div>
                <div class="top-nav s-12 l-10">
                    <ul class="right chevron">
                        <li><a href="TTP_Home.jsp">Home</a></li>
                        <li class="active-item"><a href="View_owners1.jsp">View Owners</a></li>
                        <li><a href="View_users1.jsp">View Users</a></li>
                        <li><a href="View_user_req.jsp">View User Request</a></li>
                        <li><a href="index.html">Logout</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- MAIN -->
        <main role="main">    
            <!-- Main Header -->
            <header class="section background-dark">
                <div class="line">        
                    <h1 class="text-white margin-top-bottom-40 text-size-60 text-line-height-1">Efficient Regular Language Search <br>for Secure Cloud Storage</h1>
                </div>  
            </header>
            <section class="section background-white text-center">
                <div class="line">
                    <h2 class="text-size-50  text-m-size-40 text-center">Data Owners</h2>
                    <hr class="break-small background-primary break-center">
                </div>
                <div class="container">
                    <table id="customers">
                        <th>DO ID</th>
                        <th>Name </th>
                        <th>Email </th>
                        <th>Gender</th>
                        <th>DOB</th>
                        <th>Address</th>
                        <th>Action</th>
                            <%

                                Connection con = SQLconnection.getconnection();
                                Statement st = con.createStatement();
                                try {
                                    ResultSet rs = st.executeQuery("Select * from do_reg");
                                    while (rs.next()) {
                            %>
                        <tr>
                        <form method="post" action="owner_approve.jsp">
                            <td><input style="background-color: transparent; border: none; color: black" name="doid" value="<%=rs.getString("id")%>"  type="text"  readonly=""</td>
                            <td><input style="background-color: transparent; border: none; color: black" name="do_name" value="<%=rs.getString("name")%>"  type="text"  readonly=""</td>
                            <td><input style="background-color: transparent; border: none; color: black" name="email" size="35" value="<%=rs.getString("email")%>"  type="text"  readonly=""</td>
                            <td><input style="background-color: transparent; border: none; color: black" name="gender" value="<%=rs.getString("gender")%>"  type="text"  readonly=""</td>
                            <td><input style="background-color: transparent; border: none; color: black" name="dob" value="<%=rs.getString("dob")%>"  type="text"  readonly=""</td>
                            <td><input style="background-color: transparent; border: none; color: black" name="address" value="<%=rs.getString("address")%>"  type="text"  readonly=""</td>
                            <td><button type="submit" class="s-12 submit-form button background-primary text-white">Approve</button></td>
                        </form>
                        </tr>
                        <%                                        }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                    </table>
                </div>
            </section>
        </main>
        <footer>
            <hr class="break margin-top-bottom-0" style="border-color: rgba(0, 38, 51, 0.80);">

            <!-- Bottom Footer -->
            <section class="padding background-dark full-width">
                <div class="s-12 l-6">
                    <p class="text-size-12"></p>
                    <p class="text-size-12"></p>
                </div>
                <div class="s-12 l-6">
                </div>
            </section>
        </footer>
        <script type="text/javascript" src="js/responsee.js"></script>
        <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
        <script type="text/javascript" src="js/template-scripts.js"></script>
    </body>
</html>
