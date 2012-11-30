<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Shoppers Stop | Login</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <link rel="stylesheet" href="css/main.css">

        <script src="js/modernizr-2.6.1-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

        <!-- This code is taken from http://twitter.github.com/bootstrap/examples/hero.html -->

		<noscript>
			<style>
	            .navbar,.container-fluid,footer {
	                display: none;
	            }
	        </style>
	        <p align="center">Your browser does not support JavaScript!</p>
		</noscript>

		<jsp:include page="navbar.jsp"></jsp:include>

		<div class="contianer-fluid">

			<div class="container-fluid hero-unit offset1 span10">
				<h2 class="offset4">Welcome !!</h2>
			</div>
			<div class="container-fluid offset1 span row">
				<div class="offset1 span4">
					<div class="clearfix">&nbsp;</div>
					<div class="clearfix">&nbsp;</div>
					<div class="clearfix">&nbsp;</div>
					<div class="clearfix">&nbsp;</div>
					<div class="clearfix">&nbsp;</div>
					<button id="joinus" class="btn btn-primary btn-large">Join Us</button>
				</div>
				<div class="span" style="border-left: #c1c1c1 2px solid; padding-left: 70px;">
					<form id="frmLogin" action="LoginAuthorize" method="post" class="form-horizontal">
						<fieldset>
							<legend>Login</legend>
							<div class="control-group">
								<label class="control-label">Username : </label>
								<div class="controls">
									<input type="email" id="txtUsername" name="txtUsername" placeholder="E-mail" required>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Password : </label>
								<div class="controls">
									<input type="password" id="txtPassword" name="txtPassword" placeholder="Password" required minLength=6>
								</div>
							</div>

							<div class="control-group">
    							<div class="text-error" style="margin-left : 45%;">
    								<%
  										try{
  											if(!(Boolean)request.getAttribute("authCheck"))
												out.print("Wrong UserName or Password");
  										} catch(Exception e) { }
  									%>
  								</div>
  							</div>

							<div class="control-group">
								<div class="controls">
									<a id="aForgotPwd" href="#">Forgot Password ?</a>
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<input class="btn btn-primary" type="submit" value="Login">
									<input class="btn" type="reset" value="Reset">
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>

        <script src="js/jquery-1.8.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/sha512.js"></script>
        <script src="js/additional-methods.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>

		<script src="js/main.js"></script>
    </body>
</html>
