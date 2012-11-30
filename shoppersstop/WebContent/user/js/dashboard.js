$(document).ready(function(e) {

	$("#btnLogout").live("click",function(e) {
		$.post("../Logout",function(data,textStatus,xhr) {

			try {
				if(textStatus==="success")
					window.location = "Login";
			}
			catch (e) { alert(e.message); }
		});
	});
});