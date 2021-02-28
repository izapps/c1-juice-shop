FROM bkimminich/juice-shop
USER root
RUN apk add python3 make gcc
USER juicer
COPY app.js /juice-shop
WORKDIR /juice-shop
RUN npm install --save trend_app_protect
EXPOSE 3000
