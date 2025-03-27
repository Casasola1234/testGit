# Usamos una imagen base de Node.js
FROM node:16

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos del proyecto
COPY package*.json ./
RUN npm install

# Copiamos el código restante
COPY . .

# Exponemos el puerto 3000
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]

