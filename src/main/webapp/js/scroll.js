//鍙栫獥鍙ｅ彲瑙嗚寖鍥寸殑楂樺害
	function getClientHeight(){ 
		var clientHeight=0; 
		if(document.body.clientHeight&&document.documentElement.clientHeight){
			var clientHeight=(document.body.clientHeight<document.documentElement.clientHeight)?document.body.clientHeight:document.documentElement.clientHeight; 
		}else{ 
			var clientHeight=(document.body.clientHeight>document.documentElement.clientHeight)?document.body.clientHeight:document.documentElement.clientHeight;
		} 
		return clientHeight; 
	} 
	//鍙栫獥鍙ｆ粴鍔ㄦ潯楂樺害 
	function getScrollTop(){ 
		var scrollTop=0; 
		if(document.documentElement&&document.documentElement.scrollTop){ 
			scrollTop=document.documentElement.scrollTop; 
		}else if(document.body){
			scrollTop=document.body.scrollTop; 
		} 
		return scrollTop; 
	} 
	//鍙栨枃妗ｅ唴瀹瑰疄闄呴珮搴�
	function getScrollHeight(){ 
		return Math.max(document.body.scrollHeight,document.documentElement.scrollHeight); 
	} 
	window.onscroll=function(){ 
		var height=getClientHeight(); 
		var theight=getScrollTop(); 
		var rheight=getScrollHeight(); 
		var bheight=rheight-theight-height; 
		//document.getElementById('show').innerHTML='姝ゆ椂娴忚鍣ㄥ彲瑙佸尯鍩熼珮搴︿负锛�+height+'<br />姝ゆ椂鏂囨。鍐呭瀹為檯楂樺害涓猴細'+rheight+'<br />姝ゆ椂婊氬姩鏉¤窛绂婚《閮ㄧ殑楂樺害涓猴細'+theight+'<br />姝ゆ椂婊氬姩鏉¤窛绂诲簳閮ㄧ殑楂樺害涓猴細'+bheight; 
	} 
	function fixDiv(show_id,offsetTop){ 
		var offsetTop=arguments[1]?arguments[1]:0; 
		var Obj=$('#'+show_id);
		var ObjTop=Obj.offset().top; 
		var isIE6=$.browser.msie && $.browser.version == '6.0'; 
		if(isIE6){
			$(window).scroll(function(){ 
				if($(window).scrollTop()<=ObjTop){ 
					Obj.css({ 'position':'relative', 'top':0 }); 
					$(".items div").removeAttr("style");
					flag = true;
					/*$("#show .group .item a[href='#cpms']").parent().addClass("selected");
					$("#show .group .item a[href='#cpms']").parent().attr("style","-moz-border-radius:10px 0px 0px 10px;-webkit-border-radius:10px 0px 0px 10px;border-radius:10px 0px 0px 10px;")
					$("#show .group .item a[href='#cpms']").parent().children("div").attr('style','visibility:;');
					$("#show .group .item a[href='#cpms']").parent().siblings().removeClass("selected");
					$("#show .group .item a[href='#cpms']").parent().siblings().children("div").attr('style','visibility:hidden;');
					$("#show .group .item a[href='#cpjg']").parent().attr('style','width:82px;');
					$("#show .group .item2 a[href='#cpms']").parent().addClass("selected");
					$("#show .group .item2 a[href='#cpms']").parent().attr("style","-moz-border-radius:10px 0px 0px 10px;-webkit-border-radius:10px 0px 0px 10px;border-radius:10px 0px 0px 10px;")
					$("#show .group .item2 a[href='#cpms']").parent().children("div").attr('style','visibility:;');
					$("#show .group .item2 a[href='#cpms']").parent().siblings().removeClass("selected");
					$("#show .group .item2 a[href='#cpms']").parent().siblings().children("div").attr('style','visibility:hidden;');
					$("#show .group .item2 a[href='#cpjg']").parent().attr('style','width:82px;');
					$("#show .group .item3 a[href='#cpms']").parent().addClass("selected");
					$("#show .group .item3 a[href='#cpms']").parent().attr("style","-moz-border-radius:10px 0px 0px 10px;-webkit-border-radius:10px 0px 0px 10px;border-radius:10px 0px 0px 10px;")
					$("#show .group .item3 a[href='#cpms']").parent().children("div").attr('style','visibility:;');
					$("#show .group .item3 a[href='#cpms']").parent().siblings().removeClass("selected");
					$("#show .group .item3 a[href='#cpms']").parent().siblings().children("div").attr('style','visibility:hidden;');
					$("#show .group .item3 a[href='#cpjg']").parent().attr('style','width:95px;');
					$("#cptd").hide();
					$("#cbjsq").hide();
					$("#cpdb").hide();
					$("#cpjg").hide();*/
				}else{ 
					Obj.css({ 'position':'absolute', 'top':$(window).scrollTop()+offsetTop+'px', 'z-index':3,'width':'700px' }); 
				} 
			}); 
		}else{ 
			$(window).scroll(function(){ 
				if($(window).scrollTop()<=ObjTop){ 
					Obj.css({ 'position':'relative', 'top':0 });
					$(".items div").removeAttr("style");
					flag = true;
					/*$("#show .group .item a[href='#cpms']").parent().addClass("selected");
					$("#show .group .item a[href='#cpms']").parent().attr("style","-moz-border-radius:10px 0px 0px 10px;-webkit-border-radius:10px 0px 0px 10px;border-radius:10px 0px 0px 10px;")
					$("#show .group .item a[href='#cpms']").parent().children("div").attr('style','visibility:;');
					$("#show .group .item a[href='#cpms']").parent().siblings().removeClass("selected");
					$("#show .group .item a[href='#cpms']").parent().siblings().children("div").attr('style','visibility:hidden;');
					$("#show .group .item a[href='#cpjg']").parent().attr('style','width:82px;');
					$("#show .group .item2 a[href='#cpms']").parent().addClass("selected");
					$("#show .group .item2 a[href='#cpms']").parent().attr("style","-moz-border-radius:10px 0px 0px 10px;-webkit-border-radius:10px 0px 0px 10px;border-radius:10px 0px 0px 10px;")
					$("#show .group .item2 a[href='#cpms']").parent().children("div").attr('style','visibility:;');
					$("#show .group .item2 a[href='#cpms']").parent().siblings().removeClass("selected");
					$("#show .group .item2 a[href='#cpms']").parent().siblings().children("div").attr('style','visibility:hidden;');
					$("#show .group .item2 a[href='#cpjg']").parent().attr('style','width:82px;');
					$("#show .group .item3 a[href='#cpms']").parent().addClass("selected");
					$("#show .group .item3 a[href='#cpms']").parent().attr("style","-moz-border-radius:10px 0px 0px 10px;-webkit-border-radius:10px 0px 0px 10px;border-radius:10px 0px 0px 10px;")
					$("#show .group .item3 a[href='#cpms']").parent().children("div").attr('style','visibility:;');
					$("#show .group .item3 a[href='#cpms']").parent().siblings().removeClass("selected");
					$("#show .group .item3 a[href='#cpms']").parent().siblings().children("div").attr('style','visibility:hidden;');
					$("#show .group .item3 a[href='#cpjg']").parent().attr('style','width:95px;');
					$("#cptd").hide();
					$("#cbjsq").hide();
					$("#cpdb").hide();
					$("#cpjg").hide();*/
				}else { 
					Obj.css({ 'position':'fixed', 'top':0+offsetTop+'px', 'z-index':3,'width':"700px" }); 
				} 
			}); 
		} 
	} 
	
	var flag = true;
	$(function(){
		fixDiv('show',0);
		
		var flag2 = false;
		$("#hover-menu li").click(function(){
			var node = this.parentNode.children;
			for(var i =0;i<node.length;i++) {
		        node[i].className = "";
		        $(".item-"+i).removeAttr("style");
		    }
			flag2 = true;
			this.className = 'selected';
			for(var i = 0; i < node.length; i++){
				if(this.className == 'selected' && node[i].className == 'selected'){
					topIndex = i;
				}
			}
			if(flag && flag2){
				flag = false;
				$(".item-"+topIndex).attr("style","padding-top:80px;");
			}else{
				$(".item-"+topIndex).attr("style","padding-top:40px;");
			}
		});
	});