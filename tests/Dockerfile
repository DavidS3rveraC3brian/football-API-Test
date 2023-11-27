FROM postman/newman:5.3.1-alpine as base

# Establece el directorio de trabajo
WORKDIR /target

# Instala los reporteros de Newman
RUN npm install -g newman-reporter-html
RUN npm install -g newman-reporter-json-summary

# Copia los archivos de prueba al directorio de trabajo
COPY tests/football_8080.postman_collection.json /target/
COPY tests/Football-API-environment.postman_environment.json /target/

# Define el nuevo ENTRYPOINT
ENTRYPOINT ["newman", "run", "/target/football_8080.postman_collection.json", "--environment=/target/Football-API-environment.postman_environment.json", "--reporters", "cli,json", "--reporter-json-export", "/data/results/outputfile.json"]
