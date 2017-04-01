<!-- <![CDATA[ -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">

 <head>
	 <!-- Required meta tags always come first -->
	 <meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	 <meta http-equiv="x-ua-compatible" content="ie=edge">
	 <title>Learning Program Language</title>
	 <link href="https://cdn.hrcdn.net/hackerrank/assets/favicon-5bb50091f1911aa90950eca8b575d496.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
	 <!-- Font Awesome -->
	 <!-- <link rel="stylesheet" href="css/font-awesome.min.css"> -->
	 
	 <!-- CSS -->
	 <link href="css/compiled.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
 <!--    <link href="css/bootstrap.min.css" rel="stylesheet"> -->
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">
	 <!-- Customizer -->
	<link rel="stylesheet" href="css/customizer.min.css">
	                 
	               
 </head>

<body class="fixed-sn light-blue-skin bg-skin-lp">
                    
                    <!-- Customizer -->
    <div id="customizer" class="z-depth-1">
        <a href="#" id="toggle"><i class="fa fa-cog" aria-hidden="true"></i></a>
        <div class="inner">
            <p class="text-center customizer-heading">Pick a skin color</p>
            <ul class="skins-list">
                <li><a href="#" data-skin-color="deep-purple-skin"><span class="color skin-deep-purple"></span></a></li>
                <li><a href="#" data-skin-color="navy-blue-skin"><span class="color skin-navy-blue"></span></a></li>
                <li><a href="#" data-skin-color="cyan-skin"><span class="color skin-cyan"></span></a></li>
                <li><a href="#" data-skin-color="pink-skin"><span class="color skin-pink"></span></a></li>
                <li><a href="#" data-skin-color="indigo-skin"><span class="color skin-indigo"></span></a></li>
                <li><a href="#" data-skin-color="light-blue-skin"><span class="color skin-light-blue"></span></a></li>
                <li><a href="#" data-skin-color="grey-skin"><span class="color skin-grey"></span></a></li>
                <li><a href="#" data-skin-color="white-skin"><span class="color skin-white"></span></a></li>
                <li><a href="#" data-skin-color="black-skin"><span class="color skin-black"></span></a></li>
                <li><a href="#" data-skin-color="mdb-skin"><span class="color skin-mdb"></span></a></li>
            </ul>
            <p class="text-center customizer-heading">SideNav Background Type</p>
            <form class="form-inline">
                <fieldset class="form-group">
                    <input name="group1" type="radio" id="radio11" value="flat">
                    <label for="radio11">Flat</label>
                </fieldset>

                <fieldset class="form-group">
                    <input name="group1" type="radio" id="radio21" value="gradient">
                    <label for="radio21">Gradient</label>
                </fieldset>

                <fieldset class="form-group">
                    <input name="group1" type="radio" id="radio31" value="background" checked="checked">
                    <label for="radio31">Image</label>
                </fieldset>
            </form>

            <div id="bg-option">


                <p class="text-center customizer-heading">Mask opacity</p>

                <form class="form-inline">
                    <fieldset class="form-group">
                        <input name="group3" type="radio" id="radio13" value="strong" checked="checked">
                        <label for="radio13">Strong</label>
                    </fieldset>

                    <fieldset class="form-group">
                        <input name="group3" type="radio" id="radio23" value="light">
                        <label for="radio23">Light</label>
                    </fieldset>

                    <fieldset class="form-group">
                        <input name="group3" type="radio" id="radio33" value="slight">
                        <label for="radio33">Slight</label>
                    </fieldset>
                </form>
            </div>

            <div>
                <p class="text-center customizer-heading d-inline">Fixed sidenav</p>
                <div class="switch d-inline-block float-right">
                    <label>
                        Off
                        <input type="checkbox" checked="checked">
                        <span class="lever"></span> On
                    </label>
                </div>
            </div>

        </div>
    </div>
    <!-- /.Customizer -->


       <!--Double navigation-->
       <header>

           <!-- Navbar -->
           <nav class="navbar navbar-toggleable-md navbar-dark scrolling-navbar double-nav fixed-top">
               <!-- SideNav slide-out button -->
               <div class="float-xs-left">
                   <a href="home.do"><img class="animated bounce infinite" style="margin-left:20px" src="img/custom/logo.png" /></a>
               </div>
               <!-- Breadcrumb-->
               <div class="breadcrumb-dn mr-auto">
                   <bold>
                       <a class="nav-link" href="home.do">
                           <bold>
                               <h6>CODING PROGRAM</h6>
                           </bold>
                       </a>
                   </bold>
               </div>
               <ul class="nav navbar-nav ml-auto flex-row">

                   <logic:iterate id="menu" name="homeForm" property="menuList">

                       <li class="nav-item dropdown">
                           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               <span class="hidden-sm-down uppercase"><bean:write name="menu" property="name"/></span>
                           </a>
                           <bean:define id="menuId" name="menu" property="menuId"></bean:define>
                           <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                               <logic:iterate name="homeForm" property="cateList" id="cate">
                                   <logic:equal name="cate" property="menuId" value="${menuId}">
                                       <bean:define id="idMenu" name="cate" property="menuId"></bean:define>
                                       <bean:define id="idCate" name="cate" property="cateId"></bean:define>
                                       <html:link styleClass="dropdown-item" action="/home-to-practics.do?menuId=${idMenu}&cateId=${idCate}&tutId=1">
                                           <span class="uppercase"><bean:write name="cate" property="name"/></span>
                                       </html:link>
                                   </logic:equal>
                               </logic:iterate>
                           </div>
                       </li>
                   </logic:iterate>

                   <logic:equal name="homeForm" property="statusLogin" value="notLogin">
                       <li class="nav-item dropdown">
                           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               <i class="fa fa-user"></i> <span class="hidden-sm-down">ACCOUNT</span>
                           </a>
                           <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                               <a class="dropdown-item" data-toggle="modal" data-target="#modal-login">LOGIN</a>
                               <a class="dropdown-item" data-toggle="modal" data-target="#modal-register">REGISTER</a>
                           </div>
                       </li>
                   </logic:equal>

                   <logic:equal name="homeForm" property="statusLogin" value="login">
                       <li class="nav-item dropdown">
                           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               <i class="fa fa-user"></i> <span class="hidden-sm-down">
 <span class="uppercase"> WELCOME <bean:write name="homeForm" property="username"/> </span>

                               </span>
                           </a>
                           <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                           		<html:link action="/seo.do" styleClass="dropdown-item">OVERVIEW</html:link>
                               <html:link action="/user-logout.do" styleClass="dropdown-item">LOGOUT</html:link>
                           </div>
                       </li>
                   </logic:equal>

                   <logic:equal name="homeForm" property="statusLogin" value="fail">
                       <!-- Modal Login -->
                       <li class="nav-item dropdown">
                           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               <i class="fa fa-user"></i> <span class="hidden-sm-down">LOGIN FAIL PLEASE AGAIN</span>
                           </a>
                           <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                               <a class="dropdown-item" data-toggle="modal" data-target="#modal-login">LOGIN</a>
                               <a class="dropdown-item" data-toggle="modal" data-target="#modal-register">LOGOUT</a>
                           </div>
                       </li>
                   </logic:equal>

               </ul>
           </nav>
           <!-- /.Navbar -->
       </header>
       <!--/.Double navigation-->
       <!--Main layout-->
               

				<!--Main layout-->
    <main class="">
        <div class="container-fluid">
            <!-- Section: Edit Account -->
            <section class="section">
                <!-- First row -->
                <div class="row">
                    <!-- First column -->
                    <div class="col-lg-4">

                        <!-- Card -->
                        <div class="card contact-card card-cascade narrower mb-r">
                            <div class="admin-panel info-admin-panel">
                                <!-- Card title -->
                                <div class="view primary-color">
                                    <h5>Edit Photo</h5>
                                </div>
                                <!-- /.Card title -->

                                <!-- Card content -->
                                <div class="card-block text-center"> 
                                    <img src='<bean:write name="homeForm" property="avatar"/>' alt="User Photo" class="rounded-circle contact-avatar my-2 mx-auto" />

                                    <p class="text-muted"><small>Profile photo will be changed automatically</small></p>

                                    <button class="btn btn-primary">Upload New Photo</button><br>
                                    <button class="btn btn-danger">Delete</button>
                                </div>
                                <!-- /.Card content -->
                            </div>
                        </div>
                        <!-- /.Card -->

                    </div>
                    <!-- /.First column -->
                    <!-- Second column -->
                    <div class="col-lg-8">
                        <!--Card-->
                        <div class="card card-cascade narrower mb-r">
                            <div class="admin-panel info-admin-panel">
                                <!--Card image-->
                                <div class="view primary-color">
                                    <h5>Edit Account</h5>
                                </div>
                                <!--/Card image-->
                                <!--Card content-->
                                <div class="card-block">
                                    <!-- Edit Form -->
                                    <html:form action="/edit-account.do">
                                        <!--First row-->
                                        <div class="row">
                                            <!--First column-->
                                            <div class="col-md-6">
                                                <div class="md-form">
                                                    <html:text property="userId" styleId="form2" styleClass="form-control validate" readonly="true"/>
                                                    <label for="form1" data-error="wrong" data-success="right">Account</label>
                                                </div>
                                            </div>
                                            
	
                                            
                                            <!--Second column-->
                                            <div class="col-md-6">
                                                <div class="md-form">
                                                    <html:text property="username" styleId="form2" styleClass="form-control validate"/>
                                                    <label for="form2" data-error="wrong" data-success="right">Username</label>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/.First row-->
                                        <!--First row-->
                                        <div class="row">
                                            <!--First column-->
                                            <div class="col-md-6">
                                                <div class="md-form">
                                                    <html:password property="password" styleId="form81" styleClass="form-control validate"/>
                                                     <label for="form81" data-error="wrong" data-success="right">Password</label>
                                                </div>
                                            </div>
                                            <!--Second column-->
                                            <div class="col-md-6">
                                            
                                     			<div class="md-form">
                                                    <html:text property="university" styleId="form82" styleClass="form-control validate"/>
                                                    <label for="form82" data-error="wrong" data-success="right">University</label>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/.First row-->
                                        <!--Second row-->
                                        <div class="row">
                                            <!--First column-->
                                            <div class="col-md-6">
                                                <div class="md-form">
                                                <html:text property="point" styleId="form76" styleClass="form-control validate" readonly="true" />
                                                    <label for="form76">Point</label>
                                                </div>
                                            </div>
                                            <!--Second column-->
                                            <div class="col-md-6">
                                                <div class="md-form">
                                                    <input type="text" id="form77" class="form-control validate"
                                                    value="http://localhost:8080/FPT/home.do">
                                                    <label for="form77" data-error="wrong" data-success="right">Website Address</label>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/.Second row-->
                                        <!--Third row-->
                                        <div class="row">
                                            <!--First column-->
                                            <div class="col-md-12">
                                                <div class="md-form">
                                                    <textarea type="text" id="form78" class="md-textarea"></textarea>
                                                    <label for="form78">About me</label>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/.Third row-->
                                        <!-- Fourth row -->
                                        <div class="row">
                                            <div class="col-md-12 text-center">
                                                <html:submit   value="Update Account" styleClass="btn btn-primary"></html:submit>
                                            </div>
                                        </div>
                                        <!-- /.Fourth row -->
                                    </html:form>
                                    <!-- Edit Form -->
                                </div>
                                <!--/.Card content-->
                            </div>
                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- /.Second column -->
                </div>
                <!-- /.First row -->
            </section>
            <!-- /.Section: Edit Account -->
        </div>
        
        
        
        <!-- analytics -->
        
        
        <!--First column-->
        <div class="col-md-12 mb-1">
            <!--Cascading element-->
            <div class="view mx-3">
                <!--Main chart-->
                <canvas id="sales" height="90px"></canvas>
            </div>
            <!--/Cascading element-->
        </div>
        <!--/First column-->
        
        
        <!-- end analytics -->
        
        
        
        
        
    </main>
    <!--/Main layout-->



                             



                        
	<script>
        $(function() {
            var data = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [{
                    label: "My First dataset",
                    fillColor: "rgba(220,220,220,0.2)",
                    strokeColor: "rgba(220,220,220,1)",
                    pointColor: "rgba(220,220,220,1)",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(0,0,0,.15)",
                    data: [65, 59, 80, 81, 56, 55, 40],
                    backgroundColor: "#4CAF50"
                }, {
                    label: "My Second dataset",
                    fillColor: "rgba(255,255,255,.25)",
                    strokeColor: "rgba(255,255,255,.75)",
                    pointColor: "#fff",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(0,0,0,.15)",
                    data: [28, 48, 40, 19, 86, 27, 90]
                }]
            };

            var dataOneLine = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [{
                    label: "My First dataset",
                    fillColor: "rgba(220,220,220,0.2)",
                    strokeColor: "rgba(220,220,220,1)",
                    pointColor: "rgba(220,220,220,1)",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(0,0,0,.15)",
                    data: [65, 59, 80, 81, 56, 55, 90],
                    backgroundColor: "#4CAF50"
                }]
            };

            var option = {
                responsive: true,
                // set font color
                scaleFontColor: "#fff",
                // font family
                defaultFontFamily: "'Roboto', sans-serif",
                // background grid lines color
                scaleGridLineColor: "rgba(255,255,255,.1)",
                // hide vertical lines
                scaleShowVerticalLines: false,
            };

            // Get the context of the canvas element we want to select
            var ctx = document.getElementById("sales").getContext('2d');
            var myLineChart = new Chart(ctx).Line(dataOneLine, option); //'Line' defines type of the chart.
        });
    </script>

    <script>
        $(function() {
            $('.min-chart#chart-sales').easyPieChart({
                barColor: "#4caf50",
                onStep: function(from, to, percent) {
                    $(this.el).find('.percent').text(Math.round(percent));
                }
            });
        });
    </script>

    <script>
        // Data Picker Initialization
        $('.datepicker').pickadate();


        // Material Select Initialization
        $(document).ready(function() {
            $('.mdb-select').material_select();
        });

        // Sidenav Initialization
        $(".button-collapse").sideNav();

        // Tooltips Initialization
        $(function() {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>
	
	
 
    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/tether.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.js"></script>

    <script>
    // Data Picker Initialization
    $('.datepicker').pickadate();


    // Material Select Initialization
    $(document).ready(function() {
        $('.mdb-select').material_select();
    });

    // Sidenav Initialization
    $(".button-collapse").sideNav();
    var el = document.querySelector('.custom-scrollbar');
    Ps.initialize(el);

    // Tooltips Initialization
    $(function() {
        $('[data-toggle="tooltip"]').tooltip();
    });
    </script>
    <script type="text/javascript" src="js/customizer.min.js"></script>
</body>

</html>
<!-- ]]> -->