//vue_server_000/app.js
//功能：服务器端程序
//1:下载四个模块
//  express			web服务器
//  mysql				mysql驱动
//  cors				处理跨域
//  express-session	会话session对象
//2:vue_server_000/进入命令行
//  npm i mysql express express-session cors
//3:加载四个第三方模块
// const fs =require('fs')
const express = require("express");
// const multer= require('multer')
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
const bodyParser = require("body-parser");
//4:配置数据库连接池:基本效率高保证
var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   database:"ey",
   port:3306,
   connectionLimit:20
})
//5:创建web服务器
var server = express();
//6:配置跨域  允许程序列表
//  http://127.0.0.1:8080
//  http://localhost:8080
server.use(cors({
   origin:["http://127.0.0.1:8080","http://localhost:8080"],
   credentials:true  //每次请求验证
}))
//7:配置session环境
server.use(session({
   secret:"128位安全字符串",
   resave:true,         //请求更新数据 
   saveUninitialized:true//保存初始数据
}));
//8:配置静态目录 pubic
//8.1:创建public
server.use(express.static("public"))
//9:启动监听端口  3000
server.listen(3000);
// 
server.use(bodyParser.urlencoded({extended:true}));
server.use(bodyParser.json())


//功能：用户注册接口
//1.注册路由
server.post('/reg',function(req,res){
	//1.1获取数据
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    var phone=req.body.phone;
    var email=req.body.email;
	  // console.log(obj);
	 //1.3要执行sql语句
	 pool.query('select * from ey_user where uname= ?',[uname],(err,result)=>{
	   if(err) throw err;
	  //查询用户名是否被注册过
	   if(result.length==0){
     var sql = `insert into ey_user values(null,?,?,?,?)`;
     pool.query(sql,[uname,upwd,email,phone],(err,result)=>{
      if(err) throw err;
      res.send({code:1,msg:"注册成功"})
       })
	   }else {
       res.send({code:-1,msg:"用户名已注册"})
     }
   
	 });
});
// 根据用户名称查询是否可以注册get
// server.get("/checkuname/:uname",(req,res)=>{
//   var $uname = req.params.uname;
//   var sql = "select * from ey_user where uname=? ";
//   pool.query(sql,[$uname],(err,result)=>{
//     if(err) throw err;
//     if(result.length>0){
//       res.send("1")
//     }else{
//       res.send("0")
//     }
//   })
// })



//功能一:用户登录
server.get("/login",(req,res)=>{
 //1:获取参数uname/upwd
 //脚手架传数 
 // http://127.0.0.1:3000?uname=tom&upwd=123 
 var uname = req.query.uname;
 var upwd =  req.query.upwd;
//  console.log(1+":"+uname+":"+upwd);
 //2:创建sql语句
 var sql = "SELECT id FROM ey_user WHERE uname = ? AND upwd = ?";
 //3:执行sql语句
 pool.query(sql,[uname,upwd],(err,result)=>{
   //err 严重错误，程序停止
   if(err)throw err;
  //4:判断执行是否成功
   if(result.length==0){
     res.send({code:-1,msg:"aa用户名或密码有误"});
   }else{
     //4.1:登录成功后将
     //    登录凭证id保存session对象
     //4.2:获取当前登录用户id
     //result[{id:3}]
     var uid = result[0].id;
     //4.3:将用户id保存session对象
     //!!!!!!!!!!!!!!!!!!!
     req.session.uid = uid;
     console.log(req.session);
     res.send({code:1,msg:"登录成功"});
   }
  //5:将结果发送脚手架  
 })
})

server.get("/product",(req,res)=>{
  //2:获取(脚手架发来)数据 pno pageSize
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  //3:设置数据默认值
  if(!pno){pno=1}
  if(!ps){ps=150}
  //4:创建变量offset计算数据库第一参数
  var offset = (pno-1)*ps;
  //5:给pageSize造型整型
  ps = parseInt(ps);
  //6:创建sql1 查询当前页内容
  var sql1 = "SELECT ppublic,title,ftitle FROM ey_index_hotel LIMIT ?,?";
  //7:发送sql1语句
  pool.query(sql1,[offset,ps],
   (err,result)=>{
      //查询成功回调函数 sql1
      if(err)throw err;
      //查询结果
      var data = result;
      //console.log(result);
     //8:在执行成功回调函数中创建第二条 
     var sql2 = "SELECT count(pid) as c FROM ey_index_hotel";
     //9:查询记录总数
     pool.query(sql2,(err,result)=>{
       if(err)throw err;
       var pageCount = Math.ceil(result[0].c/ps);
       res.send(
         {code:1,   //查询编码
           msg:"查询成功",//原因
           rows:data, //当前页内容
           pageCount:pageCount//总页
         })
     })
     //10:将所有查询结果封装成
  })
 })


 // 商品详情接口
server.get("/productt",(req,res)=>{
  var pid=req.query.pid;
  // var pro={};
  if(pid!==undefined){
    var sql1=`select * from ey_product where pid=?`;
    pool.query(sql1,[pid],(err,result)=>{
      if(err)throw err;
      res.send(result[0]);
    })
  }else{
    res.send("错误");
  }
 })

//  商品显详情页 猜你喜欢接口
 server.get("/productd",(req,res)=>{
  
  // var pro={};
    var sql1=`select * from ey_product`;
    pool.query(sql1,(err,result)=>{
      if(err)throw err;
      res.send(result);
    })
 })



//  判断是否登录
// 1.get  /checkLogin
server.get("/checkLogin",(req,res)=>{
  // 获取当前登录用户uid
  var uid = req.session.uid;
  if(!uid){
    res.send({code:-1,msg:"请登录"});
    return;
  }
})





