# Utilisez une image Node.js pour exécuter votre service
FROM node:16

# Créez un répertoire pour votre application
WORKDIR /app

# Copiez package.json et package-lock.json (si vous en avez un) dans le répertoire de l'application
COPY package*.json ./

# Installez toutes les dépendances de l'application
RUN npm install

# Copiez les autres fichiers de l'application dans le répertoire de l'application
COPY . .

# Exposez le port sur lequel votre service s'exécute (dans ce cas, 4001)
EXPOSE 4001

# Commande pour démarrer votre service
CMD ["npm", "start"]

