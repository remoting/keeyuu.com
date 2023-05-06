---
layout: page
description:  
subtitle: 反向代理
comments: false
title: 反向代理
---

# 使用Nginx反向代理
推荐使用 nginx 等web服务器反向代理使用科语跳板机系统，强烈推荐开启 https ，腾讯云，阿里云厂商都有免费的SSL证书申请。

```
server {
    listen 80;
    server_name xxx.xxx.com;

    rewrite ^(.*)$ https://$host$1  permanent;
}

server {
    listen 443 ssl http2;
    ssl_certificate 	/etc/nginx/conf.d/ssl/xxx.xxx.com.crt;
    ssl_certificate_key /etc/nginx/conf.d/ssl/xxx.xxx.com.key;
    client_max_body_size 0;
    server_name xxx.xxx.com;

    location / {

        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";

        proxy_redirect http:// https://;
        proxy_set_header Host $host;
        proxy_set_header Accept-Encoding gzip;
        proxy_pass http://127.0.0.1:8086;

    }
}
```