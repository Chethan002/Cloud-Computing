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
        if (request.getParameter("File_uploaded") != null) {
    %>
    <script>alert('File Uploaded Successfully');</script>
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
                        <li><a href="DO_Home.jsp">Home</a></li>
                        <li class="active-item"><a href="File_upload.jsp">File Upload</a></li>
                        <li><a href="View_files.jsp">View Files</a></li>
                        <li><a href="View_secretkey.jsp">View Secret Key Request</a></li>
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
                    <h2 class="text-size-50  text-m-size-40 text-center">Upload File</h2>
                    <hr class="break-small background-primary break-center">
                </div>
                <div class="line">
                    <div class="margin">
                        <!-- Contact Form -->
                        <div class="s-12 m-12 l-6">
                            <br><br><br><br><br><br><br><br><br>
                            <form class="customform" method="post" action="upload" enctype="multipart/form-data">
                                <div class="s-10"> 
                                    <input type="text" name="keys" placeholder="File Keyword:" required="required" /><br><br>
                                </div>
                                <div class="s-10"> 
                                    <input type="file" name="fileToUpload" required="required" /><br><br>
                                </div>
                                <div class="s-12 m-12 l-6">
                                    <button class="s-12 submit-form button background-primary text-white" type="submit">Upload</button>
                                </div>
                            </form>
                        </div>
                        <div class="s-12 m-12 l-6">
                            <img src="img/upload.png" />
                        </div>
                    </div>    
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
