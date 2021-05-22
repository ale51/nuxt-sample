FROM node:12

RUN apt-get update && apt-get install vim

WORKDIR /user/src/app

COPY package*.json ./

RUN npm install
# 本番用にコードを作成している場合
# RUN npm install --only=production

COPY . .

EXPOSE 8000

CMD bash -c "npm run dev"
