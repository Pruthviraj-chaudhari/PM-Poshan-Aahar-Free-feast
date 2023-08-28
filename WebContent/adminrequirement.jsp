<%@ page import="com.DB.DbConnection" %>
<%@ page import="java.sql.*" %>
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
						data-toggle="right-sidebar"> <i
						class="dw dw-settings2"></i>
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
				</div>
			</div>
			<div class="user-info-dropdown">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button"
						data-toggle="dropdown"> <span class="user-icon">
							<i class="icon-copy bi bi-person p-3"></i>
					</span> <span class="user-name">Admin</span>
					</a>
					<div
						class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
						<a class="dropdown-item" href="profile.html"><i
							class="dw dw-settings2"></i> Setting</a> <a class="dropdown-item"
							href="index.jsp"><i class="dw dw-logout"></i> Log
							Out</a>
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
						class="btn btn-outline-primary header-white active">White</a>
					<a href="javascript:void(0);"
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
							class="custom-control-input" value="icon-list-style-2" />
						<label class="custom-control-label" for="sidebariconlist-2"><i
							class="fa fa-circle-o" aria-hidden="true"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-3" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-3" />
						<label class="custom-control-label" for="sidebariconlist-3"><i
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
							class="custom-control-input" value="icon-list-style-5" />
						<label class="custom-control-label" for="sidebariconlist-5"><i
							class="dw dw-fast-forward-1"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-6" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-6" />
						<label class="custom-control-label" for="sidebariconlist-6"><i
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
					<li><a href="adminAddNewMealItem.jsp"
						class="dropdown-toggle no-arrow"> <span class="micon"><i
								class="icon-copy bi bi-plus-circle"></i></span><span class="mtext">Add
								New Meal Item</span>
					</a></li>
					<li><a href="admindashboard.jsp"
						class="dropdown-toggle no-arrow"> <span class="micon"><i
								class="icon-copy bi bi-building"></i></span><span class="mtext">Manage
								School</span>
					</a></li>
					<li><a href="adminsupplier.jsp"
						class="dropdown-toggle no-arrow"> <span class="micon"><i
								class="icon-copy bi bi-truck"></i></span><span class="mtext">Manage
								Suppliers</span>
					</a></li>
					<li><a href="adminrequirement.jsp"
						class="dropdown-toggle no-arrow"> <span class="micon"><i
								class="icon-copy bi bi-card-checklist"></i></span><span class="mtext">View
								Requirements</span>
					</a></li>
					<li><a href="admincomplaint.jsp"
						class="dropdown-toggle no-arrow"> <span class="micon"><i
								class="icon-copy bi bi-chat-right"></i></span><span class="mtext">View
								Complaints</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>


<%
String sql = "SELECT * FROM requirement WHERE status = 'Approved' OR status = 'Pending'";
Connection conn = DbConnection.connect();
PreparedStatement st1 = conn.prepareStatement(sql);
ResultSet rs1 = st1.executeQuery();

System.out.println("Requirements fetched.");
%>

<div class="main-container">
    <div class="card-box pb-10">
        <div class="h5 pd-20 mb-0">Requirements List</div>
        <table class="data-table table nowrap">
            <thead>
                <tr>
                    <th>Requirement ID</th>
                    <th>School ID</th>
                    <th>Item ID</th>
                    <th>Supplier ID</th>
                    <th>Quantity</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% while (rs1.next()) { %>
                <tr>
                    <td><%= rs1.getInt("req_id") %></td>
                    <td><%= rs1.getInt("school_id") %></td>
                    <td><%= rs1.getInt("item_id") %></td>
                    <td><%= rs1.getInt("sup_id") %></td>
                    <td><%= rs1.getInt("quantity") %></td>
                    <td><span class="badge badge-pill <%= rs1.getString("status").equals("Approved") ? "badge-warning" : "badge-danger" %>"><%= rs1.getString("status") %></span></td>
                    <td>
                        <form action="adminasignsupplier.jsp">
                        	<input type="hidden" name="req_id" value="<%= rs1.getInt("req_id") %>">
                            <button type="submit" class="btn btn-primary">Assign Supplier</button>
                        </form>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
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
