var items = document.getElementsByClassName('item');
var lbLeft = document.getElementById('lbLeft');
var lbRight = document.getElementById('lbRight');
var points = document.getElementsByClassName('point');
var index = 0;

var clearActive=function(){
	for(var i = 0;i<items.length;i++){
		items[i].className='item';
	}
	for(var i = 0;i<points.length;i++){
		points[i].className='point';
	}
}

var goIndex = function(){
	clearActive();
	points[index].className = 'point active'
	items[index].className = 'item active';
}

var lbNext=function(){
	if( index < 4 ){
		index++;
	}else{
		index=0;
	}
	goIndex();
}
var lbPre=function(){
	if( index == 0 ){
		index=4;
	}else{
		index--;
	}
	goIndex();
}
lbRight.addEventListener('click',function(){
	lbNext();
	time=0;
})
lbLeft.addEventListener('click',function(){
	lbPre();
	time=0;
})

for(var i=0;i<points.length;i++){
	points[i].addEventListener('click',function(){
		var pointIndex=this.getAttribute('data-index');
		index=pointIndex;
		goIndex();
		time=0;
	})
}



var time=setInterval(function(){
	time++;
	if(time==20){
		lbNext(); 
		time=0;
	}
},150)

