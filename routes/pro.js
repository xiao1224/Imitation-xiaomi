const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建路由器对象
let router=express.Router();
//挂载路由
//登录
router.get("/v1/login/:uname&:upwd",(req,res)=>{
	var $uname=req.params.uname;
	var $upwd=req.params.upwd;
	var sql="select * from xm_user where uname=? and upwd=?";
	pool.query(sql,[$uname,$upwd],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});
});
router.get("/v1/check_uname/:uname",(req,res)=>{
	var $uname=req.params.uname;
	var sql="select * from xm_user where uname=?";
	pool.query(sql,[$uname],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result[0]);
		}else{
			res.send("0");
		}
	});
});
//注册
router.post("/v1/reg",(req,res)=>{
	let obj=req.body;
	var sql="INSERT INTO xm_user SET ?";
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
			res.send("1");
		}else{
			res.send("0")
		}
	});
});
//遍历

router.get("/v1/list",(req,res)=>{
	pool.query("select * from xm_product",(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});

router.get("/v1/search/:pname",(req,res)=>{
	var $pname=req.params.pname;
	console.log($pname);
	var sql="select * from xm_product where pname like '%"+$pname+"%'";
	pool.query(sql,[$pname],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result);
		}else{
			res.send("0");
		}
	});
});
// router.get("/v1/list",(req,res)=>{
// 	pool.query("select * from xm_product where leibie=2",(err,result)=>{
// 		if(err) throw err;
// 		res.send(result);
// 	});
// });
//导出路由器对象
module.exports=router;
