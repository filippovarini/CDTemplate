FROM node:17-alpine3.14

WORKDIR /app

# Copy package.json first so that doen't reinstall all dependencies every time
COPY package.json /app
RUN npm install
RUN npm ci --only=production && npm cache clean --force

COPY . /app

# Add compilation 
# Add testing

EXPOSE $port

CMD ["node", "server.js"]
