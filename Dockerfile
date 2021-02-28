FROM bkimminich/juice-shop
COPY app.js /juice-shop
WORKDIR /juice-shop
RUN npm install --save trend_app_protect
EXPOSE 3000
