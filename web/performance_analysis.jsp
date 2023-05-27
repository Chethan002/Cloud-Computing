<%-- 
    Document   : DO_login
    Created on : 3 Mar, 2021, 1:12:12 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.google.gson.Gson"%>
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
                        <li><a href="Cloud_Home.jsp">Home</a></li>
                        <li><a href="Cloud_files.jsp">View Cloud Files</a></li>
                        <li><a href="View_owners.jsp">View Data Owners</a></li>
                        <li><a href="View_users.jsp">View Users</a></li>
                        <li class="active-item"><a href="performance_analysis.jsp">Performance Analysis</a></li>
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
                    <h2 class="text-size-50  text-m-size-40 text-center">Analysis</h2>
                    <hr class="break-small background-primary break-center">
                </div>
                <div class="container">
                    <script type="text/javascript">
                        window.onload = function () {

                            var chart = new CanvasJS.Chart("chartContainer", {
                                animationEnabled: true,
                                exportEnabled: true,
                                title: {
                                    text: "Encryption Time"
                                },
                                axisY: {
                                    includeZero: true
                                    
                                },
                                data: [{
                                        type: "column", //change type to bar, line, area, pie, etc
                                        //indexLabel: "{y}", //Shows y value on all Data Points
                                        indexLabelFontColor: "#5A5757",
                                        indexLabelPlacement: "outside",
                                        dataPoints: [{y: 8, label: "Existing System"},
                                            {y: 4, label: "Proposed System"}]
                                    }]
                            });
                            chart.render();

                        }
                    </script>
                    <div id="chartContainer" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
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
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        <!-- About us Skills Circle progress  -->
        <script>
                        // First circle
                        new Circlebar({
                            element: "#circle-1",
                            type: "progress",
                            maxValue: "90"
                        });

                        // Second circle
                        new Circlebar({
                            element: "#circle-2",
                            type: "progress",
                            maxValue: "84"
                        });

                        // Third circle
                        new Circlebar({
                            element: "#circle-3",
                            type: "progress",
                            maxValue: "60"
                        });

                        // Fourth circle
                        new Circlebar({
                            element: "#circle-4",
                            type: "progress",
                            maxValue: "74"
                        });

        </script>
        <script type="text/javascript" src="js/responsee.js"></script>
        <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
        <script type="text/javascript" src="js/template-scripts.js"></script>
    </body>
</html>
