
// Keep all of our elements the same height, all the time.
jQuery(function($) {
        $('.sub').responsiveEqualHeightGrid();        
		$('.case-box').responsiveEqualHeightGrid();                
});

function showCustomersArea()
{
	$('#customers-area-div').slideDown();
}

$(document).ready(function() {

	$(".scrollto").click(function() {
        $("html, body").animate({ scrollTop: $($(this).attr("href")).offset().top }, 500);

        return false;
    });	

	// check if subnav exists and set the menu item that matches the current page title to active by adding the active class to the element
	if($('.subnav').length)
	{
		var t = $('title').text().toLowerCase().replace(/\ /g, '-');
		$("#subnav-" + t ).addClass("active");
		console.log(t);
	}

});

function siteSearch1()
{
	var url = 'https://www.google.se/search?q=site:www.nsc.liu.se ' + $('#see').val();
	window.location = url;	
	return false;
}

function siteSearch()
{
	var url = 'https://www.google.se/search?q=site:www.nsc.liu.se ' + $('#s').val();
	window.location = url;	
	return false;
}