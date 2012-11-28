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
});