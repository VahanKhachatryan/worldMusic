<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class=" ">
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
    <meta charset="utf-8"/>
    <title>Complete Admin : Music Genres</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

    <link rel="shortcut icon" href="../adminpage/assets/images/favicon.png" type="image/x-icon"/>    <!-- Favicon -->
    <link rel="apple-touch-icon-precomposed" href="../adminpage/assets/images/apple-touch-icon-57-precomposed.png">
    <!-- For iPhone -->
    <link rel="apple-touch-icon-precomposed" sizes="114x114"
          href="../adminpage/assets/images/apple-touch-icon-114-precomposed.png">
    <!-- For iPhone 4 Retina display -->
    <link rel="apple-touch-icon-precomposed" sizes="72x72"
          href="../adminpage/assets/images/apple-touch-icon-72-precomposed.png">    <!-- For iPad -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="../adminpage/assets/images/apple-touch-icon-144-precomposed.png">    <!-- For iPad Retina display -->


    <!-- CORE CSS FRAMEWORK - START -->
    <link href="../adminpage/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../adminpage/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../adminpage/assets/plugins/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="../adminpage/assets/fonts/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="../adminpage/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
    <link href="../adminpage/assets/plugins/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" type="text/css"/>
    <!-- CORE CSS FRAMEWORK - END -->

    <!-- HEADER SCRIPTS INCLUDED ON THIS PAGE - START -->


    <!-- HEADER SCRIPTS INCLUDED ON THIS PAGE - END -->


    <!-- CORE CSS TEMPLATE - START -->
    <link href="../adminpage/assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="../adminpage/assets/css/responsive.css" rel="stylesheet" type="text/css"/>
    <!-- CORE CSS TEMPLATE - END -->

</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class=" "><!-- START TOPBAR -->
<div class='page-topbar '>
    <div class='logo-area'>

    </div>
    <div class='quick-area'>
        <div class='pull-left'>
            <ul class="info-menu left-links list-inline list-unstyled">
                <li class="sidebar-toggle-wrap">
                    <a data-toggle="sidebar" class="sidebar_toggle">
                        <i class="fa fa-bars"></i>
                    </a>
                </li>
                <li class="hidden-sm hidden-xs searchform">
                </li>
            </ul>
        </div>
        <div class='pull-right'>
            <ul class="info-menu right-links list-inline list-unstyled">
                <li class="profile">
                    <a href="index-music.html#" data-toggle="dropdown" class="toggle">
                        <img src="/image?fileName=${currentUser.user.picUrl}" alt="user-image"
                             class="img-circle img-inline">
                        <span>${currentUser.user.name} ${currentUser.user.surname}<i class="fa fa-angle-down"></i></span>
                    </a>
                    <ul class="dropdown-menu profile animated fadeIn">
                        <li class="last">
                            <a href="/logout">
                                <i class="fa fa-lock"></i>
                                Logout
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>

</div>
<!-- END TOPBAR -->
<!-- START CONTAINER -->
<div class="page-container row-fluid container-fluid">

    <!-- SIDEBAR - START -->

    <div class="page-sidebar pagescroll">

        <!-- MAIN MENU - START -->
        <div class="page-sidebar-wrapper" id="main-menu-wrapper">

            <!-- USER INFO - START -->
            <div class="profile-info row">

                <div class="profile-image col-xs-4">
                    <a>
                        <img src="/image?fileName=${currentUser.user.picUrl}" class="img-responsive img-circle">
                    </a>
                </div>

                <div class="profile-details col-xs-8">

                    <h3>
                        ${currentUser.user.name} ${currentUser.user.surname}
                    </h3>

                    <p class="profile-title">Music World Admin</p>

                </div>

            </div>
            <!-- USER INFO - END -->


            <ul class='wraplist'>


                <li class="">
                    <a href="/admin">
                        <i class="fa fa-dashboard"></i>
                        <span class="title">Dashboard</span>
                    </a>
                </li>

                <li class="open">
                    <a href="javascript:;">
                        <i class="fa fa-music"></i>
                        <span class="title">Genres</span>
                        <span class="arrow open"></span>
                    </a>
                    <ul class="sub-menu" style='display:block;'>
                        <li>
                            <a class="active" href="/allGenre">All Genres</a>
                        </li>
                        <li>
                            <a class="" href="/addGenre">Add Genre</a>
                        </li>
                        <li>
                            <a class="" href="/genreDelete">Delete Genre</a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="fa fa-microphone"></i>
                        <span class="title">Albums</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a class="" href="/allAlbum">All Albums</a>
                        </li>
                        <li>
                            <a class="active" href="/addAlbum">Add Album</a>
                        </li>
                        <li>
                            <a class="" href="/deleteAlbum">Delete Album</a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="fa fa-users"></i>
                        <span class="title">Artists</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a class="" href="/allArtist">All Artists</a>
                        </li>
                        <li>
                            <a class="" href="/addArtist">Add Artist</a>
                        </li>
                        <li>
                            <a class="" href="/deleteArtist">Delete Artist</a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="fa fa-music"></i>
                        <span class="title">Songs</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a class=""
                               href="/addMusic">Add Song</a>
                        </li>
                        <li>
                            <a class=""
                               href="/deleteMusic">Edit Song</a>
                        </li>
                        <li>
                            <a class=""
                               href="/allMusic">All Song</a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="fa fa-play-circle"></i>
                        <span class="title">News</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a class=""
                               href="/allNews">All News</a>
                        </li>
                        <li>
                            <a class=""
                               href="/addNews">AddNews</a>
                        </li>
                        <li>
                            <a class=""
                               href="/deleteNews">Delete
                                News</a>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>
        <!-- MAIN MENU - END -->


    </div>
    <!--  SIDEBAR - END -->
    <!-- START CONTENT -->
    <section id="main-content" class=" ">
        <section class="wrapper main-wrapper row" style=''>

            <div class='col-xs-12'>
                <div class="page-title">

                    <div class="pull-left">
                        <!-- PAGE HEADING TAG - START --><h1 class="title">Music Genres</h1>
                        <!-- PAGE HEADING TAG - END -->                            </div>

                    <div class="pull-right hidden-xs">
                        <ol class="breadcrumb">
                            <li>
                                <a href="index.html"><i class="fa fa-home"></i>Home</a>
                            </li>
                            <li>
                                <a href="mus-genres.html">Genres</a>
                            </li>
                            <li class="active">
                                <strong>All Genres</strong>
                            </li>
                        </ol>
                    </div>

                </div>
            </div>
            <div class="clearfix"></div>
            <!-- MAIN CONTENT AREA STARTS -->

            <div class="col-lg-12">
                <section class="box nobox ">
                    <div class="content-body">
                        <div class="row">

                            <div class="col-xs-12 col-md-9">
                                <br>
                            </div>
                            <div class="clearfix"></div>
                            <br>
                            <div class="col-xs-12 music_genre_search search_data">
                                <ul class="nav nav-tabs vertical col-xs-3 col-md-2 left-aligned">
                                    <li class="active">
                                        <a href="mus-genres.html#all-1" data-toggle="tab">
                                            <i class="fa fa-home"></i> All Genres
                                        </a>
                                    </li>
                                    <c:forEach items="${genres}" var="genre">
                                        <li>
                                            <a>${genre.name}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <!-- MAIN CONTENT AREA ENDS -->
        </section>
    </section>
    <!-- END CONTENT -->
    <div class="page-chatapi hideit">

        <div class="search-bar">
            <input type="text" placeholder="Search" class="form-control">
        </div>

        <div class="chat-wrapper">
            <h4 class="group-head">Groups</h4>
            <ul class="group-list list-unstyled">
                <li class="group-row">
                    <div class="group-status available">
                        <i class="fa fa-circle"></i>
                    </div>
                    <div class="group-info">
                        <h4><a href="mus-genres.html#">Work</a></h4>
                    </div>
                </li>
                <li class="group-row">
                    <div class="group-status away">
                        <i class="fa fa-circle"></i>
                    </div>
                    <div class="group-info">
                        <h4><a href="mus-genres.html#">Friends</a></h4>
                    </div>
                </li>

            </ul>


            <h4 class="group-head">Favourites</h4>
            <ul class="contact-list">

                <li class="user-row " id='chat_user_1' data-user-id='1'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-1.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Clarine Vassar</a></h4>
                        <span class="status available" data-status="available"> Available</span>
                    </div>
                    <div class="user-status available">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>
                <li class="user-row " id='chat_user_2' data-user-id='2'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-2.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Brooks Latshaw</a></h4>
                        <span class="status away" data-status="away"> Away</span>
                    </div>
                    <div class="user-status away">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>
                <li class="user-row " id='chat_user_3' data-user-id='3'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-3.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Clementina Brodeur</a></h4>
                        <span class="status busy" data-status="busy"> Busy</span>
                    </div>
                    <div class="user-status busy">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>

            </ul>


            <h4 class="group-head">More Contacts</h4>
            <ul class="contact-list">

                <li class="user-row " id='chat_user_4' data-user-id='4'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-4.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Carri Busey</a></h4>
                        <span class="status offline" data-status="offline"> Offline</span>
                    </div>
                    <div class="user-status offline">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>
                <li class="user-row " id='chat_user_5' data-user-id='5'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-5.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Melissa Dock</a></h4>
                        <span class="status offline" data-status="offline"> Offline</span>
                    </div>
                    <div class="user-status offline">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>
                <li class="user-row " id='chat_user_6' data-user-id='6'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-1.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Verdell Rea</a></h4>
                        <span class="status available" data-status="available"> Available</span>
                    </div>
                    <div class="user-status available">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>
                <li class="user-row " id='chat_user_7' data-user-id='7'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-2.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Linette Lheureux</a></h4>
                        <span class="status busy" data-status="busy"> Busy</span>
                    </div>
                    <div class="user-status busy">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>
                <li class="user-row " id='chat_user_8' data-user-id='8'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-3.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Araceli Boatright</a></h4>
                        <span class="status away" data-status="away"> Away</span>
                    </div>
                    <div class="user-status away">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>
                <li class="user-row " id='chat_user_9' data-user-id='9'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-4.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Clay Peskin</a></h4>
                        <span class="status busy" data-status="busy"> Busy</span>
                    </div>
                    <div class="user-status busy">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>
                <li class="user-row " id='chat_user_10' data-user-id='10'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-5.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Loni Tindall</a></h4>
                        <span class="status away" data-status="away"> Away</span>
                    </div>
                    <div class="user-status away">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>
                <li class="user-row " id='chat_user_11' data-user-id='11'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-1.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Tanisha Kimbro</a></h4>
                        <span class="status idle" data-status="idle"> Idle</span>
                    </div>
                    <div class="user-status idle">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>
                <li class="user-row " id='chat_user_12' data-user-id='12'>
                    <div class="user-img">
                        <a href="mus-genres.html#"><img src="../adminpage/data/profile/avatar-2.png" alt=""></a>
                    </div>
                    <div class="user-info">
                        <h4><a href="mus-genres.html#">Jovita Tisdale</a></h4>
                        <span class="status idle" data-status="idle"> Idle</span>
                    </div>
                    <div class="user-status idle">
                        <i class="fa fa-circle"></i>
                    </div>
                </li>

            </ul>
        </div>

    </div>


    <div class="chatapi-windows ">


    </div>
</div>
<!-- END CONTAINER -->
<!-- LOAD FILES AT PAGE END FOR FASTER LOADING -->


<!-- CORE JS FRAMEWORK - START -->
<script src="../adminpage/assets/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="../adminpage/assets/js/jquery.easing.min.js" type="text/javascript"></script>
<script src="../adminpage/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../adminpage/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
<script src="../adminpage/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js" type="text/javascript"></script>
<script src="../adminpage/assets/plugins/viewport/viewportchecker.js" type="text/javascript"></script>
<script>window.jQuery || document.write('<script src="../adminpage/assets/js/jquery-1.11.2.min.js"><\/script>');</script>
<!-- CORE JS FRAMEWORK - END -->


<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START -->
<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END -->


<!-- CORE TEMPLATE JS - START -->
<script src="../adminpage/assets/js/scripts.js" type="text/javascript"></script>
<!-- END CORE TEMPLATE JS - END -->


<!-- General section box modal start -->
<div class="modal" id="section-settings" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog animated bounceInDown">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Section Settings</h4>
            </div>
            <div class="modal-body">

                Body goes here...

            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>
                <button class="btn btn-success" type="button">Save changes</button>
            </div>
        </div>
    </div>
</div>
<!-- modal end -->
</body>
</html>






