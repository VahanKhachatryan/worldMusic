<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 7 ]>
<html class="ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]>
<html class="ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]>
<html class="ie9" xmlns="http://www.w3.org/1999/xhtml" lang="en-US"> <![endif]-->
<!--[if (gte IE 10)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
<!--<![endif]-->
<head>
    <title>MP3 Album Missing You | Remix</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <!-- Seo Meta -->
    <meta name="description" content="Missing You | Remix">
    <meta name="keywords"
          content="mp3, Album, Missing You, remix, music, light, dark, themeforest, multi purpose, band, css3, html5">

    <!-- Styles -->
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-responsive.min.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../styles/style.css" id="dark" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../styles/icons/icons.css" media="screen"/>
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
    <!-- Favicon -->
    <link rel="shortcut icon" href="../images/favicon.ico">
    <link rel="apple-touch-icon" href="../images/apple-touch-icon.png">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=EmulateIE8; IE=EDGE"/>
    <script src="../http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link href="../adminpage/assets/fonts/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>

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

    <div class="under_header">
        <img src="../images/assets/breadcrumbs12.png" alt="#">
    </div><!-- under header -->

    <div class="page-content back_to_up">
        <div class="row clearfix mb">
            <div class="breadcrumbIn">
                <ul>
                    <li><a href="/home" class="toptip" title="Homepage"> <i class="icon-home"></i> </a></li>
                    <li><a href="/mp3"> MP3s </a></li>
                </ul>
            </div><!-- breadcrumb -->
        </div><!-- row -->

        <div class="row row-fluid clearfix mbf">
            <div class="posts">
                <div class="row clearfix mbf">
                    <div class="music-player-list"></div>
                    <!-- end player -->


                    <p>${music.description}</p>

                    <p>
                        <span> Tags: </span>
                        <c:forEach items="${artists}" var="artist">${artist.name} ${artist.surname}</c:forEach>,
                        ${music.album.name}
                    </p><!-- tags -->

                </div>
                <!-- post -->

                <div class="span8 posts">
                    <div class="def-block">
                        <ul class="tabs">
                            <li><a href="/mp3" class="active">All mp3</a></li>
                            <li><a href="/albums">Albums</a></li>
                            <li><a href="/genres">Genres</a></li>
                            <li><a href="/artists">Artists</a></li>
                            <!--<li><a href="mp3s.html#Soon"> Comming Soon </a></li>-->
                        </ul>
                        <!-- tabs -->

                        <ul class="tabs-content">
                            <li id="Latest" class="active">
                                <div class="post no-border no-mp clearfix">
                                    <ul class="tab-content-items">
                                        <spring:form action="/musicView" method="post" enctype="multipart/form-data">
                                            <c:forEach items="${musics}" var="music">
                                                <li class="grid_6">
                                                    <a class="m-thumbnail" href="/musicSingle?musicId=${music.id}">
                                                        <img width="50" height="50"
                                                             src="/image?fileName=${music.picture}"></a>
                                                    <h3>
                                                        <a href="/musicSingle?musicId=${music.id}&userId=${m}">${music.name}</a>
                                                    </h3>
                                                    <span>
                                            <c:forEach items="${music.artists}" var="artis">
                                                ${artis.name}</c:forEach></span>
                                                </li>
                                            </c:forEach>
                                        </spring:form>
                                    </ul>
                                </div><!-- latest -->
                            </li><!-- tab content -->
                        </ul><!-- end tabs -->

                    </div><!-- def block -->
                </div><!-- span8 posts -->


                <!-- Disqus Comment Form -->
                <script type="text/javascript"></script>
                <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments
                    powered by Disqus.</a></noscript>
                <!-- Disqus Comment Form -->

            </div><!-- def block -->
        </div><!-- span8 posts -->

    </div><!-- row clearfix -->
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

<!-- end layout -->
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
    var myPlaylist = [
        {
            mp3: '/image?fileName=${music.music}',
            title: '${music.name}',
            <c:forEach items="${artists}" var="artist">
            artist: '${artist.name} ${artist.surname}',
            </c:forEach>
            <c:if test="${currentUser == null}">
            buy: '/loginPage',
            </c:if>
            <c:if test="${currentUser != null}">
            buy: '/downloadMusic?musicName=${music.music}',
            </c:if>
            cover: '/image?fileName=${music.picture}'
        },

    ];
    ;


</script>
</body>
</html>