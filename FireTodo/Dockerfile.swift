# Dockerfile
FROM swift:5.7 # ou outra versão do Swift que você deseja

WORKDIR /app

# Copie todos os arquivos do projeto para o contêiner
COPY . .

# Comando para buildar o projeto Swift
RUN swift build

# Porta a ser exposta (
EXPOSE 8080
