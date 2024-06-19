# Use a imagem Node.js
FROM node:latest

# Crie e navegue para o diretório de trabalho do aplicativo
WORKDIR /app

# Copie os arquivos do projeto para o contêiner
COPY . .

# Instale as dependências do projeto
RUN npm install

# Expõe a porta do servidor web
EXPOSE 3000

# Comando para executar o servidor web quando o contêiner for iniciado
CMD ["npm", "run", "dev"]
