FROM node:24

#Crear directorio de trabajo
WORKDIR /usr/src/app

#Copiar archivos
COPY package*.json ./

#Copiar archivos
COPY . .

#Instalar dependencias
RUN npm install

# Exponer el puerto
EXPOSE 3000

#Comandos a ejecutar
CMD [ "node", "app.js" ]