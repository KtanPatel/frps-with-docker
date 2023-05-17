#!/bin/sh


# Dynamic set frps.ini based on PORT
cd /frps
cat <<-EOF > /frps/frps.ini
[common]
bind_port = $PORT
vhost_http_port = 80
vhost_https_port = 443
EOF

echo "Running FRP Server :D"
echo "Binding on the port $PORT"
/frps/frps -c /frps/frps.ini