
// 用户名验证

function check_uname() {
	var $uname = document.getElementById("uname").value;
	var unameReg = /^[a-zA-Z][a-zA-Z0-9]{3,15}$/;
	var uname_msg = document.getElementById("uname_msg");
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var r = xhr.responseText;
			var arr = JSON.parse(r);
			if (arr.uname == $uname) {
				uname_msg.innerHTML = "改用户名已存在"
			} else if (unameReg.test($uname)) {
				uname_msg.innerHTML = "输入正确!";
			} else {
				uname_msg.innerHTML = "输入不正确!";
			}
		}
	}
	xhr.open("get", "/pro/v1/check_uname/" + $uname, true);
	xhr.send();
	return true;
}

//密码验证
function check_upwd() {
	var upwd = document.getElementById("upwd").value;
	var upwdReg = /^[a-zA-Z0-9]{4,10}$/;
	//alert(pwdReg.test(pwd));
	var upwd_msg = document.getElementById("upwd_msg");
	if (upwdReg.test(upwd)) {
		upwd_msg.innerHTML = "输入正确!";
		var spwd = document.getElementById("spwd").value;
		var spwd_msg = document.getElementById("spwd_msg");
		if (upwd == spwd) {
			spwd_msg.innerHTML = "输入正确!";
			return true;
		} else {
			spwd_msg.innerHTML = "第二次输入的密码与第一次不相同";
		}
	} else {
		upwd_msg.innerHTML = "输入不正确!";
	}
	return false;
}
//console.log(check_upwd())
//邮箱验证
function check_email() {
	var email = document.getElementById("email").value;
	var emailReg = /^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
	var email_msg = document.getElementById("email_msg");
	if (emailReg.test(email)) {
		email_msg.innerHTML = "输入正确!";
		return true;
	} else {
		email_msg.innerHTML = "输入不正确!";
	}
	return false;
}

//电话验证
function check_phone() {
	var phone = document.getElementById("phone").value;
	var mobileReg = /^1[3-9]\d{9}$/;
	//alert(mobileReg.test(mobile));
	var phone_msg = document.getElementById("phone_msg");
	if (mobileReg.test(phone)) {
		phone_msg.innerHTML = "输入正确!";
		return true;
	} else {
		phone_msg.innerHTML = "输入不正确!";
	}
	return false;
}
// function reg1(){
// 		if(check_uname()&&check_upwd()&&check_email()&&check_email()){
// 			alert("提交成功!");
// 		}
// 	}
	
	
function reg() {
	console.log(check_uname());
	console.log(check_upwd());
	console.log(check_email());
	console.log(check_phone());
	if(check_uname()&&check_upwd()&&check_email()&&check_phone()){
		var $uname=uname.value;
		var $upwd=upwd.value;
		var $email=email.value;
		var $phone=phone.value;
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var r = xhr.responseText;
				if (r == 1) {
					alert("注册成功");
					//location.href = "index.html";
				} else {
					alert("注册失败");
				}
			}
		}
		xhr.open("post", "/pro/v1/reg", true);
		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		var formdata = `uname=${$uname}&upwd=${$upwd}&email=${$email}&phone=${$phone}`;
		//var formdata = `check_uname()&&check_upwd()&&check_email()&&check_email()`;
		xhr.send(formdata);
		console.log(check_upwd());
		//xhr.send();
		return true;
	}else{
		alert("输入的信息有误")
		return false;
	}
	
}