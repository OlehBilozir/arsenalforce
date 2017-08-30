# should be alpine but https://github.com/webpack-contrib/css-loader/pull/597 requires us to have git
FROM node:8
WORKDIR /build
COPY package.json /build
RUN npm install --production 
COPY . /build

EXPOSE 3000
RUN npm run build
CMD npm start
