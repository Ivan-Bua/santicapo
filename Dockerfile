# Usa la imagen oficial de Node.js como base
# motor de la aplicación
FROM node:latest

# Crea un directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos necesarios al directorio de trabajo
# Agrega a imagen los archivos de la app
COPY package.json .
COPY app.js .

#Expone el puerto 3000 default de express
EXPOSE 3000

# Instala las dependencias desde el package.json
RUN npm install

# Comando para ejecutar la aplicación al iniciar el contenedor

CMD ["node", "./app.js"]
