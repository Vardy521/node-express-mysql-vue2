'use strict';
const exp=require('express');
module.exports=function(){
    var router=exp.Router();
    router.get('/',(req,res)=>{
        res.send('我是web').end();
    });
    return router;
}