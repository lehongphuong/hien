<!-- <![CDATA[ -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
 <%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
 <%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
 <%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
 <!DOCTYPE html>
 <html lang="en">
 <head>
   
   <!-- mirror editor-->
   <link rel="stylesheet" href="library/codemirror.css">
   <script src="library/codemirror.js"></script>
   <script src="library/selection-pointer.js"></script>
   <script src="library/xml.js"></script>
   <script src="library/javascript.js"></script>
   <script src="library/css.js"></script>
   <script src="library/vbscript.js"></script>
   <script src="library/htmlmixed.js"></script>
   <script src="library/markdown.js"></script>
   <script src="library/show-hint.js"></script>
   <script src="library/javascript-hint.js"></script>
   <link rel=stylesheet href="library/docs.css">
   <script src="library/matchbrackets.js"></script>
   <link rel="stylesheet" href="library/show-hint.css">
   <script src="library/clike.js"></script>
   <script src="library/python.js"></script>
   
   <!-- Customizer -->
    <link rel="stylesheet" href="css/customizer.min.css">
    <link href="css/table.css" rel="stylesheet">
   
   <style>.CodeMirror {border: 25px inset #dee;}</style>
   <!-- /mirror editor-->
    
   
   <!-- Required meta tags always come first -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
   <title>Learning Program Language</title>
   <link href="https://cdn.hrcdn.net/hackerrank/assets/favicon-5bb50091f1911aa90950eca8b575d496.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
   <!-- Font Awesome -->
   <!-- w3 school -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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

   
   
 </head>
 <body class="fixed-sn light-blue-skin bg-skin-lp" ng-app="">
 
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
    <div class="menuHori">
      <ul class="nav navbar-nav ml-auto flex-row">

        <bean:define id="idMenu" name="tutorialFormMain" property="menuId"></bean:define>
        <bean:define id="idCate" name="tutorialFormMain" property="cateId"></bean:define>
        <bean:define id="firstTutId" name="tutorialFormMain" property="firstTutId"></bean:define>
        <logic:iterate name="tutorialFormMain" property="cateList" id="cate">
        
         <bean:define id="cateId" name="cate" property="cateId"></bean:define>
        
        <logic:iterate id="tutTemp" name="tutorialFormMain" property="tutListTemp" >
        	<logic:equal name="tutTemp" property="cateId" value="${cateId}">
        		<bean:define id="tutId" name="tutTemp" property="tuId"></bean:define>
        	</logic:equal>
        </logic:iterate>

        <bean:define id="cateId1" name="cate" property="cateId"></bean:define>
        <logic:equal name="cate" property="menuId" value="${idMenu}">
        <logic:equal name="tutorialFormMain" property="cateId" value="${cateId1}">
        <li class="nav-item menuActive">
          <html:link action="home-to-practics.do?menuId=${idMenu}&cateId=${cateId1}&tutId=${tutId }">
          <span class="hidden-sm-down uppercase"><bean:write name="cate" property="name"/></span>
          </html:link>
        </li>
      </logic:equal>

      <logic:notEqual name="tutorialFormMain" property="cateId" value="${cateId1 }">
      <li class="nav-item">
        <html:link action="home-to-practics.do?menuId=${idMenu}&cateId=${cateId1}&tutId=${tutId }">
        <span class="hidden-sm-down uppercase"><bean:write name="cate" property="name"/></span>
        </html:link>
      </li>
    </logic:notEqual>

  </logic:equal>
</logic:iterate>


<logic:equal name="tutorialFormMain" property="statusLogin" value="notLogin">
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

<logic:equal name="tutorialFormMain" property="statusLogin" value="login">
<li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <i class="fa fa-user"></i> <span class="hidden-sm-down">
    <span class="uppercase"> WELCOME <bean:write name="tutorialFormMain" property="username"/> </span>

  </span>
</a>
<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
	<html:link action="/prepare-edit-account.do" styleClass="dropdown-item">ACCOUNT</html:link>
	<html:link action="/seo.do" styleClass="dropdown-item">OVERVIEW</html:link>
  <html:link action="/user-logout.do" styleClass="dropdown-item">LOGOUT</html:link>
</div>
</li>
</logic:equal>

<logic:equal name="tutorialFormMain" property="statusLogin" value="fail">
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

</div>
</nav>
<!-- /.Navbar -->
</header>
<!--Main layout-->





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






<div class="container-fluid row">
 <div id="left" class="col-lg-3">
  <!-- Sidebar navigation -->
  <div id="leftmenuinner">
    <div id="leftmenuinnerinner">
      <ul class="menuVertical"> 
      
     
<!-- menu left -->
	
   <logic:iterate name="tutorialFormMain" property="tutList" id="tut">
        <bean:define id="tutId" name="tut" property="tuId"></bean:define>
     
       <logic:equal name="tut" property="tuId" value="${param.tutId}">
        <li><h5><a class="active" href="home-to-practics.do?menuId=${param.menuId}&cateId=${param.cateId}&tutId=${tutId}"><bean:write name="tut" property="title"/></a></h5></li>
      </logic:equal>
      
      <logic:notEqual name="tut" property="tuId" value="${param.tutId}">
      <li><a href="home-to-practics.do?menuId=${param.menuId}&cateId=${param.cateId}&tutId=${tutId}"><bean:write name="tut" property="title"/></a></li>
    </logic:notEqual>
    
    
  </logic:iterate>
  
  
  
</ul>
</div>
</div>
<!--end Sidebar navigation -->
</div>
<!-- noi dung -->
<div id="right" style="margin-top: 100px;" class="col-md-9">




 <div class="">
   <div class="w3-col l10 m12" id="main">
    <!-- Ezoic - Leaderboard - top_of_page -->
    <div id="ezoic-pub-ad-placeholder-103">
      <div id="mainLeaderboard" style="overflow:hidden;">
        <!-- MainLeaderboard-->
        <div id="div-gpt-ad-1422003450156-2">
          <script type="text/javascript">googletag.cmd.push(function() { googletag.display('div-gpt-ad-1422003450156-2'); });</script>
        </div>
      </div>
    </div>
    <!-- End Ezoic - Leaderboard - top_of_page -->
    <h1>HTML  Elements </h1>
    
    
    <div class="w3-clear nextprev">
      <a class="btn btn-outline-primary waves-effect"
      href="home-to-practics.do?menuId=${param.menuId}&cateId=${param.cateId}&tutId=${param.tutId>1?param.tutId-1:param.tutId}">❮ Previous</a>
      <a class="btn btn-success btn-rounded" style="float:right"
      href="home-to-practics.do?menuId=${param.menuId}&cateId=${param.cateId}&tutId=${param.tutId+1}">Next ❯</a>
    </div>
    <hr>

    <bean:define id="editor" name="tutorialFormMain" property="editor"/>
    
    <logic:iterate name="tutorialFormMain" property="tutCodeList" id="tutCode">
    
    <bean:define id="tutCodeId" name="tutCode" property="tuCoId"></bean:define>

    <h2><bean:write name="tutCode" property="title"/></h2>
    <P><bean:write name="tutCode" property="description"/></P>
    
     
     
     <logic:notEqual name="tutCode" property="code" value="">
     	
<!-- html -->
	
     	
     	<logic:equal name="tutorialFormMain" property="editor" value="html">
     	<h4><span class="label label-info">HTML editor</span></h4>
     	
     	<div><textarea id="code-html${tutCodeId}" name="code-html${tutCodeId }">
<bean:write name="tutCode" property="code"/>
	    </textarea></div>
	    
	    <script type="text/javascript">
	     var editor = CodeMirror.fromTextArea(document.getElementById("code-html${tutCodeId }"), {
	       mode: {name: "htmlmixed",
	       version: 3,
	       singleLineStringErrors: false},
	       lineNumbers: true,
	       indentUnit: 4,
	       matchBrackets: true
	     });
	   </script>
	   
	   <a class="btn btn-info btn-rounded waves-effect waves-light"  target="_blank"
	   href="run-html.do?menuId=${param.menuId}&cateId=${param.cateId}&tutId=${param.tutId}&tutCodeId=${tutCodeId}">
	   Run code</a>
	   <br><br><br>
     	
     	</logic:equal>
     	
<!-- end html -->
     	
<!-- c++ -->
     	
     	<logic:equal name="tutorialFormMain" property="editor" value="cpp">
     	<h4><span class="label label-info">C++ editor</span></h4>
     	<bean:define id="code" name="tutCode" property="code"/>
     	
	   <html:form action="/list-tutorial-main.do?menuId=${param.menuId}&cateId=${param.cateId}&tutId=${param.tutId}&tutCodeId=${tutCodeId}&language=cpp&run=true"
	    method="post">   
	   <html:textarea name="tutorialFormMain" property="code" value="${code}" styleId="code-html${tutCodeId}">
 
	   </html:textarea>
	
	    <script type="text/javascript">
	     var editor = CodeMirror.fromTextArea(document.getElementById("code-html${tutCodeId }"), {
	    	 lineNumbers: true,
	         matchBrackets: true,
	         indentUnit: 4,
	         mode: "text/x-c++src"
	     });
	   </script>
	   		<html:submit styleClass="btn btn-info btn-rounded waves-effect waves-light"  >
	   Run code</html:submit>
	   	 
	   </html:form>
	   
     	<br><br><br>
     	</logic:equal>
     	
<!-- end c++ -->
     	
<!-- python -->

		<logic:equal name="tutorialFormMain" property="editor" value="python">
     	<h4><span class="label label-info">Python editor</span></h4>
     	<bean:define id="code" name="tutCode" property="code"/>
     	
	   <html:form action="/list-tutorial-main.do?menuId=${param.menuId}&cateId=${param.cateId}&tutId=${param.tutId}&tutCodeId=${tutCodeId}&language=python&run=true"
	    method="post">   
	   <html:textarea name="tutorialFormMain" property="code" value="${code}" styleId="code-html${tutCodeId}">
 
	   </html:textarea>
	
	    <script type="text/javascript">
	     var editor = CodeMirror.fromTextArea(document.getElementById("code-html${tutCodeId }"), {
	    	 mode: {name: "python",
	   	      version: 3,
	   	      singleLineStringErrors: false},
	   	      lineNumbers: true,
	   	      indentUnit: 4,
	   	      matchBrackets: true
	     });
	   </script>
	   		<html:submit styleClass="btn btn-info btn-rounded waves-effect waves-light"  >
	   Run code</html:submit>
	   	 
	   </html:form>
	   
     	<br><br><br>
     	</logic:equal>
     	
<!-- end python -->
     	
<!-- java --> 
     	
     	<logic:equal name="tutorialFormMain" property="editor" value="java">
     	<h4><span class="label label-info">Java editor</span></h4> 
     	<bean:define id="code" name="tutCode" property="code"/>
     	
	   <html:form action="/list-tutorial-main.do?menuId=${param.menuId}&cateId=${param.cateId}&tutId=${param.tutId}&tutCodeId=${tutCodeId}&language=java&run=true"
	    method="post">   
	   <html:textarea name="tutorialFormMain" property="code" value="${code}" styleId="code-html${tutCodeId}">
 
	   </html:textarea>
	
	    <script type="text/javascript">
	     var editor = CodeMirror.fromTextArea(document.getElementById("code-html${tutCodeId }"), {
	    	 lineNumbers: true,
	         matchBrackets: true,
	         indentUnit: 4,
	         mode: "text/x-java"
	     });
	   </script>
	   		<html:submit styleClass="btn btn-info btn-rounded waves-effect waves-light"  >
	   Run code</html:submit>
	   	 
	   </html:form>
	   
     	<br><br><br>
     	</logic:equal>
     	
<!-- end java --> 
     	
     	
	</logic:notEqual>
  
    
    
   
 </logic:iterate>
 

 
 <!-- Modal result code -->
         <div class="modal fade modal-ext myModal" id="modal-result" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
             <div class="modal-dialog" role="document">
                 <!--Content-->
                 <div class="modal-content">
                     <!--Header-->
                     <div class="modal-header">
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
       <span aria-hidden="true">&times;</span>
   </button>
   						<br><br><br><br><br><br>
                         <h3 class="w-100"><span class="label label-info">Result Compile & Excute Code</span></h3>
                     </div>
                     <!--Body-->
                     <bean:define id="result" name="tutorialFormMain" property="result"/>
                     <div class="md-form container">
                     
                     	 
                     	<html:textarea  property="result"  styleClass="md-textarea" value="${result }">
                     
                    	 </html:textarea>
                     	
						    
						</div>
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
	
	<logic:equal name="tutorialFormMain" property="run" value="${param.run}">
	
	 <script type="text/javascript">
     $("#modal-result").modal("show");
    </script>
    
    
	</logic:equal>

   
     



 <br>
 <div class="w3-clear nextprev">
  <a class="btn btn-outline-primary waves-effect"
  href="home-to-practics.do?menuId=${param.menuId}&cateId=${param.cateId}&tutId=${param.tutId>1?param.tutId-1:param.tutId}">❮ Previous</a>
  <a class="btn btn-success btn-rounded" style="float:right"
  href="home-to-practics.do?menuId=${param.menuId}&cateId=${param.cateId}&tutId=${param.tutId+1}">Next ❯</a>
</div>
</div>
</div>

</div>

</div>












<script> 
  var mac = CodeMirror.keyMap.default == CodeMirror.keyMap.macDefault;
  CodeMirror.keyMap.default[(mac ? "Cmd" : "Ctrl") + "-Space"] = "autocomplete";
</script>



<!-- SCRIPTS -->
<script src="js/bootstrap-table.js"></script>    
<script type="text/javascript" src="js/compiled.min.js"></script>
<script>
 $(".button-collapse").sideNav();
 
 var el = document.querySelector('.custom-scrollbar');
 Ps.initialize(el);
 $(document).ready(function(){
   $(window).scroll(function () {
    if ($(this).scrollTop() > 50) {
      $('#back-to-top').fadeIn();
    } else {
      $('#back-to-top').fadeOut();
    }
  });
         // scroll body to 0px on click
         $('#back-to-top').click(function () {
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
     <!-- JQuery -->
     <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
     <!-- Bootstrap tooltips -->
     <script type="text/javascript" src="js/tether.min.js"></script>
     <!-- MDB core JavaScript -->
     <script type="text/javascript" src="js/mdb.min.js"></script>
      <!-- Customizer -->
    <script type="text/javascript" src="js/customizer.min.js"></script>
   </body>
   </html>
   <!-- ]]> -->