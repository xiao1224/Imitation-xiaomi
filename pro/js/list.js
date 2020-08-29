function list() {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var r = xhr.responseText;
			var arr = JSON.parse(r);
			console.log(arr);
			var strHTML=``;
			var strHTML1=``;
			var strHTML2=``;
			var strHTML3=``;
			strHTML +=`<ul>`
			strHTML1 +=`<ul>`
			strHTML2 +=`<ul>`
			strHTML3 +=`<ul>`
			for (var i = 0; i < arr.length; i++) {
				if(arr[i].leibie==1){
					strHTML +=`<li>`
					strHTML +=`<a href="javascript:;"><img src="${arr[i].mainimage}"><div>${arr[i].pname}</div></a>`;
					strHTML +=`</li>`
				}else if(arr[i].leibie==2){
					strHTML1 +=`<li>`
					strHTML1 +=`<a href="javascript:;"><img src="${arr[i].mainimage}"><div>${arr[i].pname}</div></a>`;
					strHTML1 +=`</li>`
				}else if(arr[i].leibie==3){
					strHTML2 +=`<li>`
					strHTML2 +=`<a href="javascript:;"><img src="${arr[i].mainimage}"><div>${arr[i].pname}</div></a>`;
					strHTML2 +=`</li>`
				}else if(arr[i].leibie==4){
					strHTML3 +=`<li>`
					strHTML3 +=`<a href="javascript:;"><img src="${arr[i].mainimage}"><div>${arr[i].pname}</div></a>`;
					strHTML3 +=`</li>`
				}
			}
			strHTML +=`</ul>`
			strHTML1 +=`</ul>`
			strHTML2 +=`</ul>`
			strHTML3 +=`</ul>`
			// strHTML += "</table>";
			sp_list.innerHTML = strHTML;
			sp_list2.innerHTML = strHTML1;
			sp_list3.innerHTML = strHTML2;
			sp_list4.innerHTML = strHTML3;
		}
	}
	xhr.open("get", "/pro/v1/list", true);
	xhr.send(null);
}
