<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Subject</title>

<link href="admin/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/css/datepicker3.css" rel="stylesheet">
<link href="admin/css/bootstrap-table.css" rel="stylesheet">
<link href="admin/css/styles.css" rel="stylesheet">
<link href="admin/css/table.css" rel="stylesheet">
<link href="admin/css/font-awesome.min.css" rel="stylesheet">


<!--Icons-->
<script src="admin/js/lumino.glyphs.js"></script>

<!-- library -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
<!-- CSS -->
<!-- <link href="lib/css/compiled.min.css" rel="stylesheet"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
<!-- Bootstrap core CSS -->
<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
<!-- Material Design Bootstrap -->
<link href="admin/lib/css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="admin/lib/css/style.css" rel="stylesheet">

<!-- JQuery -->
<script type="text/javascript" src="admin/lib/js/jquery-3.1.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="admin/lib/js/tether.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="admin/lib/js/mdb.min.js"></script>
<!--/libary -->

<style type="text/css">
	.btn-primary {
		background:#22c8bb;
	}
	.btn-primary:hover {
		background-color: #24f2e3 !important;
	}
</style>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" style="background-color: rgb(26, 170, 154);"role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<P class="navbar-brand">Admin HỌC TRỰC TUYẾN</P>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="login.html"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg>Login</a></li>
							<li><a href="#"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar" style="background-color:rgb(26, 170, 154);">
		<ul class="nav menu" style="padding-top:30px;font-size:20px;font-family:myFirstFont;">
			<li><a href="/FPT/list-user.do" style="color:#fff;"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>User</a></li>
			<li><a href="/FPT/list-categories.do" style="color:#fff;"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg>Category</a></li>
			<li><a href="/FPT/list-menu.do" style="color:#fff;"><svg class="glyph stroked line-graph"><use xlink:href="#stroked-line-graph"></use></svg>Menu</a></li>
			<li class="active"><a href="/FPT/list-subject.do" style="color:#fff;"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Subject</a></li>
			<li><a href="/FPT/list-problem.do" style="color:#fff;"><svg class="glyph stroked app-window"><use xlink:href="#stroked-app-window"></use></svg>Problem</a></li>
			<li><a href="/FPT/list-editorial.do" style="color:#fff;"><svg class="glyph stroked eye"><use xlink:href="#stroked-star"></use></svg>Editorial</a></li>
			<li><a href="/FPT/list-tutorial.do" style="color:#fff;"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg>Tutorial</a></li>
			<li><a href="/FPT/list-testcase.do" style="color:#fff;"><svg class="glyph stroked key"><use xlink:href="#stroked-key"></use></svg>Testcase</a></li>
			<li><a href="/FPT/list-tutorialcode.do" style="color:#fff;"><svg class="glyph stroked arrow down"><use xlink:href="#stroked-arrow-down"/></svg>TutorialCode</a></li>
			<li><a href="/FPT/list-submit.do" style="color:#fff;"><svg class="glyph stroked external hard drive"><use xlink:href="#stroked-external-hard-drive"/></svg>Submit</a></li>
			<li><a href="/FPT/list-code.do" style="color:#fff;"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg>Code</a></li>
			<li><a href="/FPT/list-status.do" style="color:#fff;"><svg class="glyph stroked tablet"><use xlink:href="#stroked-tablet-1"></use></svg>Status</a></li>
			<li><a href="/FPT/list-leaderboard.do" style="color:#fff;"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg>Leaderboad</a></li>
		</ul>
		<div class="attribution" style="color:#fff;font-family:roboto;font-size:15px">Website học lập trình trực tuyến <br /> CopyRight@: SE11</div>
	</div><!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Subject</h1>
			</div>
		</div>
		<!--/.row-->


		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<a href="prepare-add-subject.do"><input class="btn" type="submit"
							name="them" value="Add Subject" /></a>
					</div>
					<div class="panel-body">
						<table data-toggle="table" data-show-refresh="true"
							data-show-toggle="true" data-show-columns="true"
							data-search="true" data-select-item-name="toolbar1"
							data-pagination="true" data-sort-name="name"
							data-sort-order="desc">
							<thead>
								<tr>
									<th data-field="id" data-sortable="true">ID</th>
									<th data-field="Category" data-sortable="true">Category</th>
									<th data-field="title" data-sortable="true">title</th>
									<th data-field="successRate" data-sortable="true">successRate</th>
									<th data-field="maxScore" data-sortable="true">maxScore</th>
									<th data-field="difficutly" data-sortable="true">difficutly</th>
									<th data-field="process" data-sortable="true" class="chucnang">function</th>
									<th data-field="process1" data-sortable="true" class="chucnang">function</th>
								</tr>

							</thead>
							<tbody>
								<logic:iterate id="subject1" name="subjectForm"
									property="subjectList">
									<tr>

										<td><jsp:getProperty name="subject1" property="subId" /></td>
										<td><jsp:getProperty name="subject1" property="cateId" /></td>
										<td><bean:write name="subject1" property="title" /></td>
										<td><jsp:getProperty name="subject1"
												property="successRate" /></td>
										<td><jsp:getProperty name="subject1" property="maxScore" /></td>
										<td><jsp:getProperty name="subject1"
												property="difficutly" /></td>

										<bean:define id="idSub" name="subject1" property="subId"></bean:define>

										<td><html:link
												action="/prepare-update-subject.do?subId=${idSub}"
												styleClass="btn btn-primary">Edit</html:link></td>
										<td>
											<div>
												<button type="button" class="btn btn-danger"
													id="myBtn${idSub}">Delete</button>
												<div class="modal fade" id="myModal${idSub}" role="dialog">
													<div class="modal-dialog">

														<!-- Modal content-->
														<div class="modal-content">
															<div class="modal-header">
																<h4 class="modal-title">DELETE</h4>
															</div>
															<div class="modal-body">
																<p>Bạn có chắc muốn xóa không?</p>
															</div>
															<div class="modal-footer">
																<html:link action="/delete-subject.do?subId=${idSub}"
																	styleClass="btn btn-danger">OK</html:link>
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">Cancel</button>
															</div>
														</div>

													</div>
												</div>
												<bean:define id="sub" value="#myModal${idSub}"></bean:define>
												<script>
													$(document).ready(function() {$("#myBtn${idSub}").click(
														function() {$("${sub}").modal();
															});
														});
												</script>

											</div>
										</td>
									</tr>

								</logic:iterate>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!--/.row-->

	</div>
	<!--/.main-->
	<script src="admin/js/jquery-1.11.1.min.js"></script>
	<script src="admin/js/bootstrap.min.js"></script>
	<script src="admin/js/chart.min.js"></script>
	<script src="admin/js/chart-data.js"></script>
	<script src="admin/js/easypiechart.js"></script>
	<script src="admin/js/easypiechart-data.js"></script>
	<script src="admin/js/bootstrap-datepicker.js"></script>
	<script src="admin/js/bootstrap-table.js"></script>
	<script>
		!function($) {
			$(document)
					.on(
							"click",
							"ul.nav li.parent > a > span.icon",
							function() {
								$(this).find('em:first').toggleClass(
										"glyphicon-minus");
							});
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function() {
			if ($(window).width() > 768)
				$('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function() {
			if ($(window).width() <= 767)
				$('#sidebar-collapse').collapse('hide')
		})
	</script>
</body>

</html>
