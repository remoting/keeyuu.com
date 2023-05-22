 
 apt install autoconf libtool pkg-config -y
 autoreconf -fi 
 apt install libcairo2-dev libjpeg62-turbo-dev libjpeg-dev libpng-dev libtool-bin uuid-dev libossp-uuid-dev libavcodec-dev libavformat-dev libavutil-dev libswscale-dev freerdp2-dev libpango1.0-dev libssh2-1-dev libtelnet-dev libvncserver-dev libwebsockets-dev libpulse-dev libssl-dev libvorbis-dev libwebp-dev -y
 ./configure --prefix=/opt/guacamole
 make 
 make install


 