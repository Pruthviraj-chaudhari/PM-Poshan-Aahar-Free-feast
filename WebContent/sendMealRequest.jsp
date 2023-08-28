<%@ page import="com.Servlets.School.*"%>
<%@ page import="com.DB.DbConnection"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.Servlets.School.*"%>
<%@ page import="java.time.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<!-- Basic Page Info -->
<meta charset="utf-8" />
<title>PM Poshan-Aahar</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="vendors/images/apple-touch-icon.png" />
<link rel="icon" type="image/png" sizes="32x32"
	href="vendors/images/favicon-32x32.png" />
<link rel="icon" type="image/png" sizes="16x16"
	href="vendors/images/favicon-16x16.png" />

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet" />
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="vendors/styles/core.css" />
<link rel="stylesheet" type="text/css"
	href="vendors/styles/icon-font.min.css" />
<link rel="stylesheet" type="text/css"
	href="src/plugins/datatables/css/dataTables.bootstrap4.min.css" />
<link rel="stylesheet" type="text/css"
	href="src/plugins/datatables/css/responsive.bootstrap4.min.css" />
<link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=G-GBZ3SGGX85"></script>
<script async
	src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-2973766580778258"
	crossorigin="anonymous"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag("js", new Date());

	gtag("config", "G-GBZ3SGGX85");
</script>
<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			"gtm.start" : new Date().getTime(),
			event : "gtm.js"
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != "dataLayer" ? "&l="
				+ l
				: "";
		j.async = true;
		j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, "script", "dataLayer", "GTM-NXZMQSS");
</script>
<!-- End Google Tag Manager -->
</head>

<body>
	<!-- <div class="pre-loader">
			<div class="pre-loader-box">
				<div class="loader-logo">
					<img src="vendors/images/deskapp-logo.svg" alt="" />
				</div>
				<div class="loader-progress" id="progress_div">
					<div class="bar" id="bar1"></div>
				</div>
				<div class="percent" id="percent1">0%</div>
				<div class="loading-text">Loading...</div>
			</div>
		</div> -->

	<div class="header">
		<div class="header-left">
			<div class="menu-icon bi bi-list"></div>
			<div class="search-toggle-icon bi bi-search"
				data-toggle="header_search"></div>
		</div>
		<div class="header-right">
			<div class="dashboard-setting user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="javascript:;"
						data-toggle="right-sidebar"> <i class="dw dw-settings2"></i>
					</a>
				</div>
			</div>
			<div class="user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="#" role="button"
						data-toggle="dropdown"> <i
						class="icon-copy dw dw-notification"></i> <span
						class="badge notification-active"></span>
					</a>
					<div class="dropdown-menu dropdown-menu-right">
						<div class="notification-list mx-h-350 customscroll">
							<ul>
								<li><a href="#"> <img src="vendors/images/img.jpg"
										alt="" />
										<h3>John Doe</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed...</p>
								</a></li>
								<li><a href="#"> <img src="vendors/images/photo1.jpg"
										alt="" />
										<h3>Lea R. Frith</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed...</p>
								</a></li>
								<li><a href="#"> <img src="vendors/images/photo2.jpg"
										alt="" />
										<h3>Erik L. Richards</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed...</p>
								</a></li>
								<li><a href="#"> <img src="vendors/images/photo3.jpg"
										alt="" />
										<h3>John Doe</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed...</p>
								</a></li>
								<li><a href="#"> <img src="vendors/images/photo4.jpg"
										alt="" />
										<h3>Renee I. Hansen</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed...</p>
								</a></li>
								<li><a href="#"> <img src="vendors/images/img.jpg"
										alt="" />
										<h3>Vicki M. Coleman</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed...</p>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="user-info-dropdown">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button"
						data-toggle="dropdown"> <span class="user-icon"> <i
							class="icon-copy bi bi-person p-2"></i>
					</span> <span class="user-name"><%=School.getUsername()%></span>
					</a>
					<div
						class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
						<a class="dropdown-item" href="profile.html"><i
							class="dw dw-settings2"></i> Setting</a> <a class="dropdown-item"
							href="index.jsp"><i class="dw dw-logout"></i> Log Out</a>
					</div>
				</div>
			</div>
			<div class="github-link">
				<div class="m-2 ml-3 mr-3">
					<a class=""> <span class="user-icon"> <img
							src="https://www.mygov.in/sites/all/themes/mygov/front_assets/images/logo.svg"
							alt="" width="100px" />
					</span>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="right-sidebar">
		<div class="sidebar-title">
			<h3 class="weight-600 font-16 text-blue">
				Layout Settings <span class="btn-block font-weight-400 font-12">User
					Interface Settings</span>
			</h3>
			<div class="close-sidebar" data-toggle="right-sidebar-close">
				<i class="icon-copy ion-close-round"></i>
			</div>
		</div>
		<div class="right-sidebar-body customscroll">
			<div class="right-sidebar-body-content">
				<h4 class="weight-600 font-18 pb-10">Header Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);"
						class="btn btn-outline-primary header-white active">White</a> <a
						href="javascript:void(0);"
						class="btn btn-outline-primary header-dark">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Sidebar Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);"
						class="btn btn-outline-primary sidebar-light">White</a> <a
						href="javascript:void(0);"
						class="btn btn-outline-primary sidebar-dark active">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Menu Dropdown Icon</h4>
				<div class="sidebar-radio-group pb-10 mb-10">
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-1" name="menu-dropdown-icon"
							class="custom-control-input" value="icon-style-1" checked="" />
						<label class="custom-control-label" for="sidebaricon-1"><i
							class="fa fa-angle-down"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-2" name="menu-dropdown-icon"
							class="custom-control-input" value="icon-style-2" /> <label
							class="custom-control-label" for="sidebaricon-2"><i
							class="ion-plus-round"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-3" name="menu-dropdown-icon"
							class="custom-control-input" value="icon-style-3" /> <label
							class="custom-control-label" for="sidebaricon-3"><i
							class="fa fa-angle-double-right"></i></label>
					</div>
				</div>

				<h4 class="weight-600 font-18 pb-10">Menu List Icon</h4>
				<div class="sidebar-radio-group pb-30 mb-10">
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-1" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-1" checked="" />
						<label class="custom-control-label" for="sidebariconlist-1"><i
							class="ion-minus-round"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-2" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-2" /> <label
							class="custom-control-label" for="sidebariconlist-2"><i
							class="fa fa-circle-o" aria-hidden="true"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-3" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-3" /> <label
							class="custom-control-label" for="sidebariconlist-3"><i
							class="dw dw-check"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-4" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-4" checked="" />
						<label class="custom-control-label" for="sidebariconlist-4"><i
							class="icon-copy dw dw-next-2"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-5" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-5" /> <label
							class="custom-control-label" for="sidebariconlist-5"><i
							class="dw dw-fast-forward-1"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-6" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-6" /> <label
							class="custom-control-label" for="sidebariconlist-6"><i
							class="dw dw-next"></i></label>
					</div>
				</div>

				<div class="reset-options pt-30 text-center">
					<button class="btn btn-danger" id="reset-settings">Reset
						Settings</button>
				</div>
			</div>
		</div>
	</div>

	<div class="left-side-bar">
		<div class="brand-logo">
			<a href="index.html"> <img
				src="https://cdn.myscheme.in/images/myscheme-logo.svg" alt=""
				class="dark-logo" /> <img
				src="https://cdn.myscheme.in/images/myscheme-logo.svg" alt=""
				class="light-logo" />
			</a> <a href="index.html"> <img src="https://www.myscheme.gov.in/"
				alt="" class="dark-logo" /> <img src="https://www.myscheme.gov.in/"
				alt="" class="light-logo" />
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li><a href="schooldashboard.jsp"
						class="dropdown-toggle no-arrow"> <span class="micon"><i
								class="icon-copy bi bi-people"></i></span><span class="mtext">Manage
								Students</span>
					</a></li>
					<li><a href="schoolattendance.jsp"
						class="dropdown-toggle no-arrow"> <span class="micon"><i
								class="icon-copy bi bi-card-checklist"></i></span><span class="mtext">Manage
								Attendance</span>
					</a></li>
					<li><a href="schoolpreviousrequest.jsp"
						class="dropdown-toggle no-arrow"> <span class="micon"><i
								class="icon-copy bi bi-shop-window"></i></span> <span class="mtext">Meal
								Status</span>
					</a></li>
					<li><a href="schoolmealrequest.jsp"
						class="dropdown-toggle no-arrow"> <span class="micon"><i
								class="icon-copy bi bi-shop"></i></span><span class="mtext">Request
								Meals</span>
					</a></li>
					<li><a href="schoolcomplaint.jsp"
						class="dropdown-toggle no-arrow"> <span class="micon"><i
								class="icon-copy bi bi-chat-right"></i></span><span class="mtext">Add
								Complaints</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="xs-pd-20-10 pd-ltr-20">
			<div class="title pb-20">
				<h2 class="h3 mb-0">Send Request to Government</h2>
			</div>

<%
		//Get the current date
		LocalDate currentDate = LocalDate.now();
		int currentYear = currentDate.getYear();
		Month currentMonth = currentDate.getMonth();
		Month previousMonth = currentDate.minusMonths(1).getMonth();
		Month nextMonth = currentDate.plusMonths(1).getMonth();
		
%>

			<div class="card-box pb-10">
				<div class="h5 pd-20 mb-0 text-success text-center">
					Auto Calculated Meal -
					<%= nextMonth + " " + currentYear %>
				</div>
				<table class="data-table table nowrap text-center">
					<thead>
						<tr>
							<th>Item ID</th>
							<th>Name</th>
							<th>Remaining Meal</th>
							<th>New Required Meal</th>
							<th>Units</th>
						</tr>
					</thead>
					<tbody>
						
<%
            List<Map<String, Object>> mealList = MealData.getMealList();
			int i=1;
            for (Map<String, Object> item : mealList) {
                String itemName = (String) item.get("itemName");
                int remainingMeal = (Integer) item.get("remainingMeal");
                int newRequiredMeal = (Integer) item.get("requiredMeal");
                String units = itemName.equals("Rice") ? "gram" : itemName.equals("Banana") ? "dozen" : itemName.equals("Biscuit") ? "packet" : ""; 
                
%>
						<tr>
							<td><%= i++ %></td>
							<td><%= itemName %></td>
							<td><%= remainingMeal %></td>
							<td><%= newRequiredMeal %></td>
							<td><%= units %></td>
						</tr>
						<% } %>
					</tbody>
				</table>
			</div>


			<form action="RequestNewMeal" method="POST">
				<div class="form-group row">
					<div class="col-sm-12 mt-30">
						<button type="submit" class="btn btn-success float-right">
							Send Request <i class="icon-copy bi bi-send"></i>
						</button>
						<p class="text-danger mt-2">
							(*Note: Please update attendance of
							<%= currentMonth %>
							before requesting for
							<%= nextMonth %>)
						</p>
					</div>
				</div>
			</form>

			<div class="footer-wrap pd-20 mt-30 mb-30 card-box">
				PM POSHAN - Prime Minister's Overarching Scheme For Holistic
				Nourishment <a href="https://github.com/dropways"
					style="text-decoration: none" class="text-secondary"
					target="_blank">Read More...</a>
			</div>
		</div>
	</div>







	<!-- js -->
	<script src="vendors/scripts/core.js"></script>
	<script src="vendors/scripts/script.min.js"></script>
	<script src="vendors/scripts/process.js"></script>
	<script src="vendors/scripts/layout-settings.js"></script>
	<script src="src/plugins/apexcharts/apexcharts.min.js"></script>
	<script src="src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<script src="vendors/scripts/dashboard3.js"></script>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->
</body>

</html>