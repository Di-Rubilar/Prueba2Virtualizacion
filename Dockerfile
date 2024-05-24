FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y nodejs npm && \
    npm install -g npm@latest && \
    ln -s /usr/bin/nodejs /usr/bin/node
WORKDIR /usr/src/app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node", "server.js"]
