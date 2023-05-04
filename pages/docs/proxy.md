---
layout: page
description:  
subtitle: 反向代理
comments: false
title: 反向代理
---

# 使用Nginx反向代理
推荐使用 nginx 等web服务器反向代理使用科语跳板机系统，强烈推荐开启 https ，各大云厂商都有免费的SSL证书申请。

```
location / {
    proxy_pass http://127.0.0.1:8086/;
    proxy_set_header Host      $host;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection $http_connection;
}
```