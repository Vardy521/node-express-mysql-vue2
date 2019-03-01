'use strict';
const mysql=require('mysql');
const exp=require('express');
module.exports=function(){
var router=exp.Router();
var db=mysql.createConnection({host:'localhost',port:'3308',user:'root',password:'123456',database:'myweb'});
router.get('/',(req,res)=>{
    switch(req.query.act){
        case 'mod':
             db.query(`SELECT * FROM banner_tab WHERE ID=${req.query.id};`,(err,data)=>{
                 if(err){
                     console.log(err);
                     res.status(500).send('数据库出错').end();
                 }else if(data.length==0){
                     res.status(404).send("修改的记录不存在").end();
                 }else{
                     //res.redirect('/admin/banners');
                     db.query('SELECT * FROM banner_tab',(err,banner)=>{
                        if(err){
                            console.log(err);
                            res.status(500).send('数据库出错').end();
                        }else{
                            //console.log(data[0]);
                            res.render('admin/banner.ejs',{banner:banner,mod_data:data[0]});
                        }
                    });
                     
                 }
             })
             break;
        case 'del':
             db.query(`DELETE FROM banner_tab WHERE ID=${req.query.id};`,(err,data)=>{
                  if(err){
                      console.log(err);
                      res.status(500).send('数据库出错').end();
                  }else{
                      res.redirect('/admin/news');
                  }
             });
             break;
        default:
        db.query('SELECT * FROM banner_tab',(err,data)=>{
            if(err){
                console.log(err);
                res.status(500).send('数据库出错').end();
            }else{
                res.render('admin/banner.ejs',{banner:data});
            }
        });
        break;
    }    
});
router.post('/',(req,res)=>{
    var title=req.body.title;
    var description=req.body.description;
    var pubtime=req.body.pubtime;
    var ntype=req.body.type;
    var ncontnet=req.body.newsinfo;
    if(req.body.mod_id){
        if(!title || !description || !pubtime || !ntype || !ncontnet){
        res.status(400).send('信息不全').end();
        }else{
      //修改
      db.query(`UPDATE banner_tab SET \
      title='${title}',\
      description='${description}',\
      type='${ntype}',\
      pubtime='${pubtime}',\
      contentHtml='${ncontnet}'\
      WHERE ID='${req.body.mod_id}'`,(err,data)=>{
          if(err){
              console.log(err);
              res.status(500).send('数据库出错').end();
          }else{
              res.redirect('/admin/news');
          }
      });
     }
    }else{
     //添加
     if(!title || !description || !pubtime || !ntype || !ncontnet){
        res.status(400).send('信息不全').end();
      }else{
        db.query(`INSERT INTO banner_tab (title,description,pubtime,type,contentHtml) VALUE('${title}','${description}','${pubtime}','${ntype}','${ncontnet}');`,(err,data)=>{
            if(err){
                console.log(err);
                res.status(500).send('数据库异常').end();
            }else{
                //alert('提交成功');
                res.redirect('/admin/news');
            }
        });
      }
    }    
});
return router;
}