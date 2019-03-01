'use strict';
const common=require('../../libs/common');
const mysql=require('mysql');
const exp=require('express');
const pathLib=require('path');
const fs=require('fs');
var db=mysql.createPool({host:'localhost',port:'3308',user:'root',password:'123456',database:'myweb'});
var server=exp();
module.exports=function(){
    var router=exp.Router();
    router.get('/',function(req,res){
       // res.send('dilililili').end;
          switch(req.query.act){
              case 'del':
                   //从文件夹中删除
                   db.query(`SELECT * FROM custom_evalution_tab WHERE ID=${req.query.id}`,(err,data)=>{
                       if(err){
                           console.log(err);
                           res.status(500).send('数据库出错').end();
                       }else{
                           if(data.length==0){
                               res.status(404).send('记录不存在').end();
                           }else{
                               fs.unlink('static/upload/'+data[0].src,(err)=>{//删除本地文件
                                   if(err){
                                       res.status(500).send('文件操作失败').end();
                                       console.error(err);
                                   }else{
                                        //从数据库中删除
                                        db.query(`DELETE FROM custom_evalution_tab WHERE ID=${req.query.id}`,(err,data)=>{
                                            if(err){
                                                console.log(err);
                                                res.status(500).send('数据库出错').end();
                                            }else{
                                                res.redirect('/admin/custom');
                                            }
                                        });
                                   }
                               });
                           }
                       }
                   });
                   break;
              case 'mod':
                    //res.send('改改改');
                    db.query(`SELECT * FROM custom_evalution_tab WHERE ID=${req.query.id}`,(err,data)=>{
                        if(err){
                            console.log(err);
                            res.status(500).send('修改操作出错').end();
                        }else{
                            if(data.length==0){
                                res.status(404).send('要修改的记录不存在');
                            }else{
                                db.query(`SELECT * FROM custom_evalution_tab`,(err,custom)=>{
                                    if(err){
                                        console.log(err);
                                        res.status(500).send('数据库出错').end();
                                    }else{
                                    // console.log(data);
                                    res.render('admin/custom.ejs',{custom,mod_data:data[0]});
                                    }
                                });
                            }
                        }
                    });
                    break;
              default:
                    db.query(`SELECT * FROM custom_evalution_tab`,(err,data)=>{
                        if(err){
                            console.log(err);
                            res.status(500).send('数据库出错').end();
                        }else{
                        // console.log(data);
                        res.render('admin/custom.ejs',{custom:data});
                        }
                    });
                    break;      
          }     
    });
    router.post('/',(req,res)=>{
        var title=req.body.title;
        var description=req.body.description;
       // var imgsrc=req.body.imgsrc;
       // console.log(req.files);
        // var oldpath=req.files[0].path;
        // var ext=pathLib.parse(req.files[0].originalname).ext;
        // var newpath=oldpath+ext;
        // var filename=req.files[0].filename+ext;
        // console.log(newpath);
        // fs.rename(oldpath,newpath,(err)=>{
        //     if(err){
        //         res.status(500).send('路径错误').end();
        //     }else{
        //         req.files[0].path=newpath;//重命名
        //     }      
        // });
        if(req.files[0]){
            var oldpath=req.files[0].path;
            var ext=pathLib.parse(req.files[0].originalname).ext;
            var newpath=oldpath+ext;
            var filename=req.files[0].filename+ext;
            console.log(newpath);
        }else{
            var filename=null;
        }
        if(filename){
        fs.rename(oldpath,newpath,(err)=>{
            if(err){
                res.status(500).send('路径错误').end();
            }else{
                if(req.body.mod_id){
                    if(!title || !description){
                        res.status(400).send('信息不全').end();
                    }else{
                  //修改
                  //换头像：先删除旧头像再添加   
                    db.query(`SELECT * FROM custom_evalution_tab WHERE ID=${req.body.mod_id}`,(err,data)=>{
                        if(err){
                            console.error(err);
                            res.status(500).send('删除出错').end();
                        }else if(data.length==0){
                            res.status(404).send('记录不不存在').end();
                        }else{
                            fs.unlink('static/upload/'+data[0].src,(err)=>{
                                if(err){
                                    console.error(err);
                                    res.status(500).send('删除文件操作出错').end();
                                }else{
                                    db.query(`UPDATE custom_evalution_tab SET\
                                    title='${title}',description='${description}', \
                                    src='${filename}' \
                                    WHERE ID=${req.body.mod_id}`,(err)=>{
                                        if(err){
                                            console.error(err);
                                            res.status(500).send('修改文字信息出错').end;
                                        }else{
                                            res.redirect('/admin/custom');
                                        }
                                    });
                                }
                            });

                        }                           
                    })
                }  
                }else{
                    //添加
                    if(!title || !description || !filename){
                        res.status(400).send('信息不全').end();
                    }else{
                    db.query(`INSERT INTO custom_evalution_tab \
                    (title,description,src) \
                    VALUES('${title}','${description}','${filename}')`,(err,data)=>{
                        if(err){
                            console.log(err);
                            res.status(500).send('插入数据失败');
                        }else{
                            res.redirect('/admin/custom');
                        }
                    });
                }
            }
               // req.files[0].path=newpath;//重命名
            }      
        });
    }else{
        // if(err){
        //     res.status(500).send('路径错误').end();
        // }else{
            if(req.body.mod_id){//修改
                //不换头像：只改文字信息，直接改
                if(!title || !description){
                    res.status(400).send('信息不全').end();
                }else{
                db.query(`UPDATE custom_evalution_tab SET\
                title='${title}',description='${description}' \
                WHERE ID='${req.body.mod_id}'`,(err)=>{
                    if(err){
                        console.log(err);
                        res.status(500).send('修改文字信息出错').end;
                    }else{
                        res.redirect('/admin/custom');
                    }
                });
            }
            }else{
                //添加
                if(!title || !description || !filename){
                    res.status(400).send('信息不全').end();
                }else{
                db.query(`INSERT INTO custom_evalution_tab \
                (title,description,src) \
                VALUES('${title}','${description}','${filename}')`,(err,data)=>{
                    if(err){
                        console.log(err);
                        res.status(500).send('插入数据失败');
                    }else{
                        res.redirect('/admin/custom');
                    }
                });
            }
        }      
    }
  });
    return router;    
}