# Utilisez une image Node.js pour exécuter votre service
FROM node:16

# Créez un répertoire pour votre application
WORKDIR /app

# Copiez package.json et package-lock.json (si vous en avez un) dans le répertoire de l'application
COPY package*.json ./

# Installez toutes les dépendances de l'application
RUN npm install

# Installez netcat pour la commande nc
RUN apt-get update && apt-get install -y netcat

# Copiez les autres fichiers de l'application dans le répertoire de l'application
COPY wait-for-it.sh ./wait-for-it.sh

# Rendez le script exécutable
RUN chmod +x ./wait-for-it.sh

# Exposez le port sur lequel votre service s'exécute (dans ce cas, 4000)
EXPOSE 4002

# Commande pour démarrer votre service
CMD ["npm", "start"]
