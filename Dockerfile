From linuxserver/heimdall:latest

RUN ls /var/www/localhost &&\
echo -e "#!/usr/bin/with-contenv bash\nsed -e \"s/background-image:-webkit-gradient(linear,left top,right top,from(hsla(0,0%,100%,0)),to(hsla(0,0%,100%,.25)));background-image:linear-gradient(90deg,hsla(0,0%,100%,0),hsla(0,0%,100%,.25));border-radius:6px//g\" -i /var/www/localhost/heimdall/public/css/app.css\nphp /var/www/localhost/heimdall/artisan view:clear\n" > /etc/cont-init.d/99-patch && chmod 777 /etc/cont-init.d/99-patch && cat /etc/cont-init.d/99-patch

