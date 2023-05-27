<%-- 
    Document   : DO_login
    Created on : 3 Mar, 2021, 1:12:12 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    </head>
    <%
        if (request.getParameter("Success") != null) {
    %>
    <script>alert('Login Success');</script>
    <%            }
    %>
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
                        <li class="active-item"><a href="User_Home.jsp">Home</a></li>
                        <li><a href="Get_Search_token.jsp">Get Search Token</a></li>
                        <li><a href="Search_file.jsp">Search File</a></li>
                        <li><a href="Request_secretkey.jsp">Request Secret Key</a></li>
                        <li><a href="View_user_secretkey.jsp">View Secret Key</a></li>
                        <li><a href="Download_file.jsp">Download</a></li>
                        <li><a href="index.html">Logout</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- MAIN -->
        <main role="main">    
            <!-- Main Header -->
            <header>
                <div class="carousel-default owl-carousel carousel-main carousel-nav-white background-dark text-center">
                    <div class="item">
                        <div class="s-12">
                            <img src="img/header.jpg" alt="">
                            <div class="carousel-content">
                                <div class="content-center-vertical line">
                                    <div class="margin-top-bottom-80">
                                        <!-- Title -->
                                        <h1 class="text-white margin-bottom-30 text-size-60 text-m-size-30 text-line-height-1">Efficient Regular Language Search <br>for Secure Cloud Storage</h1> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>              
                </div>               
            </header>
            <%
                String id = (String) session.getAttribute("duid");
                String name = (String) session.getAttribute("duname");
                String email = (String) session.getAttribute("dumail");


            %>
            <section class="section background-white text-center">
                <div class="line">
                    <h2 class="text-size-50  text-m-size-40 text-center">Welcome <%=name.toUpperCase()%>!</h2>
                    <hr class="break-small background-primary break-center">
                </div>
                <div class="container">
                    <img src="img/duhome.jpg" />
                </div>
            </section>
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
