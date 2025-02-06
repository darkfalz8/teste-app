# Use uma imagem oficial do Node.js
FROM node:18-alpine

# Define o diretório de trabalho
WORKDIR /app

# Copia os ficheiros necessários
COPY package.json package-lock.json ./
RUN npm install

# Copia o código fonte
COPY . .

# Expõe a porta da aplicação
EXPOSE 3000

# Comando para iniciar o servidor
CMD ["node", "server.js"]
