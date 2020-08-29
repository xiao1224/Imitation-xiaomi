var imgs = document.getElementById("imglist").getElementsByTagName("li");

			var next = document.getElementById("iconlist").getElementsByTagName("li")[0];
			var pre = document.getElementById("iconlist").getElementsByTagName("li")[1];
			//console.log(left);
			//console.log(right)
			//图片初始化位置为0
			var left = 0;
			run();

			function run() {
				if (left <= -3968) {
					imglist.style.marginLeft = "0px";
					left = 0;
				}
				//如果位置为整张图片，暂停两秒
				var n = (left % 992 == 0) ? 2000 : 1;
				changeimg();
				left -= 8;
				timer = setTimeout(run, n);
			}
			// setInterval(run,10);
			function changeimg() {
				imglist.style.marginLeft = left + "px";
			}
			var lbPre1 = function() {
				if (left >= 0) {
					imglist.style.marginLeft = "0px";
					left = -3968;
				}
				left = (Math.floor(left / 1000)) * 992 + 992;
			}
			var lbNext1 = function() {
				if (left <= -3968) {
					imglist.style.marginLeft = "0px";
					left = 0;
				}
				left = (Math.floor(left / 1000)) * 992 - 992;
			}
			next.addEventListener('click', function() {
				lbNext1();
				changeimg();
				//run();
				timer = 0;
			})
			pre.addEventListener('click', function() {
				lbPre1();
				changeimg();
				//run();
				timer = 0;
			})