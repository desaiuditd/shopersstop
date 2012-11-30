<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Shoppers Stop | Register</title>
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

        <script src="js/modernizr-2.6.1-respond-1.1.0.min.js"></script>
        <script type="text/javascript"> var RecaptchaOptions = { theme : 'clean' }; </script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

        <!-- This code is taken from http://twitter.github.com/bootstrap/examples/hero.html -->

		<jsp:include page="navbar.jsp"></jsp:include>

		<div class="contianer-fluid" style="margin-bottom: 5%">
			<div class="container-fluid row">
				<div class="container-fluid span9">
					<form id="frmRegister" class="form-horizontal offset1" method="post" action="RegisterUser">
						<fieldset>
							<legend>Registration Form</legend>
							<div class="control-group">
								<div class="controls">
									<div class="span">
										<input type="email" id="txtUsername" name="txtUsername" placeholder="E-mail" required>
									</div>
								</div>
							</div>

							<div class="control-group">
								<div class="controls row">
									<div class="span">
										<input type="password" id="txtPassword1" name="txtPassword1" placeholder="Password" required equalTo="#txtPassword2" minLength="6">
									</div>
									<div class="span">
										<input type="password" id="txtPassword2" name="txtPassword2" placeholder="Confirm Password" required equalTo="#txtPassword1" minLength="6">
									</div>
								</div>
							</div>
	
							<div class="control-group">
								<div class="controls row">
									<div class="span">
										<input type="text" id="txtFname" name="txtFName" placeholder="First Name">
									</div>
									<div class="span">
										<input type="text" id="txtLName" name="txtLName" placeholder="Last Name">
									</div>
								</div>
							</div>

							<fieldset>
								<legend>Billing Address</legend>
								<div class="control-group">
									<div class="controls row">
										<div class="span">
											<input type="text" id="txtBillAdd1" name="txtBillAdd1" placeholder="Address Line 1" required>
										</div>
										<div class="span">
											<input type="text" id="txtBillAdd2" name="txtBillAdd2" placeholder="Address Line 2">
										</div>
									</div>
								</div>

								<div class="control-group">
									<div class="controls row">
										<div class="span">
											<input type="text" id="txtBillCity" name="txtBillCity" placeholder="City" required>
										</div>
										<div class="span">
											<input type="text" id="txtBillState" name="txtBillState" placeholder="State" required>
										</div>
									</div>
								</div>

								<div class="control-group">
									<div class="controls row">
										<div class="span">
											<input type="text" id="txtBillCountry" name="txtBillCountry" placeholder="Country" required>
										</div>
										<div class="span">
											<input type="number" id="noBillPostalCode" name="noBillPostalCode" placeholder="Postal Code" required>
										</div>
									</div>
								</div>

								<div class="control-group">
									<div class="controls row">
										<div class="span">
											<input type="number" id="noBillContact" name="noBillContact" placeholder="Contact Number" required>
										</div>
										<div class="span">
											<label class="control-label">Check if Shipping Address Same as Billing Address</label>
											&nbsp;&nbsp;&nbsp;<input type="checkbox" id="cbBothAddEqual" name="cbBothAddEqual">
										</div>
									</div>
								</div>
							</fieldset>

							<fieldset>
								<legend>Shipping Address</legend>
								<div class="control-group">
									<div class="controls row">
										<div class="span">
											<input type="text" id="txtShipAdd1" name="txtShipAdd1" placeholder="Address Line 1" required>
										</div>
										<div class="span">
											<input type="text" id="txtShipAdd2" name="txtShipAdd2" placeholder="Address Line 2">
										</div>
									</div>
								</div>

								<div class="control-group">
									<div class="controls row">
										<div class="span">
											<input type="text" id="txtShipCity" name="txtShipCity" placeholder="City" required>
										</div>
										<div class="span">
											<input type="text" id="txtShipState" name="txtShipState" placeholder="State" required>
										</div>
									</div>
								</div>

								<div class="control-group">
									<div class="controls row">
										<div class="span">
											<input type="text" id="txtShipCountry" name="txtShipCountry" placeholder="Country" required>
										</div>
										<div class="span">
											<input type="number" id="noShipPostalCode" name="noShipPostalCode" placeholder="Postal Code" required>
										</div>
									</div>
								</div>

								<div class="control-group">
									<div class="controls">
										<div class="span">
											<input type="number" id="noShipContact" name="noShipContact" placeholder="Contact Number" required>
										</div>
									</div>
								</div>
							</fieldset>
							
							<div class="control-group" style="margin-top: 10%">
								<div class="controls span">
									<script type="text/javascript" src="http://www.google.com/recaptcha/api/challenge?k=6Ld1vtkSAAAAAGAsyypjHttRy3QibDc3C_5TP7P3"></script>
									<noscript>
										<iframe src="http://www.google.com/recaptcha/api/noscript?k=6Ld1vtkSAAAAAGAsyypjHttRy3QibDc3C_5TP7P3" height="300" width="500" frameborder="0"></iframe><br>
										<textarea name="recaptcha_challenge_field" rows="3" cols="40"></textarea>
										<input type="hidden" name="recaptcha_response_field" value="manual_challenge">
									</noscript>
								</div>
							</div>

							<div class="control-group">
								<div class="controls">
									<input class="btn btn-primary" type="submit" value="Register">
									<input class="btn" type="reset">
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
