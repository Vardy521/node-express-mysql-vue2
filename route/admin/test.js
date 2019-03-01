const exp=require('express');
const ueditorBackend=require('ueditor-backend');
const server=exp();
ueditorBackend(server);
server.use(exp.static('utf8-jsp'));