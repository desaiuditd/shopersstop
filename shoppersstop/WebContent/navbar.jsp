<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</a>
			<a class="brand" href="home">Shoppers Stop</a>
			<div class="nav-collapse collapse">
				<ul class="nav nav-pills pull-right">
					<li>
						<div id="divControlAccess" class="btn-group">
							<a class="btn btn-info dropdown-toggle" data-toggle="dropdown" href="#">
								<%
									String username = (String)session.getAttribute("username");
									if(username==null)
									    out.println("Guest");
									else out.println(username);
								%>
								<span class="caret"></span>
							</a>
							<%
								if(username!=null) {
							%>
 							<div class="dropdown-menu">
								<div>
									<a class="span" href="#account">Account</a>
								</div>
								<div class="span">
									<button id="btnLogout" class="btn btn-danger">Logout</button>
								</div>
							</div>
							<%	    
								}
							%>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!--/.container -->
	</div>
</div>
<!--/.navbar -->