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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
        <!-- CSS -->
        <link href="css/compiled.min.css" rel="stylesheet">
        <!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
        <!-- Bootstrap core CSS -->
        <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.css" rel="stylesheet">
        <!-- Customizer -->
		<link rel="stylesheet" href="css/customizer.min.css">


 		<!-- Bootstrap core CSS -->
    	<link href="css/bootstrap.min.css" rel="stylesheet">

	    <!-- Material Design Bootstrap -->
	    <link href="css/mdb.css" rel="stylesheet">
	
	    <!-- Your custom styles (optional) -->
	    <link href="css/style.css" rel="stylesheet">
               
           </head>

	<body class="fixed-sn light-blue-skin bg-skin-lp" ng-app="">
           
         


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
                                <html:link action="/prepare-edit-account.do" styleClass="dropdown-item">ACCOUNT</html:link>
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
        <div class="containerfluid">

            <!-- Modal Login -->
            <div class="modal fade modal-ext" id="modal-login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <!--Content-->
                    <div class="modal-content">
                        <!--Header-->
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
      </button>
                            <h3 class="w-100"><i class="fa fa-user"></i>Login</h3>
                        </div>
                        <!--Body-->
                        <html:form action="/user-login">
                            <div class="modal-body">
                                <div class="md-form">
                                    <i class="fa fa-envelope prefix"></i>
                                    <html:text property="username" styleId="form2" styleClass="form-control"></html:text>
                                    <label for="form2">Your email</label>
                                </div>

                                <div class="md-form">
                                    <i class="fa fa-lock prefix"></i>
                                    <html:password property="password" styleId="form3" styleClass="form-control"></html:password>
                                    <label for="form3">Your password</label>
                                </div>
                                <div class="text-center">
                                    <html:submit styleClass="btn btn-primary btn-md">Login</html:submit>
                                </div>
                            </div>
                        </html:form>
                        <!--Footer-->
                        <div class="modal-footer">
                            <div class="options text-right">
                            </div>
                            <button type="button" class="btn btn-default ml-auto" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!--/.Content-->
                </div>
            </div>



            <!-- Modal Register -->
            <div class="modal fade modal-ext" id="modal-register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <!--Content-->
                    <div class="modal-content">
                        <!--Header-->
                        <div class="modal-header flex-column">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
      </button>
                            <h3 class="w-100"><i class="fa fa-user"></i> Register with:</h3>
                            <div class="flex-row">
                                <a href="" class="btn-floating btn-fb btn-small"><i class="fa fa-facebook"></i></a>
                                <a href="" class="btn-floating btn-tw btn-small"><i class="fa fa-twitter"></i></a>
                                <a href="" class="btn-floating btn-gplus btn-small"><i class="fa fa-google-plus"></i></a>
                                <a href="" class="btn-floating btn-li btn-small"><i class="fa fa-linkedin"></i></a>
                                <a href="" class="btn-floating btn-git btn-small"><i class="fa fa-github"></i></a>
                            </div>
                        </div>
                        <!--Body-->
                        <html:form action="/user-register.do">
                        <div class="modal-body">
                            <div class="md-form">
                                <i class="fa fa-envelope prefix"></i>
                                <html:text property="username" styleClass="form-control validate"/>
                                <label for="form2">Your email</label>
                            </div>

                            <div class="md-form">
                                <i class="fa fa-lock prefix"></i>
                                <html:password property="password" styleClass="form-control validate"/>
                                <label for="form3">Your password</label>
                            </div>

                            <div class="md-form">
                                <i class="fa fa-lock prefix"></i>
                                <html:password property="rePassword" styleClass="form-control validate"/>
                                <label for="form4">Repeat password</label>
                            </div>

                            <div class="text-center">
                                <html:submit styleClass="btn btn-primary btn-lg">Sign up</html:submit>

                                <fieldset class="form-group">
                                    <input type="checkbox" id="checkbox1">
                                    <label for="checkbox1">Subscribe me to the newsletter</label>
                                </fieldset>
                            </div>
                        </div>
                        </html:form>
                        <!--Footer-->
                        <div class="modal-footer">
                            <div class="options"> 
                            </div>
                            <button type="button" class="btn btn-default ml-auto" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!--/.Content-->
                </div>
            </div>
 
	    </div>

 
<!--Main layout-->
        <main class="">
            <div class="container-fluid">

                <!--Heading & Date-->
                <div class="row mb-1">

                    <!--First column-->
                    <div class="col-md-6 panel-title">
                        <h4><span class="purple">Overview time submit of User</span></h4>
                    </div>
                    <!--/First column-->

                    <!--Second column-->
                    <div class="col-md-6">

                        <!--Date range-->
                        <div class="card px-4">
                            <div class="d-inline-flex date-panel">
                                <!--Date select-->
                                <select class="mdb-select colorful-select dropdown-primary">
                                    <option value="3">Last 30 days</option>
                                    <option value="1">Today</option>
                                    <option value="2">Yesterday</option>
                                    <option value="3">Last 7 days</option>
                                    <option value="3">Previous week</option>
                                    <option value="3">Previous month</option>
                                    <option value="3">Custom date</option>
                                </select>
                                <!--/Date select-->

                                <!--Custom date-->
                                <div class="md-form mr-2">
                                    <input placeholder="From" type="text" id="from" class="form-control datepicker">
                                </div>
                                <div class="md-form">
                                    <input placeholder="To" type="text" id="to" class="form-control datepicker">
                                </div>
                                <!--/Custom date-->
                            </div>
                        </div>
                        <!--/Date range-->

                    </div>
                    <!--/Second column-->

                </div>
                <!--Heading & Date-->

                <!--Section: Modals-->
                <section>

                </section>
                <!--/Section: Modals-->

                <!--Section: Sales-->
                <section class="section">

                    <!--Main row-->
                    <div class="row">

                        <div class="col-md-12">
                            <!--Card-->
                            <div class="card card-cascade narrower">

                                <!--Admin panel-->
                                <div class="admin-panel blue-admin-panel">

                                    <!--First row-->
                                    <div class="row mb-0">

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

                                    </div>
                                    <!--/First row-->
                                    

                                </div>
                                <!--/Admin panel-->

                            </div>
                            <!--/.Card-->
                        </div>

                    </div>
                    <!--/Main row-->

                </section>
                <!--/Section: Sales-->


            </div>
        </main>
        <!--/Main layout-->
    <!--/Main layout-->
    
    
     <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>

    <script>
        $("#navigation").load("components/navigation.html");
    </script>

    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/tether.min.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    
    <!-- Customizer -->
    <script type="text/javascript" src="js/customizer.min.js"></script>
    
    
    <script>
         	var a = [];
         	var b = [];
	</script>
   <logic:iterate id="submit" name="homeForm" property="submitList" > 
         	<bean:define id="time" name="submit" property="code"/>
         	<bean:define id="ans" name="submit" property="language"/>
         	
         	<script>
         	a.push("${time}");
         	b.push(${ans});
 
         	</script>
         	 
	</logic:iterate>
	

    <script>
        $(function() { 
            var data = {
                labels: a,
                datasets: [{
                    label: "My First dataset",
                    fillColor: "rgba(220,220,220,0.2)",
                    strokeColor: "rgba(220,220,220,1)",
                    pointColor: "rgba(220,220,220,1)",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(0,0,0,.15)",
                    data: b,
                    backgroundColor: "#4CAF50"
                }]
            
            };


            var dataPie = [{
                value: 300,
                color: "#F7464A",
                highlight: "#FF5A5E",
                label: "Red"
            }, {
                value: 50,
                color: "#46BFBD",
                highlight: "#5AD3D1",
                label: "Green"
            }, {
                value: 100,
                color: "#FDB45C",
                highlight: "#FFC870",
                label: "Yellow"
            }]

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
            var myLineChart = new Chart(ctx).Line(data, option); //'Line' defines type of the chart.
        });
    </script>

    <script>
        $(function() {
            $('.min-chart#chart-sales').easyPieChart({
                barColor: "#fff",
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
        });
    </script>
    
    <!-- SCRIPTS -->
     <script type="text/javascript" src="js/compiled.min.js"></script>
     <script>
         $(".button-collapse").sideNav();

         var el = document.querySelector('.custom-scrollbar');
         Ps.initialize(el);
         $(document).ready(function() {
             $(window).scroll(function() {
                 if ($(this).scrollTop() > 50) {
                     $('#back-to-top').fadeIn();
                 } else {
                     $('#back-to-top').fadeOut();
                 }
             });
             // scroll body to 0px on click
             $('#back-to-top').click(function() {
                 $('#back-to-top').tooltip('hide');
                 $('body,html').animate({
                     scrollTop: 0
                 }, 800);
                 return false;
             });

             $('#back-to-top').tooltip('show');

         });
     </script>
 
 

     <!-- SCRIPTS -->
     <script type="text/javascript" src="js/compiled.min.js"></script>
      <!-- Customizer -->
	<script type="text/javascript" src="js/customizer.min.js"></script>
                </body>

 </html>
 