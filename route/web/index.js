'use strict';
const exp=require('express');
const mysql=require('mysql');
var db=mysql.createConnection({host:'localhost',port:'3308',user:'root',password:'123456',database:'myweb'});
module.exports=()=>{
    var router=exp.Router();
    router.get('/get_banners',(req,res)=>{
        db.query('SELECT * FROM banner_tab',(err,data)=>{
            if(err){
                console.error(err);
                res.status(500).send('数据库出错').end();
            }else{
                res.send(data).end();
            }
        });
    });
    router.get('/get_custom',(req,res)=>{
        db.query('SELECT * FROM custom_evalution_tab',(err,data)=>{
            if(err){
                console.log(err);
                res.status(500).send('数据库出错').end();
            }else{
                res.send(data).end();
            }
        });
    });
    router.get('/get_list',(req,res)=>{
       if(req.query.type){
        //    console.log(req.query.type);
        db.query(`SELECT ID,title,type,pubtime FROM banner_tab WHERE type='${req.query.type}'`,(err,data)=>{
            if(err){
                console.error(err);
                res.status(500).send('数据库出错').end();
            }else{
                res.send(data).end();
            }
        });
    }else{
        db.query('SELECT ID,title,type,pubtime FROM banner_tab',(err,data)=>{
            if(err){
                console.error(err);
                res.status(500).send('数据库出错').end();
            }else{
                res.send(data).end();
            }
        });
    }
      // next();
    });
    var nid=10;
    router.get(`/get_info`,(req,res)=>{
        if(req.query.id){
            db.query(`SELECT * FROM banner_tab  WHERE ID='${req.query.id}'`,(err,data)=>{
                if(err){
                    console.error(err);
                    res.status(404).send('数据库出错').end();               
                }else{
                    if(data.length==0){
                        res.status(404).send('请求的文章找不到').end(); 
                    }
                    res.send(data).end();
                }
            });
        }else{
            res.status(404).send('请求的文章找不到').end();
        }
        
    });
    return router;
}