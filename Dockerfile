FROM node

RUN mkdir /skbox
WORKDIR /skbox
COPY package.json /skbox
RUN yarn install

COPY . /skbox
RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 3000
