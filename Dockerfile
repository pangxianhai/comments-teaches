FROM  nodejs:14.15.0

RUN mkdir -p /usr/local/comments-teaches-web/.nuxt
RUN mkdir -p /usr/local/comments-teaches-web/static
RUN mkdir -p /usr/local/comments-teaches-web/logs

COPY ./comments-web/.nuxt /usr/local/comments-teaches-web/.nuxt
COPY ./comments-web/static /usr/local/comments-teaches-web/static
COPY ./comments-web/package.json /usr/local/comments-teaches-web/package.json
COPY ./comments-web/package-lock.json /usr/local/comments-teaches-web/package-lock.json 
COPY ./comments-web/nuxt.config.js /usr/local/comments-teaches-web/nuxt.config.js

ENV HOST 0.0.0.0
WORKDIR /usr/local/comments-teaches-web/
EXPOSE 3000

RUN npm config set registry https://registry.npm.taobao.org
RUN npm install

CMD ["npm", "start"]
