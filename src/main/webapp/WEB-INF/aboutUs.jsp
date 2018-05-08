<%@ page import="com.worldmusic.worldmusic.model.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Remix</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <!-- Seo Meta -->
    <meta name="description" content="Remix - Music & Band Site Template HTML5 and CSS3">
    <meta name="keywords" content="remix, music, light, dark, themeforest, multi purpose, band, css3, html5">
    <!-- Styles -->
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-responsive.min.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../styles/style.css" id="dark" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../js/rs-plugin/css/settings.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../styles/icons/icons.css" media="screen"/>
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
    <!-- Favicon -->
    <link rel="shortcut icon" href="../images/favicon.ico">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=EmulateIE8; IE=EDGE"/>
    <script src="../http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link href="../adminpage/assets/fonts/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>

    <!--Slayder-->
    <link rel="stylesheet" href="../slayder/css/style.css">
    <script type="text/javascript" src="../slayder/js/jssor.slider.min.js"></script>
    <!--END Slayder-->

</head>


<body id="fluidGridSystem">
<div id="layout" class="full">
    <header id="header" class="glue">
        <div class="row clearfix">
            <div class="little-head">
                <c:if test="${currentUser == null}">
                    <a href="/loginPage">
                        <div id="Login_PopUp_Link" class="sign-btn tbutton small"><span>Sign In</span></div>
                    </a>
                </c:if>
                <c:if test="${currentUser != null}">
                    <a href="/logout">
                        <div class="sign-btn tbutton small"><span>Sign out</span></div>
                    </a>
                </c:if>
                <div class="social social-head">
                    <a href="https://www.facebook.com/vahan.khachatryan.3576?ref=bookmarks" class="bottomtip" title="Like us on Facebook" target="_blank"><i
                            class="icon-facebook"></i></a>
                    <a href="https://mail.google.com" class="bottomtip" title="Gmail"
                       target="_blank"><i class="icon-google-plus"></i></a>
                    <a href="http://instagram.com/" class="bottomtip" title="instagram" target="_blank"><i
                            class="icon-instagram"></i></a>
                    <a href="https://www.linkedin.com/in/vahan-khachatryan-b48617162/" class="bottomtip" title="Linkedin" target="_blank"><i
                            class="icon-linkedin"></i></a>
                </div><!-- end social -->
                <div class="search">
                    <form action="/search" id="search" method="get">
                        <input id="inputhead" name="name" type="text" onfocus="if (this.value=='Start Searching...') this.value = '';" onblur="if (this.value=='') this.value = 'Start Searching...';" value="Start Searching..." placeholder="Start Searching ...">
                        <button type="submit"><i class="icon-search"></i></button>
                    </form><!-- end form -->
                </div><!-- search -->

            </div><!-- little head -->
        </div><!-- row -->

        <div class="headdown">
            <div class="row clearfix">
                <div class="logo bottomtip" title="Best and Most Popular Musics">
                    <a href="/home"><img src="../images/LOGO.png"></a>
                </div><!-- end logo -->

                <nav>
                    <ul class="sf-menu">
                        <li><a href="/mp3">MP3<span class="sub">full archive</span></a></li>
                        <li><a href="/genres">Genre<span class="sub">all genres</span></a>
                            <spring:form action="/genreView" method="post" enctype="multipart/form-data">
                                <ul>
                                    <c:forEach items="${genres}" var="genre">
                                        <li><a href="/genreSingle?genreId=${genre.id}">${genre.name}</a></li>
                                    </c:forEach>

                                </ul>
                            </spring:form>
                        </li>

                        <li><a href="/albums">Album<span class="sub">all albums of performers</span></a>
                        </li>
                        <li><a href="/artists">Artist<span class="sub">all artists</span></a>
                        </li>
                        <li><a href="/aboutUs">About us<span class="sub">creator and developer</span></a>
                        </li>
                    </ul><!-- end menu -->
                </nav><!-- end nav -->
            </div><!-- row -->
        </div><!-- headdown -->
    </header><!-- end header -->
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="row row-fluid clearfix mbf">
        <div class="span8">
            <div class="def-block">
                <div class="news row-fluid animtt" data-gen="fadeUp" style="opacity:100;">
                    <div class="span5"><img width="240" height="260" class="four-radius"
                                            src="../images/AV-494.jpg" alt="#">
                    </div>
                    <div class="span7">
                        <h3 class="news-title">Vahan Khachatryan
                        </h3>
                        <p>Creator And Developer<br><br>
                            Country: Armenia,Gyumri<br>
                            Year of birth: 18.02.2001<br>
                            Skype: vahan20141<br>
                            Phone: +374 43 454443<br>
                            Inbox: vahan.gti8190@mail.ru<br>
                    </div><!-- span7 -->
                </div>
            </div><!-- def block -->
            <br>
        </div><!-- span8 aboutUs -->
    </div><!-- end page content -->

    <footer id="footer">
        <div class="footer-last">
            <div class="row clearfix">
                <span class="copyright">© 2018 by <a href="https://www.facebook.com/vahan.khachatryan.3576?ref=bookmarks">Vahan</a></span>
                <div id="toTop"><i class="icon-angle-up"></i></div><!-- Back to top -->

                <div class="foot-menu">
                    <ul>
                        <li><a href="/mp3">MP3</a></li>
                        <li><a href="/genres">Genre</a></li>
                        <li><a href="/albums">Album</a></li>
                        <li><a href="/artists">Artist</a></li>
                        <li><a href="/aboutUs">About us</a></li>
                    </ul><!-- end links -->
                </div><!-- end foot menu -->
            </div><!-- row -->
        </div><!-- end last -->

    </footer><!-- end footer -->

</div><!-- end layout -->
<!-- Scripts -->
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/theme20.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="../js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="../js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="../js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="../js/jquery.jplayer.js"></script>
<script type="text/javascript" src="../js/ttw-music-player-min.js"></script>
<script type="text/javascript" src="../music/myplaylist.js"></script>
<script type="text/javascript" src="../js/countdown.js"></script>
<script type="text/javascript" src="../js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="../js/custom.js"></script>
<script type="text/javascript">
    /* <![CDATA[ */
    jQuery(document).ready(function () {
        jQuery('.tp-banner').revolution({
            delay: 9000,
            startwidth: 1060,
            startheight: 610,
            hideThumbs: 10,
            navigationType: "off",
            fullWidth: "on",
            forceFullWidth: "on"
        });
        jQuery("#event1").countdown({
                date: "31 December 2017 23:59:59",
                format: "on"
            },
            function () {
                // callback function
            });
    });
    /* ]]> */
</script>
</body>
</html>
