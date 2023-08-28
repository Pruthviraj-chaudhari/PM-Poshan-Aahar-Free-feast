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

			<div class="user-info-dropdown">
				<div class="">
					<a class=""> <span class="user-icon"> <img
							src="https://www.mygov.in/sites/all/themes/mygov/front_assets/images/logo.svg"
							alt="" width="100px" />
					</span>
					</a>
				</div>
			</div>
			<div class="github-link">
				<a href="" target="_blank"> <img
					src="https://www.myscheme.gov.in/_next/image?url=https%3A%2F%2Fcdn.myscheme.in%2Fimages%2Flogos%2Fg20.png&w=256&q=75"
					alt="" width="100px" style="margin: 5px;" />
				</a>
			</div>
			<div class="dashboard-setting user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="javascript:;"
						data-toggle="right-sidebar"> <i
						class="dw dw-settings2"></i>
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
					<li class="dropdown"><a href="javascript:;"
						class="dropdown-toggle"> <span class="micon"><i
								class="icon-copy bi bi-power"></i></span><span class="mtext">Login</span>
					</a>
						<ul class="submenu">
							<li><a href="adminlogin.jsp">Admin Login</a></li>
							<li><a href="schoollogin.jsp">School Login</a></li>
							<li><a href="supplierlogin.jsp">Supplier Login</a></li>
						</ul>
					<li><a href="calendar.html" class="dropdown-toggle no-arrow">
							<span class="micon"><i class="icon-copy bi bi-book"></i></i></span><span
							class="mtext">Details</span>
					</a></li>
					<li><a href="calendar.html" class="dropdown-toggle no-arrow">
							<span class="micon"><i
								class="icon-copy bi bi-balloon-heart"></i></span><span class="mtext">Benefits</span>
					</a></li>
					<li><a href="calendar.html" class="dropdown-toggle no-arrow">
							<span class="micon"><i class="icon-copy bi bi-people"></i></span><span
							class="mtext">Eligibility</span>
					</a></li>
					<li><a href="calendar.html" class="dropdown-toggle no-arrow">
							<span class="micon"><i class="icon-copy bi bi-cursor"></i></i></i></span><span
							class="mtext">Application Process</span>
					</a></li>

					</li>
					<li><a href="calendar.html" class="dropdown-toggle no-arrow">
							<span class="micon"><i class="icon-copy bi bi-info-circle"></i></span><span
							class="mtext">About</span>
					</a></li>
					<li><a href="chat.html" class="dropdown-toggle no-arrow">
							<span class="micon bi bi-chat-right-dots"></span><span
							class="mtext">Chat</span>
					</a></li>

				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="xs-pd-20-10 pd-ltr-20">
			<div class="title pb-20 mt-30">
				<h2 class="h3 mt-4 text-success">PM POSHAN - Prime Minister's Overarching
					Scheme For Holistic Nourishment</h2>
			</div>

			<div class="row pb-10">
				<div class="col-xl-3 col-lg-3 col-md-6 mb-20">
					<div class="card-box height-100-p widget-style3">
						<div class="d-flex flex-wrap">
							<div class="widget-data">
								<div class="weight-700 font-24 text-dark">75</div>
								<div class="font-14 text-secondary weight-500">Schools
									Participating</div>
							</div>
							<div class="widget-icon">
								<div class="icon" data-color="#00eccf">
									<i class="icon-copy dw dw-school"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 mb-20">
					<div class="card-box height-100-p widget-style3">
						<div class="d-flex flex-wrap">
							<div class="widget-data">
								<div class="weight-700 font-24 text-dark">4,520</div>
								<div class="font-14 text-secondary weight-500">Total
									Students Registered</div>
							</div>
							<div class="widget-icon">
								<div class="icon" data-color="#ff5b5b">
									<span class="icon-copy ti-user"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 mb-20">
					<div class="card-box height-100-p widget-style3">
						<div class="d-flex flex-wrap">
							<div class="widget-data">
								<div class="weight-700 font-24 text-dark">2,000+</div>
								<div class="font-14 text-secondary weight-500">Meals
									Served Daily</div>
							</div>
							<div class="widget-icon">
								<div class="icon">
									<i class="icon-copy fa fa-cutlery" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 mb-20">
					<div class="card-box height-100-p widget-style3">
						<div class="d-flex flex-wrap">
							<div class="widget-data">
								<div class="weight-700 font-24 text-dark">$100,000</div>
								<div class="font-14 text-secondary weight-500">Funds
									Utilized</div>
							</div>
							<div class="widget-icon">
								<div class="icon" data-color="#09cc06">
									<i class="icon-copy fa fa-money" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="row pb-10 pt-30">
				<div class="col-md-8 mb-20">
					<div class="card-box height-100-p pd-20">
						<img src="https://g20.mygov.in/images/banner-1.png" alt="Banner"
							class="img-fluid">
					</div>
				</div>

				<div class="col-md-4 d-flex flex-column">
					<!-- Use flex-column class to stack divs on top of each other -->
					<div class="card-box min-height-200px pd-20 mb-20"
						data-bgcolor="#455a64">
						<div class="d-flex justify-content-between pb-20 text-white">
							<div class="icon h1 text-white">
								<i class="fa fa-users" aria-hidden="true"></i>
							</div>
							<div class="font-14 text-right">
								<div>
									<i class="icon-copy ion-arrow-up-c"></i> 5.23%
								</div>
								<div class="font-12">Since last month</div>
							</div>
						</div>
						<div class="d-flex justify-content-between align-items-end">
							<div class="text-white">
								<div class="font-14">Participating Schools</div>
								<div class="font-24 weight-500">75</div>
							</div>
							<div class="max-width-150">
								<div id="schools-chart"></div>
							</div>
						</div>
					</div>

					<div class="card-box min-height-200px pd-20" data-bgcolor="#265ed7">
						<div class="d-flex justify-content-between pb-20 text-white">
							<div class="icon h1 text-white">
								<i class="fa fa-cutlery" aria-hidden="true"></i>
							</div>
							<div class="font-14 text-right">
								<div>
									<i class="icon-copy ion-arrow-up-c"></i> 8.12%
								</div>
								<div class="font-12">Since last month</div>
							</div>
						</div>
						<div class="d-flex justify-content-between align-items-end">
							<div class="text-white">
								<div class="font-14">Meals Served</div>
								<div class="font-24 weight-500">15,000+</div>
							</div>
							<div class="max-width-150">
								<div id="meals-chart"></div>
							</div>
						</div>
					</div>
				</div>

			</div>


			<div class="container mt-4">
        <div class="jumbotron bg-white">
            <h1 class="display-4">PM POSHAN - Prime Minister's Overarching Scheme For Holistic Nourishment</h1>
            <p class="lead mt-4">PM POSHAN is a centrally sponsored scheme by the Department of School Education & Literacy, Ministry of Education. Under this scheme, one hot cooked meal will be provided to the children studying in Government and Government-aided schools.</p>
            <hr class="my-4">
            <p mt-3>The main objectives of the PM POSHAN Abhiyaan are to address two of the pressing problems for the majority of children in India, viz. hunger and education by improving the nutritional status of eligible children in Government and Government-aided schools as well as encouraging poor children, belonging to disadvantaged sections, to attend school more regularly and help them concentrate on classroom activities.</p>
            <p mb-3>POSHAN Abhiyaan is one of the many schemes under the umbrella scheme "Integrated Child Development Services Scheme (ICDS)". ICDS also includes Anganwadi Services Scheme, Pradhan Mantri Matru Vandana Yojana, and Scheme for Adolescent Girls.</p>
            <a class="btn btn-outline-secondary btn-lg mt-4" href="#details" role="button">Check Details</a>
            <img class="img-fluid p-5 rounded-lg" src="https://images.hindustantimes.com/img/2021/09/29/1600x900/cdf2e3e4-211c-11ec-aeba-4b5b44d8440e_1632917000281.jpg">
        </div>

        

       

        <!-- Quick Start Section -->
        <div class="row mt-4">
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Services</h5>
                        <p class="card-text">We provide superior health care in a compassionate manner</p>
                        <a href="#" class="btn btn-outline-secondary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Medications</h5>
                        <p class="card-text">Look for prescription and over-the-counter drug information.</p>
                        <a href="#" class="btn btn-outline-secondary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Locations</h5>
                        <p class="card-text">Convenient locations when and where you need them.</p>
                        <a href="#" class="btn btn-outline-secondary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>

			<div class="footer-wrap pd-20 mt-30 mb-30 card-box">
				PM POSHAN - Prime Minister's Overarching Scheme For Holistic
				Nourishment <a href="https://github.com/dropways"
					style="text-decoration: none;" class="text-secondary"
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
