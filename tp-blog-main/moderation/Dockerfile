FROM node:alpine

WORKDIR /app
COPY package.json ./
RUN npm install
COPY ./ ./

EXPOSE 4003

# Commande pour démarrer votre service
CMD ["npm", "start"]


