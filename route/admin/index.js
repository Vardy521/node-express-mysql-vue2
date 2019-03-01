'use strict';
const exp=require('express');
const common=require('../../libs/common');
// const mysql=require('mysql');
// var db=mysql.createConnection({host:'localhost',port:'3308',user:'root',password:'123456',database:'myweb'});

module.exports=function(){
    var router=exp.Router();
    //检查登陆状态
    router.use((req,res,next)=>{
        if(!req.session['admin_id'] && req.url!='/login'){
            res.redirect('/admin/login');
        }else{
            next();
        }
    });
    router.use('/login',require('./login.js')());
    router.get('/',(req,res)=>{
       // res.send('恭喜您登录成功').end();
       res.render('admin/index.ejs',{});
    }); 
    //banner模块
    router.use('/news/',require('./news.js')());
    router.use('/slides/',require('./slides.js')());
    // router.use('/custom/',require('./custom.js')());
    // router.use('/test/',(req,res)=>{
    //  res.render('admin/test.ejs',{});
    // });
    return router;
}