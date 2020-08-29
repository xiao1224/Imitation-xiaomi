var tabs = document.getElementById("tabs").getElementsByTagName("li");
var list = document.getElementById("list").getElementsByTagName("ul");
for (var i = 0; i < tabs.length; i++) {
	tabs[i].onclick = showlist;
}



function showlist() {
	for(i=0;i<tabs.length;i++){
		if(tabs[i]===this){
			tabs[i].className="active";
			list[i].className="clearfix active";
		}else{
			tabs[i].className="";
			list[i].className="clearfix";
		}
	}
}

var scrollNav = document.getElementById("scrollNav");
window.onscroll = function(){
	var scrollTop = document.documentElement.scrollTop;
	if( scrollTop>=260 ){
		scrollNav.className = "seckill-nav eckill-nav2";
	}else{
		scrollNav.className = "seckill-nav";
	}
}