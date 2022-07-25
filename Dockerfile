# Build node image
FROM node:16

# Working dir
WORKDIR /usr/src/app

# Copy dependancies (package & package-lock) to root
COPY package*.json ./

# Install dependancies
RUN npm install

# Copy source code from root to root
COPY . .

# Open port 8080
EXPOSE 8080

# Run server
CMD ["node", "basic_server.js"]

# Commands
# Build image: docker build . -t <your username>/node-web-app
# Run image on port 49160: docker run -p 49160:8080 -d <your username>/node-web-app
# Check output curl -i localhost:49160