function login() {
	var $uname = uname.value;
	var $upwd = upwd.value;
	if (!$uname) {
		d1.innerHTML="用户名不能为空";
		return
	}
	if (!$upwd) {
		d1.innerHTML="密码不能为空";
		return
	}
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var r = xhr.responseText;
			if (r == 1) {
				d1.innerHTML = "登录成功";
				location.href = "index.html";
			} else {
				d1.innerHTML = "用户名或密码错误";
			}
		}
	}
	xhr.open("get", "/pro/v1/login/" + $uname + "&" + $upwd, true);
	xhr.send();
}
