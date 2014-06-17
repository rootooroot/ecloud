function globalMenu(){
	$('.menu a').click(function(e){
		e.preventDefault();
		window.setTimeout("window.location.href='"+$(this).attr('href')+"'",600);});
	$('#menu-wrap div.menuoption').hover(function(){
		$(document).click(function(e){
			var target=$(e.target);
			if(target.parents('#navigation-wrap').length==0){
				clearMenu();
			}});
		function showMenu(menuoption){
			var menu=$(menuoption).attr("id").replace(/menuoption/g,"menu");
			var menupos=$(menuoption).find('a.menuoption').position();
			var leftpos=checkBoundaries(menu,menupos);
			$(menuoption).find('a.menuoption').addClass('menuoption-on').removeClass('menuoption-off');
			if(leftpos){
				/*$('#'+menu).show();*/
				/*$('#'+menu).css('left',0).show();*/
				$('#'+menu).css('left',leftpos).show();
			}else{
				/*$('#'+menu).show();*/
				$('#'+menu).css('left',menupos.left).show();
				/*$('#'+menu).css('left',0).show();*/
			}
		}
	function checkBoundaries(menu,menupos){
		var maxright=761;
		if(menu == "menu-solutions"){
			if((menupos.left+$('#'+menu).width())>maxright)
				return maxright-$('#'+menu).width()+39;
			else
				return false;
		}
		if(menu == "menu-helps"){
//			alert(menupos.left + " "+ $('#'+menu).width() +" " + maxright)
			if((menupos.left+$('#'+menu).width())>maxright)
				return maxright-($('#'+menu).width()-129);
			else
				return false;
		}
	}
	function clearMenu(){
		$('a.menuoption').addClass('menuoption-off').removeClass('menuoption-on');
		$('.menu').hide();
	}
	function exitMenu(){
		var timer=setTimeout(function(){
			$('a.menuoption.menuoption-on').removeClass('menuoption-on').addClass('menuoption-off');
			$('.menu').hide();
			},1000);
			$('#menu-wrap').mouseenter(function(){
				clearTimeout(timer);});
	}
	$('#menu-wrap').mouseleave(function(){
		exitMenu();
	});
	clearMenu();
	showMenu($(this));});

	/*
//	$('#menu-wrap div.menuoption').click(function(){
//		alert($($(this)).find('a.menuoption').text());
//		$($(this)).find('a.menuoption').addClass("selected");
//		$($(this)).siblings("div.menuoption").find('a.menuoption').removeClass('selected');
//	});
	*/
	$('.menuoption').find('a.menuoption').each(function(i,menuoptions){
//		$(this).append('<div class="arrow"></div>');
	});
}


function globalNav() {
	$('#home_v3 #carousel-controls a').hover(function(e){
		e.preventDefault();
		if(!$(this).parent().hasClass('active')){
			var target=$(this).attr('href');
			switchCarouselTo(target);
			clearInterval(carouselSwitchIntervalID);}
		});
		function switchCarouselTo(target){
			$('#home_v3 #carousel-wrap .active').removeClass('active');
			$(target+'-carousel').addClass('active');
			$('#home_v3 #carousel-control-wrap a[href='+target+']').parent().addClass('active').siblings('.active').removeClass('active');
			$('#home_v3 #carousel-description-wrap .active').removeClass('active');$(target+'-description').addClass('active');
		}

		var carouselSwitchIntervalID=setInterval(function(){
			var target=$('#home_v3 #carousel-controls .active + li a');
			if(!$(target).length){
				switchCarouselTo('#banner-1');
				clearInterval(carouselSwitchIntervalID);
			}else{
				switchCarouselTo($(target).attr('href'));
			}
	},7000);
}