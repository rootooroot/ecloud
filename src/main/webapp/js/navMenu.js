jQuery(document).ready(function() {
	globalMenu();
	globalNav();
	$("#navigation-wrap #menu-wrap ol.menuoption a").click(function(){
		$(this).parent().addClass("active");
	});
});

function toRedirect(obj){
//	alert(obj.className);
	if(obj.className == "gx-cypt"){
		window.location.href = contextPath +"/gxcypt.jsp";
	}
	if(obj.className == "gx-fwyzc"){
		window.location.href = contextPath +"/help/help.jsp";
	}
	if(obj.className == "gx-gywm"){
		window.location.href = contextPath +"/aboutus/abouts.jsp";
	}
}
