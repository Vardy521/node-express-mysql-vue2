'use strict';
//MD5加密
const crypto=require('crypto');
module.exports={
    md5Suffix:'sdalkfjakdha323099087908asmfaod908098admojf你说的法案的房间爱看了解放大道发生',//不能泄露
    md5:function(str){
        var obj=crypto.createHash('MD5');
        obj.update(str);
        return obj.digest('hex');
    }
};