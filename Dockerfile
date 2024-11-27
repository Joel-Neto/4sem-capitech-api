# Usar uma imagem base do Node.js
FROM node:18.17.0-alpine

# Definir o diretório de trabalho
WORKDIR /app

# Copiar package.json e package-lock.json
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o restante do código da aplicação
COPY . .

# Expor a porta que a aplicação irá rodar
EXPOSE 4000

# Comando para iniciar a aplicação
CMD ["npm", "start"]