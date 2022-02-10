FROM node:17-alpine3.14

WORKDIR /app

# Copy package.json first so that doen't reinstall all dependencies every time
COPY package.json /app
COPY package-lock.json /app
RUN npm ci --only=production && npm cache clean --force

COPY . /app

# Add compilation 
# Add testing

CMD ["node", "server.js"]
EXPOSE 5001
