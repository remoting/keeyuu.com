---
layout: page
description:  
subtitle: 系统安装
comments: false
title: 系统安装
---

# 在操作系统上安装Docker
CentOS 服务器安装Docker 命令
```
yum install -y --nogpgcheck https://mirrors.aliyun.com/docker-ce/linux/centos/7/x86_64/stable/Packages/docker-ce-18.06.3.ce-3.el7.x86_64.rpm
```
# 使用 Docker 方式安装跳板机系统
```
docker run -d --privileged=true --net=host --name keeyuu \
  -v /opt/keeyuu/config.json:/opt/keeyuu/config.json \
  -v /opt/keeyuu/data:/opt/keeyuu/data \
  registry.cn-hangzhou.aliyuncs.com/remoting/keeyuu:0.9.1
```

# config.json 配置文件说明
```
{

}
```

# 原生安装
原生安装是不采用Docker方式安装，该方法需要配置的内容比较多，可邮件咨询我们
```
 
```