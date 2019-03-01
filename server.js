'use strict';
const exp=require('express');
const expstatic=require('express-static');
const mysql=require('mysql');
const cookiesession=require('cookie-session');
const cookieparser=require('cookie-parser');
const bodyparder=require('body-parser');
const ejs=require('ejs');
const consolidate=require('consolidate');
const exproute=require('express-route');
const multer=require('multer');
var path=require('path');

//const multerObj=multer({dest:'./static/upload'});
const multerObj = multer({dest:path.join(__dirname,'./static/upload')});

var server=exp();
server.listen(8088);
//设置body-parser中间件
// server.use(bodyparder.urlencoded({extended:true}));
server.use(bodyparder());
 
//server.use(multerObj.any());

server.use(bodyparder());

//获取cookie、session
(function(){
    server.use(cookieparser({}));
    var keys=[];
    for(var i=0;i<100000;i++){
        keys[i]='key_'+Math.random();
    }
    server.use(cookiesession({
        name:'sess_id',
        keys:keys,
        maxAge:20*60*1000
    }));
})();
//渲染模板
server.engine('html',consolidate.ejs);
server.set('views','template/');
server.set('view engine','html');

//route
server.use('/',require('./route/web/index.js')());
server.use('/admin/',require('./route/admin/index.js')());


//default:static
// server.use(expstatic('./static/'));
// server.use(expstatic(path.join(__dirname,'./static/')));

server.use(exp.static(path.join(__dirname,'./static/')));


//富文本编辑器
/*针对ueditor的处理*/
//引入ueditor模块
var ueditor=require('ueditor');
//设置中间件处理ueditor的后台请求
server.use("/ueditor/getImg", ueditor(path.join(__dirname, './static'), function (req, res, next) {
    //客户端上传文件设置
    var imgDir = '/upload/'
    var ActionType = req.query.action;
    if (ActionType === 'uploadimage' || ActionType === 'uploadfile' || ActionType === 'uploadvideo') {
        var file_url = imgDir;//默认图片上传地址
        /*其他上传格式的地址*/
        if (ActionType === 'uploadfile') {
            file_url = '/file/ueditor/'; //附件
        }
        if (ActionType === 'uploadvideo') {
            file_url = '/video/ueditor/'; //视频
        }
        res.ue_up(file_url); //你只要输入要保存的地址 。保存操作交给ueditor来做
        res.setHeader('Content-Type', 'text/html');
    }
    //  客户端发起图片列表请求
    else if (req.query.action === 'listimage') {
        var dir_url = imgDir;
        res.ue_list(dir_url); // 客户端会列出 dir_url 目录下的所有图片
    }
    // 客户端发起其它请求
    else {
        // console.log('config.json')
        res.setHeader('Content-Type', 'application/json');
        res.redirect('/ueditor/nodejs/config.json');
    }
}));
//设置入口页面
// server.get('/',function (req,res) {
//     res.sendFile(path.join(__dirname,'../ueditor.html'));
// });
