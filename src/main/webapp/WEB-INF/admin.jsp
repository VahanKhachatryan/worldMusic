<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class=" ">
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>Music Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <link rel="shortcut icon" href="../adminpage/assets/images/favicon.png" type="image/x-icon" />    <!-- Favicon -->
    <link rel="apple-touch-icon-precomposed" href="../adminpage/assets/images/apple-touch-icon-57-precomposed.png">	<!-- For iPhone -->
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../adminpage/assets/images/apple-touch-icon-114-precomposed.png">    <!-- For iPhone 4 Retina display -->
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../adminpage/assets/images/apple-touch-icon-72-precomposed.png">    <!-- For iPad -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../adminpage/assets/images/apple-touch-icon-144-precomposed.png">    <!-- For iPad Retina display -->




    <!-- CORE CSS FRAMEWORK - START -->
    <link href="../adminpage/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../adminpage/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../adminpage/assets/plugins/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="../adminpage/assets/fonts/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="../adminpage/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
    <link href="../adminpage/assets/plugins/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" type="text/css"/>
    <!-- CORE CSS FRAMEWORK - END -->

    <!-- HEADER SCRIPTS INCLUDED ON THIS PAGE - START -->


    <link href="../adminpage/assets/plugins/morris-chart/css/morris.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../adminpage/assets/plugins/jquery-ui/smoothness/jquery-ui.min.css" rel="stylesheet" type="text/css" media="screen"/>

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
                        <li></li>
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
                    <a href="ui-profile.html">
                        <img src="/image?fileName=${currentUser.user.picUrl}" class="img-responsive img-circle">
                    </a>
                </div>

                <div class="profile-details col-xs-8">

                    <h3>
                        ${currentUser.user.name} ${currentUser.user.surname}
                        <!-- Available statuses: online, idle, busy, away and offline -->
                        <span class="profile-status online"></span>
                    </h3>

                    <p class="profile-title">Music Admin</p>

                </div>

            </div>
            <!-- USER INFO - END -->
            <ul class='wraplist'>
                <li class="open">
                    <a href="/">
                        <i class="fa fa-dashboard"></i>
                        <span class="title">Home</span>
                    </a>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="fa fa-music"></i>
                        <span class="title">Genres</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu" >
                        <li>
                            <a class="" href="/allGenre" >All Genres</a>
                        </li>
                        <li>
                            <a class="" href="/addGenre" >Add Genre</a>
                        </li>
                        <li>
                            <a class="" href="/genreDelete" >Delete Genre</a>
                        </li>
                    </ul>
                </li>
                <li class="">          <a href="javascript:;">
                    <i class="fa fa-microphone"></i>
                    <span class="title">Albums</span>
                    <span class="arrow "></span>
                </a>
                    <ul class="sub-menu" >
                        <li>
                            <a class="" href="/allAlbum" >All Albums</a>
                        </li>
                        <li>
                            <a class="" href="/addAlbum" >Add Album</a>
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
                    <ul class="sub-menu" >
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
                    <ul class="sub-menu" >
                        <li>
                            <a class=""
                               href="/addMusic">Add Song</a>
                        </li>
                        <li>
                            <a class=""
                               href="/deleteMusic">Delete Song</a>
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
                    <ul class="sub-menu" >
                        <li>
                            <a class=""
                               href="/allNews">All News</a>
                        </li>
                        <li>
                            <a class=""
                               href="/addNews">Add News</a>
                        </li>
                        <li>
                            <a class=""
                               href="/deleteNews">Delete News</a>
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
                        <!-- PAGE HEADING TAG - START --><h1 class="title">Music Admin</h1>
                        <!-- PAGE HEADING TAG - END -->
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <!-- MAIN CONTENT AREA STARTS -->


            <div class="col-lg-12">
                <section class="box ">
                    <header class="panel_header">
                        <h2 class="title pull-left">Trending Albums</h2>
                        <div class="actions panel_actions pull-right">
                            <a class="box_toggle fa fa-chevron-down"></a>
                            <a class="box_setting fa fa-cog" data-toggle="modal"></a>
                            <a class="box_close fa fa-times"></a>
                        </div>
                    </header>
                    <div class="content-body">
                        <div class="row"><div class="col-md-12">



                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-1.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Modern Roc..</a>


                                        </h4>


                                        <span><a>Mellisa</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-2.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Hard Metal..</a>


                                        </h4>


                                        <span><a>Jude</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-3.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Love Songs..</a>


                                        </h4>


                                        <span><a>Jack</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-4.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Instrument..</a>


                                        </h4>


                                        <span><a>Jackson</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-5.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Made for y..</a>


                                        </h4>


                                        <span><a>Law Tiger</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-6.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Kiss the s..</a>


                                        </h4>


                                        <span><a>Misterious</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-7.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                In the Dep..</a>


                                        </h4>


                                        <span><a>Blank</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-8.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Volcano..</a>


                                        </h4>


                                        <span><a>Martini</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-9.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Juicy touc..</a>


                                        </h4>


                                        <span><a>Jingle</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-1.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Modern Roc..</a>


                                        </h4>


                                        <span><a>Mellisa</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-2.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Hard Metal..</a>


                                        </h4>


                                        <span><a>Jude</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-3.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Love Songs..</a>


                                        </h4>


                                        <span><a>Jack</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-4.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Instrument..</a>


                                        </h4>


                                        <span><a>Jackson</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-5.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Made for y..</a>


                                        </h4>


                                        <span><a>Law Tiger</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-6.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Kiss the s..</a>


                                        </h4>


                                        <span><a>Misterious</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-7.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                In the Dep..</a>


                                        </h4>


                                        <span><a>Blank</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-8.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Volcano..</a>


                                        </h4>


                                        <span><a>Martini</a></span>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">

                                    <div class="thumb">
                                        <img class="img-responsive" src="../adminpage/data/albums/album-9.jpg">
                                        <div class="overlay"></div>
                                    </div>

                                    <div class="team-info ">
                                        <h4>


                                            <a>
                                                Juicy touc..</a>


                                        </h4>


                                        <span><a>Jingle</a></span>
                                    </div>

                                </div>
                            </div>
                        </div></div>

                    </div>
                </section></div>


            <div class="col-lg-12">
                <section class="box ">
                    <header class="panel_header">
                        <h2 class="title pull-left">Trending Songs</h2>
                        <div class="actions panel_actions pull-right">
                            <a class="box_toggle fa fa-chevron-down"></a>
                            <a class="box_setting fa fa-cog" data-toggle="modal"></a>
                            <a class="box_close fa fa-times"></a>
                        </div>
                    </header>
                    <div class="content-body">
                        <div class="row"><div class="col-md-12">



                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-1.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>ligula pel..</a></h4>
                                        <span>ahayes0</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-2.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>at ipsum a..</a></h4>
                                        <span>dross1</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-3.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>amet eleif..</a></h4>
                                        <span>bphillips2</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-4.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>nulla moll..</a></h4>
                                        <span>sramos3</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-5.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>nulla temp..</a></h4>
                                        <span>sdean4</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-6.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>felis ut a..</a></h4>
                                        <span>amyers5</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-7.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>vel enim s..</a></h4>
                                        <span>gaustin6</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-8.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>nibh quisq..</a></h4>
                                        <span>jharper7</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-9.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>nulla dapi..</a></h4>
                                        <span>amartinez8</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-10.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>etiam vel ..</a></h4>
                                        <span>hallen9</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-11.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>duis ac ni..</a></h4>
                                        <span>pcarrolla</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-12.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>montes nas..</a></h4>
                                        <span>mharrisb</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-13.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>eros suspe..</a></h4>
                                        <span>rwoodsc</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-14.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>nisl duis ..</a></h4>
                                        <span>spattersond</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-15.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>vulputate ..</a></h4>
                                        <span>afishere</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-16.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>fusce cong..</a></h4>
                                        <span>cwilsonf</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-17.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>augue vest..</a></h4>
                                        <span>rholmesg</span>
                                    </div>

                                    <p>
                                </div>
                            </div>


                            <div class="col-lg-2 col-sm-4 col-xs-6 music_genre">
                                <div class="team-member ">
                                    <div class="team-img thumb ">
                                        <img class="img-responsive" src="../adminpage/data/songs/song-18.jpg" alt="">
                                        <div class="overlay">
                                        </div>
                                    </div>
                                    <div class="team-info ">
                                        <h4><a>magna ac c..</a></h4>
                                        <span>wfranklinh</span>
                                    </div>

                                    <p>
                                </div>
                            </div>




                        </div></div>

                    </div>
                </section></div>


            <!-- MAIN CONTENT AREA ENDS -->
        </section>
    </section>
    <!-- END CONTENT -->
<!-- END CONTAINER -->
<!-- LOAD FILES AT PAGE END FOR FASTER LOADING -->


<!-- CORE JS FRAMEWORK - START -->
<script src="../adminpage/assets/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="../adminpage/assets/js/jquery.easing.min.js" type="text/javascript"></script>
<script src="../adminpage/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../adminpage/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
<script src="../adminpage/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js" type="text/javascript"></script>
<script src="../adminpage/assets/plugins/viewport/viewportchecker.js" type="text/javascript"></script>
<script>window.jQuery||document.write('<script src="../adminpage/assets/js/jquery-1.11.2.min.js"><\/script>');</script>
<!-- CORE JS FRAMEWORK - END -->


<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START -->

<script src="../adminpage/assets/plugins/jquery-ui/smoothness/jquery-ui.min.js" type="text/javascript"></script> <script src="../adminpage/assets/plugins/sparkline-chart/jquery.sparkline.min.js" type="text/javascript"></script>
<script src="../adminpage/assets/js/chart-sparkline.js" type="text/javascript"></script>
<script src="../http://jaybabani.com/complete-admin/v5.1/preview/assets/js/mus-dashboard.js" type="text/javascript"></script>
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





<script type="text/javascript">


</script>