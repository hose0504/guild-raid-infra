#!/bin/bash
set -e

apt update -y
apt install -y nginx unzip

mkdir -p /var/www/guild-raid

# 임시 테스트 페이지
cat <<EOF > /var/www/guild-raid/index.html
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>Guild Raid</title>
</head>
<body>
  <h1>Guild Raid Server is Running</h1>
  <p>Deployed by Terraform user_data</p>
</body>
</html>
EOF

cat <<EOF > /etc/nginx/sites-available/guild-raid
server {
    listen 80;
    server_name _;

    root /var/www/guild-raid;
    index index.html;

    location / {
        try_files \$uri \$uri/ /index.html;
    }
}
EOF

rm -f /etc/nginx/sites-enabled/default
ln -sf /etc/nginx/sites-available/guild-raid /etc/nginx/sites-enabled/guild-raid

nginx -t
systemctl enable nginx
systemctl restart nginx