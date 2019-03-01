'use strict';
const exp=require('express');
const mysql=require('mysql');
const common=require('../../libs/common');
var db=mysql.createConnection({host:'localhost',port:'3308',user:'root',password:'123456',database:'myweb'});
module.exports=function(){
    var router=exp.Router();
    router.get('/',(req,res)=>{
        res.render('admin/login.ejs',{});
    });
    router.post('/',(req,res)=>{
       // res.send('我是后台').end();
        console.log(req.body);
        var uname=req.body.user;
        var pwd=common.md5(req.body.pwd+common.md5Suffix);
        db.query(`SELECT * FROM amin_tab WHERE username='${uname}';`,(err,data)=>{
            if(err){
                console.log('数据库异常:',err);
                res.status(500).send('database error').end();
            }else{
                if(data.length==0){
                    res.status(400).send('管理员账户不存在').end();
                }else{
                    if(data[0].password==pwd){
                        //成功
                        req.session['admin_id']=data[0].ID;
                        res.redirect('/admin/');
                    }else{
                        res.status(404).send('密码错误').end();
                    }
                }
            }
        });
    });
    return router;
}