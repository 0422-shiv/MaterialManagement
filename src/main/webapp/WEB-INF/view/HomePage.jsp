<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix='form' uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.as.mm.model.Employee" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="admin/assets/images/favicon.png">
    <link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="admin/assets/plugins/dropify/dist/css/dropify.min.css">
    <link href="admin/main/css/style.css" rel="stylesheet">
    <link href="admin/main/css/colors/blue.css" id="theme" rel="stylesheet">
</head>
<body class="fix-header card-no-border">
<% Employee E=(Employee)session.getAttribute("EMPSESSION"); %>

    <div id="main-wrapper">

        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon --><b>
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!--<img src="admin/assets/images/logo-icon.png" alt="homepage" class="dark-logo" />-->
                            <!-- Light Logo icon -->
                            <img src="admin/assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text --><span>
                         <!-- dark Logo text -->
                         <img src="admin/assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                         <!-- Light Logo text -->
                         <img src="admin/assets/images/logo-light-text.png" class="light-logo" alt="homepage" /></span> </a>
                </div>

                <div class="navbar-collapse">

                    <ul class="navbar-nav mr-auto mt-md-0">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                        <li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>

                    </ul>

                    <ul class="navbar-nav my-lg-0">

                        <!-- ============================================================== -->
                        <!-- Profile -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="admin/assets/images/users/1.jpg" alt="user" class="profile-pic" /></a>
                            <div class="dropdown-menu dropdown-menu-right scale-up">
                                <ul class="dropdown-user">
                                    <li>
                                        <div class="dw-user-box">
                                            <div class="u-img"><img src="admin/circle.png" alt="user"></div>

                                    </li>

                                    <li><a href="http://localhost:7070/LogInPage"><i class="fa fa-power-off"></i> Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- User profile -->
                <div class="user-profile">
                    <!-- User profile image -->
                    <div class="profile-img"> <img src="admin/assets/images/users/profile.png" alt="user" />
                             <!-- this is blinking heartbit-->
                            <div class="notify setpos"> <span class="heartbit"></span> <span class="point"></span> </div>
                    </div>
                    <!-- User profile text-->
                    <div class="profile-text">
                            <h5>USER</h5>
                               <a href="http://localhost:7070/LogInPage" class="" data-toggle="tooltip" title="Logout"><i class="mdi mdi-power"></i></a>

                        <div class="dropdown-menu animated flipInY">
                        <!-- text-->

                        <a href="http://localhost:7070/LogInPage" class="dropdown-item"><i class="fa fa-power-off"></i> Logout</a>
                        <!-- text-->
                        </div>
                    </div>
                </div>
                <!-- End User profile text-->
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                         <li class="nav-devider"></li>
                        <li class="nav-small-cap">MENU</li>

<li><a class="has-arrow waves-effect waves-dark" href='product' target="mw"><i class="mdi mdi-file"></i><span class="hide-menu">Add Product</span></a></li>
<li><a class="has-arrow waves-effect waves-dark" href='issue' target="mw"><i class="mdi mdi-file"></i><span class="hide-menu">Issue Product</span></a></li>
<li><a class="has-arrow waves-effect waves-dark" href='purchase' target="mw"><i class="mdi mdi-file"></i><span class="hide-menu">Purchase Product</span></a></li>
<li><a class="has-arrow waves-effect waves-dark" href='update?id=<%=E.getEmployeeid() %>'  target="mw"><i class="mdi mdi-file"></i><span class="hide-menu">Update Profile </span></a></li>
<li><a class="has-arrow waves-effect waves-dark" href='Logout' target="_blank" ><i class="mdi mdi-file"></i><span class="hide-menu">Logout</span></a></li>




                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>

        <div class="">

            <div class="row page-titles">
                <div class="col-md-5 align-self-center"></div>
<h3 class="text-themecolor" style="margin-left: 400px;">

	
<b><%=E.getEmployeename() %></b><br>
<img src="/Pictures/<%=E.getEmployeename() %>_<%=E.getEmployeeid() %>.jpeg">
</h3>

                </div>

                <div class="">
                    <button class="right-side-toggle waves-effect waves-light btn-inverse btn btn-circle btn-sm pull-right m-l-10"><i class="ti-settings text-white"></i></button>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">


                <div class="row">

                    <div class="col-lg-12">
                        <div class="card" style="margin-left: 350px;">
                            <div class="card-body">
 <iframe name='mw' style='width:100%; height:750px;' frameborder='0'></iframe>
                            </div>
                        </div>
                    </div>
                </div>


            <footer class="footer">
                © 2019 Home Automation
            </footer>

        </div>

    </div>

    <script src="admin/assets/plugins/jquery/jquery.min.js"></script>
    <script src="admin/assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="admin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="admin/main/js/jquery.slimscroll.js"></script>
    <script src="admin//main/js/waves.js"></script>
    <script src="admin/main/js/sidebarmenu.js"></script>
    <script src="admin/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="admin/assets/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script src="admin/main/js/custom.min.js"></script>
    <script src="admin/assets/plugins/dropify/dist/js/dropify.min.js"></script>
    <script>
    $(document).ready(function() {
        // Basic
        $('.dropify').dropify();

        // Translated
        $('.dropify-fr').dropify({
            messages: {
                default: 'Glissez-déposez un fichier ici ou cliquez',
                replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',
                remove: 'Supprimer',
                error: 'Désolé, le fichier trop volumineux'
            }
        });

        // Used events
        var drEvent = $('#input-file-events').dropify();

        drEvent.on('dropify.beforeClear', function(event, element) {
            return confirm("Do you really want to delete \"" + element.file.name + "\" ?");
        });

        drEvent.on('dropify.afterClear', function(event, element) {
            alert('File deleted');
        });

        drEvent.on('dropify.errors', function(event, element) {
            console.log('Has Errors');
        });

        var drDestroy = $('#input-file-to-destroy').dropify();
        drDestroy = drDestroy.data('dropify')
        $('#toggleDropify').on('click', function(e) {
            e.preventDefault();
            if (drDestroy.isDropified()) {
                drDestroy.destroy();
            } else {
                drDestroy.init();
            }
        })
    });
    </script>
    <script src="admin/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
</body>
</html>






















<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>
</head>

<body>
	
<table>
<tr>
<td valign='top'>
 <a href='product' target="mw">Add Product</a><br>
 <a href='issue' target="mw">Issue Product</a><br>
 <a href='purchase' target="mw">Purchase Product</a><br>
 <a href='update?id=<%=E.getEmployeeid() %>'  target="mw">Update Profile</a><br>
 <a href='Logout' target="_blank" >Logout</a><br>
</td>
<td>
<iframe frameborder="0" width="800" height="800" name="mw"></iframe>

</td>
</tr>
</table>
	
</body>
</html>