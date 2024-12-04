# Dockerfile
FROM node:current-alpine

# Define o diretório de trabalho
WORKDIR /usr/src/app

# Copia os arquivos do projeto
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do código
COPY . .

# Expor a porta que o servidor usa
EXPOSE 3000

# Comando para iniciar o servidor
CMD ["npm", "start"]
