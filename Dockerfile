# Usa la imagen oficial de Node.js 18.18.0 como base
FROM node:18.18.0

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos del proyecto al contenedor
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto de los archivos del proyecto
COPY . .

# Expón el puerto que el servidor usará
EXPOSE 4000

# Define el comando que se ejecutará al iniciar el contenedor
CMD [ "npm", "run", "dev" ]