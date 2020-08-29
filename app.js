const express=require('express');
const bodyParser=require('body-parser');
//引入路由器
const pro=require('./routes/pro.js');
let app=express();
app.listen(8080);
//托管静态资源
app.use( express.static('pro') );
//使用body-parser中间件
app.use( bodyParser.urlencoded({
  extended:false
}) );
//把用户路由器挂载到服务器，给URL添加前缀/user  /user/reg
app.use('/pro',pro);
