FROM node:alpine

WORKDIR /app
COPY package.json ./
RUN npm install
COPY ./ ./
# Exposez le port sur lequel votre service s'exécute (dans ce cas, 4000)
EXPOSE 4000

# Commande pour démarrer votre service
CMD ["npm", "start"]

