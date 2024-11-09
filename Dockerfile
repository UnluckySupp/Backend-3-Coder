#Definimos una imagen base de node y su versión para nuestro contenedor
FROM node:16

#Definimos el directorio de trabajo dentro del contenedor
WORKDIR /app

#Copiamos el archivo package.json a la carpeta de trabajo
COPY package.json .

#Instalamos las dependencias del proyecto
RUN npm install

#Copiamos el resto de los archivos a la carpeta de trabajo
COPY . .

#Exponemos el puerto de trabajo, en este caso el 8080
EXPOSE 8080

#Definimos el comando para correr nuestra aplicación
CMD ["npm", "run", "dev"]

#Luego de crear el Dockerfile, debemos construir la imagen de nuestro contenedor
#Para esto, debemos ejecutar el siguiente comando en la terminal:
    # docker build -t nombre-de-la-imagen . (Reemplazar nombre-de-la-imagen por el nombre que quieras darle a tu imagen)