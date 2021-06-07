From linuxserver/heimdall:latest

RUN ls /var/www/localhost &&\
echo -e "#!/usr/bin/with-contenv bash\nsed -e \"s/background-image:-webkit-gradient(linear,left top,right top,from(hsla(0,0%,100%,0)),to(hsla(0,0%,100%,.25)));background-image:linear-gradient(90deg,hsla(0,0%,100%,0),hsla(0,0%,100%,.25));border-radius:6px//g\" -i /var/www/localhost/heimdall/public/css/app.css\nsed -e \"s/background:rgba(0,0,0,.2);border-radius:14px;-webkit-box-shadow:inset 0 1px 6px 0 rgba(0,0,0,.3);box-shadow:inset 0 1px 6px 0 rgba(0,0,0,.3);border-top:1px solid rgba(0,0,0,.5);border-bottom:1px solid hsla(0,0%,100%,.35)//g\" -i /var/www/localhost/heimdall/public/css/app.css\nphp /var/www/localhost/heimdall/artisan view:clear\n" > /etc/cont-init.d/99-patch && chmod 777 /etc/cont-init.d/99-patch && cat /etc/cont-init.d/99-patch

