'use strict';
const themd5=require('./libs/common');
var str='123';
var md5str=themd5.md5(str+themd5.md5Suffix);
console.log(md5str);

// const crypto=require('crypto');
// var obj=crypto.createHash('md5');
// obj.update('123456');//灌数据
// var str=obj.digest('hex');//以数字的形式获取结果，hex:以16进制方式返回结果
// console.log(str);
