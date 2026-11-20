$(document).ready(function() {
	
	// Expand Panel
	$("#slideit").click(function(){
	    $("div#quickbox").fadeIn("slow");
	
	});	
	
	// Collapse Panel
	$("#closeit").click(function(){
	    $("div#quickbox").fadeOut("slow");	
	});		
	
	// Switch buttons from "Log In | Register" to "Close Panel" on click
	$("#toggle a").click(function () {
		$("#toggle a").toggle();
	});		
		
});