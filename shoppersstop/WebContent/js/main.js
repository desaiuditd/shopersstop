$(document).ready(function(e) {
	$("#frmLogin").validate({
		errorClass : "text-error",
		submitHandler : function(form) {

			try {
				$("#txtPassword").val(new jsSHA($("#txtPassword").val(),"ASCII").getHash("SHA-512","HEX"));
				form.submit();
			} catch (e) { alert(e.message); }
		}
	});

	$("#joinus").live("click",function(e) {
		window.location = "Register";
	});

	$("#frmRegister").validate({
		errorClass : "text-error",
		submitHandler : function(form) {

			try {
				$("#txtPassword1").val(new jsSHA($("#txtPassword1").val(),"ASCII").getHash("SHA-512","HEX"));
				$("#txtPassword2").val(new jsSHA($("#txtPassword2").val(),"ASCII").getHash("SHA-512","HEX"));
				form.submit();
			} catch (e) { alert(e.message); }
		}
	});

	$("#txtUsername").live("blur",function(e) {

		try {
			if($("#txtUsername").val()!="") {
				$.post("isUsernameAvailable",{
					username : $("#txtUsername").val()
				},function(data,textStatus,xhr) {
	
					if($.trim(data)==="success") {
						$("#txtUsername").parent().append("<label id=\"lblAvailability\" for=\"txtUsername\" class=\"text-success\">Username is available</label>");
					}
					else if($.trim(data)==="failure") {
						if($("#txtUsername").hasClass("valid")) $("#txtUsername").removeClass("valid");
						$("#txtUsername").parent().append("<label id=\"lblAvailability\" for=\"txtUsername\" class=\"text-error\">Username is NOT available</label>");
					}
					else if($.trim(data)==="DatabaseError") {
						window.location="DatabaseError.jsp";
					}
					setTimeout(function() {
						if(!$("#lblAvailability").hasClass("text-error"))
							$("#lblAvailability").remove();
					},3000);
				});
			}
		} catch(e) { alert(e.message); }
	});

	if($('#cbBothAddEqual').is(':checked')) {
		$("#txtShipAdd1").attr("disabled",true);
		$("#txtShipAdd2").attr("disabled",true);
		$("#txtShipCity").attr("disabled",true);
		$("#txtShipState").attr("disabled",true);
		$("#txtShipCountry").attr("disabled",true);
		$("#noShipPostalCode").attr("disabled",true);
		$("#noShipContact").attr("disabled",true);

		$("#txtShipAdd1").val($("#txtBillAdd1").val());
		$("#txtShipAdd2").val($("#txtBillAdd2").val());
		$("#txtShipCity").val($("#txtBillCity").val());
		$("#txtShipState").val($("#txtBillState").val());
		$("#txtShipCountry").val($("#txtBillCountry").val());
		$("#noShipPostalCode").val($("#noBillPostalCode").val());
		$("#noShipContact").val($("#noBillContact").val());
	}
	$("#cbBothAddEqual").live("click",function(e) {
		if($('#cbBothAddEqual').is(':checked')) {
			$("#txtShipAdd1").attr("disabled",true);
			$("#txtShipAdd2").attr("disabled",true);
			$("#txtShipCity").attr("disabled",true);
			$("#txtShipState").attr("disabled",true);
			$("#txtShipCountry").attr("disabled",true);
			$("#noShipPostalCode").attr("disabled",true);
			$("#noShipContact").attr("disabled",true);

			$("#txtShipAdd1").val($("#txtBillAdd1").val());
			$("#txtShipAdd2").val($("#txtBillAdd2").val());
			$("#txtShipCity").val($("#txtBillCity").val());
			$("#txtShipState").val($("#txtBillState").val());
			$("#txtShipCountry").val($("#txtBillCountry").val());
			$("#noShipPostalCode").val($("#noBillPostalCode").val());
			$("#noShipContact").val($("#noBillContact").val());
		}
		else {
			$("#txtShipAdd1").attr("disabled",false);
			$("#txtShipAdd2").attr("disabled",false);
			$("#txtShipCity").attr("disabled",false);
			$("#txtShipState").attr("disabled",false);
			$("#txtShipCountry").attr("disabled",false);
			$("#noShipPostalCode").attr("disabled",false);
			$("#noShipContact").attr("disabled",false);

			$("#txtShipAdd1").val("");
			$("#txtShipAdd2").val("");
			$("#txtShipCity").val("");
			$("#txtShipState").val("");
			$("#txtShipCountry").val("");
			$("#noShipPostalCode").val("");
			$("#noShipContact").val("");
		}
	});
});