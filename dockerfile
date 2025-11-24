# Dockerfile
# 1. Imagine de baza
FROM node:18-alpine

# 2. Director de lucru in container
WORKDIR /usr/src/app

# 3. Copiem fisierul package*.json si instalam dependintele
COPY package*.json ./
RUN npm install --only=production

# 4. Copiem restul codului
COPY . .

# 5. Setam portul expus
EXPOSE 3000

# 6. Comanda de start
CMD ["npm", "start"]
