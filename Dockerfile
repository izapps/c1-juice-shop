FROM node:12
ADD https://github.com/bkimminich/juice-shop/releases/download/v12.6.1/juice-shop-12.6.1_node12_linux_x64.tgz /juice-shop-12.6.1_node12_linux_x64.tgz
WORKDIR /
RUN tar -xf juice-shop-12.6.1_node12_linux_x64.tgz && mv juice-shop_12.6.1 juice-shop
COPY app.js /juice-shop
WORKDIR /juice-shop
RUN npm install --save trend_app_protect
EXPOSE 3000
