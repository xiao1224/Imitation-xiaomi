function search() {
				//var urlParams = new URLSearchParams(location.search);
				//var $pname = urlParams.get("pname");
				var $pname=pname.value;
				//console.log($pname)
				
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4 && xhr.status == 200) {
						var r = xhr.responseText;
						console.log(r)
						if(r != 0){
							//location.href = "search.html";
							var arr = JSON.parse(r);
							console.log(arr);
							var str=``;
							str+=`<ul>`
							for(var i=0;i<arr.length;i++){
								str+=`<li><a href="javascript:;">`
								str+=`<img src="${arr[i].mainimage}">`
								str+=`<p class="pname">${arr[i].pname}</p>`
								str+=`<p class="desc">${arr[i].subtitle}</p>`
								str+=`<p class="price">${arr[i].price}元</p>`
								str+=`</a></li>`
							}
							str+=`</ul>`
							sea_list.innerHTML=str;
							
						}
						
						
						// if (r == 0) {
						// 	alert("查询失败");
						// } else {
							
						// 	console.log(arr);
						// }
					}
				}
				xhr.open("get", "/pro/v1/search/" + $pname, true);
				xhr.send();
			}